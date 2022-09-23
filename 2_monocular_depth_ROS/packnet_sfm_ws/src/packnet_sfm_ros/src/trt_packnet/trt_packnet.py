#!/usr/bin/env python3
import time

import rospy
import rospkg
from sensor_msgs.msg import Image

import tensorrt as trt
import pycuda.driver as cuda
import pycuda.autoinit

import numpy as np
import torch

import cv2

from packnet_sfm.datasets.augmentations import to_tensor
from packnet_sfm.utils.image import interpolate_image
from packnet_sfm.utils.types import is_seq, is_tensor

class TrtPacknet(object):
    """TrtPacknet class encapsulates things needed to run TRT Packnet (depth inference)."""

    def _load_engine(self):
        TRTbin = self.trt_path
        with open(TRTbin, 'rb') as f, trt.Runtime(self.trt_logger) as runtime:
            return runtime.deserialize_cuda_engine(f.read())

    def _allocate_buffers(self):
        host_inputs, host_outputs, cuda_inputs, cuda_outputs, bindings = \
            [], [], [], [], []
        for binding in self.engine:
            size = trt.volume(self.engine.get_binding_shape(binding)) * \
                    self.engine.max_batch_size
            host_mem = cuda.pagelocked_empty(size, np.float32)
            cuda_mem = cuda.mem_alloc(host_mem.nbytes)
            bindings.append(int(cuda_mem))
            if self.engine.binding_is_input(binding):
                host_inputs.append(host_mem)
                cuda_inputs.append(cuda_mem)
            else:
                host_outputs.append(host_mem)
                cuda_outputs.append(cuda_mem)
        return host_inputs, host_outputs, cuda_inputs, cuda_outputs, bindings
    
    def __init__(self, trt_path, network_input_h_w, stereo_scale_factor=1,cuda_ctx=None):
        """Initialize TensorRT plugins, engine and conetxt."""
        self.trt_path = trt_path
        self.net_input_shape = network_input_h_w
        self.stereo_scale_factor = stereo_scale_factor
        self.cuda_ctx = cuda.Device(0).make_context()
        if self.cuda_ctx:
            self.cuda_ctx.push()

        self.trt_logger = trt.Logger(trt.Logger.INFO)
        self.engine = self._load_engine()

        try:
            self.context = self.engine.create_execution_context()
            self.stream = cuda.Stream()
            self.host_inputs, self.host_outputs, self.cuda_inputs, self.cuda_outputs, self.bindings = self._allocate_buffers()
        except Exception as e:
            raise RuntimeError('fail to allocate CUDA resources') from e
        finally:
            if self.cuda_ctx:
                self.cuda_ctx.pop()
    
    def __del__(self):
        """Free CUDA memories and context."""
        del self.cuda_outputs
        del self.cuda_inputs
        del self.stream

    def _preprocess(self, img):
        # shrink the image to fit NN input
        img = cv2.cvtColor(img, cv2.COLOR_BGR2RGB)
        img = cv2.resize(img, (self.net_input_shape[1], self.net_input_shape[0]), interpolation=cv2.INTER_LANCZOS4)
        
        # to switch the dimension from (H, W, 3) -> (1, 3, H, W) so that it's compatible with packnet 
        img = to_tensor(img).unsqueeze(0)
        img = img.numpy()
        # img = img.astype('float16')
        # print(img.dtype)
        return img
    
    def _postprocess(self, net_output, original_size, mode='bilinear', align_corners=False):
        pred_inv_depth_resized = interpolate_image(net_output, (original_size[0], original_size[1]), mode, align_corners)
        depth_img = self.write_depth(self.inv2depth(pred_inv_depth_resized))
        
        return depth_img

    def inv2depth(self, inv_depth):
        """
        Invert an inverse depth map to produce a depth map

        Parameters
        ----------
        inv_depth : torch.Tensor or list of torch.Tensor [B,1,H,W]
            Inverse depth map

        Returns
        -------
        depth : torch.Tensor or list of torch.Tensor [B,1,H,W]
            Depth map
        """
        if is_seq(inv_depth):
            return [self.inv2depth(item) for item in inv_depth]
        else:
            return 1. * self.stereo_scale_factor / inv_depth


    def write_depth(self, depth):
        """
        Write a depth map to file, and optionally its corresponding intrinsics.

        This code is modified to export compatible-format depth image to openVSLAM

        Parameters
        ----------
        depth : np.array [H,W]
            Depth map
        """
        # If depth is a tensor
        if is_tensor(depth):
            depth = depth.detach().squeeze().cpu()
            depth = np.clip(depth, 0, 100)

            # make depth image to 16 bit format following TUM RGBD dataset format
            # it is also ROS standard(?)
            depth = np.uint16(depth * 256)  

        return depth

    def infer_depth(self, img):
        
        _img_h, _img_w, _ = img.shape
        img_resized = self._preprocess(img)

        np.copyto(self.host_inputs[0], img_resized.ravel())

        if self.cuda_ctx:
            self.cuda_ctx.push()
        cuda.memcpy_htod_async(
            self.cuda_inputs[0], self.host_inputs[0], self.stream)

        self.context.execute_async(
            batch_size=1,
            bindings=self.bindings,
            stream_handle=self.stream.handle)
        cuda.memcpy_dtoh_async(
            self.host_outputs[0], self.cuda_outputs[0], self.stream)
        self.stream.synchronize()
        if self.cuda_ctx:
            self.cuda_ctx.pop()

        net_output = torch.Tensor(self.host_outputs[0]).reshape((1, 1, self.net_input_shape[0], self.net_input_shape[1]))

        return self._postprocess(net_output, original_size=(_img_h, _img_w))