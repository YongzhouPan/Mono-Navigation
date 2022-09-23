#! /usr/bin/env python3

import rospy
import rospkg
from sensor_msgs.msg import Image

import numpy as np
import torch
from argparse import Namespace

import cv2
from cv_bridge import CvBridge, CvBridgeError

from config_ros import get_opts
from SC_Depth import SC_Depth
from SC_DepthV2 import SC_DepthV2

from datasets import custom_transforms


class DepthInference:
    def __init__(self):
        self.bridge = CvBridge()
        self.model = None
        self.inference_transform = None
        self.InitializeNetwork()

        self.sub_color_img = rospy.get_param("~topic_color_img", "/tello/image_raw")
        self.pub_color_img = rospy.get_param("~topic_color_img", "/sc_depth_pl/color/image_raw")
        self.pub_depth_img = rospy.get_param("~topic_depth_img", "/sc_depth_pl/depth/image_raw")

        self.pub_rgb_image = rospy.Publisher(self.pub_color_img, Image, queue_size=1)
        self.pub_depth_image = rospy.Publisher(self.pub_depth_img, Image, queue_size=1)

        rospy.Subscriber(self.sub_color_img, Image, self.ProcessCallback, queue_size=1)

    def InitializeNetwork(self):
        rospack = rospkg.RosPack()
        package_path = rospack.get_path('sc_depth_pl_ros')
        models_path = '/src/ckpts/nyu_scv2/version_10/epoch=101-val_loss=0.1580.ckpt'
        
        # Initialize Network
        hparams = get_opts()
        
        if hparams.model_version == 'v1':
            system = SC_Depth(hparams)
        elif hparams.model_version == 'v2':
            system = SC_DepthV2(hparams)
        self.model = system.load_from_checkpoint(package_path + models_path)
        self.model.cuda()
        self.model.eval()

        # Dataset
        if hparams.dataset_name == 'nyu':
            training_size = [256, 320]
        elif hparams.dataset_name == 'kitti':
            training_size = [256, 832]
        elif hparams.dataset_name == 'ddad':
            training_size = [384, 640]

        # normaliazation
        # Consider our program requirements, Set training_size = [256, 320]
        training_size = [256, 320]
        self.inference_transform = custom_transforms.Compose([
            custom_transforms.RescaleTo(training_size),
            custom_transforms.ArrayToTensor(),
            custom_transforms.Normalize()]
        )

    
    def ProcessCallback(self, rgb_image_msg):

        image = self.bridge.imgmsg_to_cv2(rgb_image_msg, "bgr8")
        image = np.array(image)
        img = image.astype(np.float32)
        tensor_img = self.inference_transform([img])[0][0].unsqueeze(0).cuda()
        pred_depth = self.model.inference_depth(tensor_img)
        depth_img = pred_depth[0, 0].cpu().detach().numpy()
        depth_img = np.nan_to_num(depth_img)
        # print(np.max(depth_img))
        depth_msg = self.bridge.cv2_to_imgmsg(depth_img, "32FC1")


        depth_msg.header.stamp = rgb_image_msg.header.stamp
        depth_msg.header.frame_id = 'camera_link'
        rgb_image_msg.header.frame_id = 'camera_link'
        self.pub_depth_image.publish(depth_msg)
        self.pub_rgb_image.publish(rgb_image_msg)

        
if __name__ == "__main__":
    rospy.init_node('sc_depth', anonymous=False)
    rospy.loginfo('Running until shutdown (Ctrl-C).')
    depth_inference_node = DepthInference()
    try:
        rospy.spin()
    except KeyboardInterrupt:
        print("Node Shutdown")

