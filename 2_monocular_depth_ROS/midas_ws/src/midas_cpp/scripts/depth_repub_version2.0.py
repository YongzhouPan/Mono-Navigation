#!/usr/bin/env python
# -*-coding:utf-8-*-
# Copyright (c) 2021 Tao.

# ROS
import yaml
import rospy
from sensor_msgs.msg import Image, CameraInfo
import cv2
from cv_bridge import CvBridge
import numpy as np

def parse_yaml(file_name):
    with open(file_name, "r") as file_handle:
        calib_data = yaml.safe_load(file_handle)
    cam_info = CameraInfo()
    cam_info.width = calib_data['image_width']
    cam_info.height = calib_data['image_height']
    cam_info.K = calib_data['camera_matrix']['data']
    cam_info.D = calib_data['distortion_coefficients']['data']
    cam_info.R = calib_data['rectification_matrix']['data']
    cam_info.P = calib_data['projection_matrix']['data']
    cam_info.distortion_model = calib_data['distortion_model']
    return cam_info

def callback(msg):
    image = bridge.imgmsg_to_cv2(msg, "32FC1")
    idepth = np.array(image, dtype=np.float32)
    idepth = idepth - np.amin(idepth)
    idepth /= np.amax(idepth)
    idepth = 1.0 - idepth + 0.1
    # idepth = idepth * 100.0 * 1000.0
    # idepth = np.round(idepth).astype(np.uint16)
    # image_message = bridge.cv2_to_imgmsg(idepth, "16UC1")
    idepth = idepth * 100.0
    image_message = bridge.cv2_to_imgmsg(idepth, "32FC1")

    now = rospy.Time.now()
    image_message = msg
    image_message.header.stamp = now
    image_message.header.frame_id = 'camera_link'
    cam_info.header.stamp = now
    cam_info.header.frame_id = 'camera_link'
    depth_pub.publish(image_message)
    info_pub.publish(cam_info)

if __name__ == '__main__':
    # Initialize ROS
    rospy.init_node('depth_repub', anonymous=False)
    rospy.loginfo('Running until shutdown (Ctrl-C).')
    file_name = rospy.get_param('~camera_info_path')
    # file_name = '/home/peter/Desktop/MonocularROS/MiDaS/src/midas_cpp/config/camera.yaml'
    cam_info = parse_yaml(file_name)
    bridge = CvBridge()

    # ROS subscribers
    rospy.Subscriber('/midas_topic', Image, callback)
    # ROS publishers
    depth_pub = rospy.Publisher('/depth_syn', Image, queue_size=10)
    info_pub = rospy.Publisher('/info_syn', CameraInfo, queue_size=10)

    rospy.spin()

        
