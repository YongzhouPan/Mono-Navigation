import pycuda.driver as cuda
import pycuda.autoinit
import numpy as np
import tensorrt as trt
import torch
import time

from cv2 import imwrite

from packnet_sfm.utils.image import load_image
from packnet_sfm.datasets.augmentations import resize_image, to_tensor

# ONNX_FILE_PATH = '/home/nvadmin/jy_ws/packnet_ros_ws/src/packnet_tello_crop.onnx'
# MODEL_NAME = "packnet_tello_crop.trt"
# NET_INPUT_W = 384
# NET_INPUT_H = 288
# MAX_BATCH_SIZE = 1
# MAX_GPU_MEM = 4

ONNX_FILE_PATH = '/home/peter/Desktop/MonocularROS/packnet_ros_ws/src/packnet_sfm_ros/packnet_KITTI_FR.onnx'
MODEL_NAME = "packnet_KITTI_FR.trt"
NET_INPUT_W = 1280
NET_INPUT_H = 384
MAX_BATCH_SIZE = 1
MAX_GPU_MEM = 7

# logger to capture errors, warnings, and other information during the build and inference phases
TRT_LOGGER = trt.Logger()


def build_engine(onnx_file_path):
    # initialize TensorRT engine and parse ONNX model
    builder = trt.Builder(TRT_LOGGER)
    explicit_batch = 1 << (int)(trt.NetworkDefinitionCreationFlag.EXPLICIT_BATCH)
    network = builder.create_network(explicit_batch)
    parser = trt.OnnxParser(network, TRT_LOGGER)

    # parse ONNX
    with open(onnx_file_path, 'rb') as model:
        print('Beginning ONNX file parsing')
        parser.parse(model.read())
    print('Completed parsing of ONNX file')

    # allow TensorRT to use up to MAX_GPU_MEM GB of GPU memory for tactic selection
    builder.max_workspace_size = MAX_GPU_MEM << 30

    # we have only one image in batch
    builder.max_batch_size = MAX_BATCH_SIZE

    # use FP16 mode if possible
    if builder.platform_has_fast_fp16:
        builder.fp16_mode = True
    
        # generate TensorRT engine optimized for the target platform
    print('Building an engine, this will take a while ...')
    tic = time.time()
    engine = builder.build_cuda_engine(network)
    toc = time.time()
    if engine is not None:
        print('Completed creating engine in {} s.'.format(toc - tic))

    return engine
    
def main():
    # initialize TensorRT engine and parse ONNX model
    engine = build_engine(ONNX_FILE_PATH)
    if engine is None:
        raise SystemExit('ERROR: failed to build the TensorRT engine!')

    engine_path = MODEL_NAME
    with open(engine_path, 'wb') as f:
        f.write(engine.serialize())
    print('Serialized the TensorRT engine to file: %s' % engine_path)

if __name__ == '__main__':
    main()
