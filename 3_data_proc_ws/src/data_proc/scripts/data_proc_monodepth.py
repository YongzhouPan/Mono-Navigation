#!/usr/bin/env python
# -*-coding:utf-8-*-

# ROS
import yaml
import rospy
from sensor_msgs.msg import Image, CameraInfo
import cv2
from cv_bridge import CvBridge
import numpy as np
from geometry_msgs.msg import PoseStamped
from nav_msgs.msg import Odometry

global SCALE_FACTOR, w, h

SCALE_FACTOR = 5
# resize rgb images & depth images to w*h
w = 640
h = 480

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
    global SCALE_FACTOR, w, h
    global now
    image = bridge.imgmsg_to_cv2(msg, "32FC1")
    idepth = np.array(image, dtype=np.float32)
    idepth = idepth - np.amin(idepth)
    idepth /= np.amax(idepth)
    idepth = idepth + 0.1
    idepth = idepth * SCALE_FACTOR
    idepth = cv2.resize(idepth, (w, h))
    image_message = bridge.cv2_to_imgmsg(idepth, "32FC1")

    now = rospy.Time.now()
    # image_message = msg
    image_message.header.stamp = now
    # image_message.header.stamp = msg.header.stamp
    image_message.header.frame_id = 'camera_link'
    cam_info.header.stamp = now
    #  cam_info.header.stamp = msg.header.stamp
    cam_info.header.frame_id = 'camera_link'

    depth_pub.publish(image_message)
    info_pub.publish(cam_info)


def img_callback(msg):
    global w, h
    global now
    now = rospy.Time.now()
    image = bridge.imgmsg_to_cv2(msg)
    image = cv2.resize(image, (w, h))
    image_msg = bridge.cv2_to_imgmsg(image, "bgr8")
    image_msg.header.stamp = now
    # image_msg.header.stamp = msg.header.stamp
    image_msg.header.frame_id = 'camera_link'
    image_pub.publish(image_msg)


def pose_callback(msg):
    # global now
    # now = rospy.Time.now()
    pose_msg = msg
    odom = Odometry()
    # odom.header.stamp = now
    odom.header.stamp = pose_msg.header.stamp
    odom.header.frame_id = 'world'
    odom.child_frame_id = 'base_link'
    odom.pose.pose.position.x = pose_msg.pose.position.x
    odom.pose.pose.position.y = pose_msg.pose.position.y + np.deg2rad(-15)
    # odom.pose.pose.position.y = pose_msg.pose.position.y
    odom.pose.pose.position.z = pose_msg.pose.position.z
    odom.pose.pose.orientation.x = pose_msg.pose.orientation.x
    odom.pose.pose.orientation.y = pose_msg.pose.orientation.y
    odom.pose.pose.orientation.z = pose_msg.pose.orientation.z
    odom.pose.pose.orientation.w = pose_msg.pose.orientation.w
    # odom.pose.covariance is a 6*6 matrix
    odom.pose.covariance = np.diag([1e-2, 1e-2, 1e-2, 1e3, 1e3, 1e-1]).ravel()
    
    odom_pub.publish(odom)


if __name__ == '__main__':
    now = 0
    # global now

    # Initialize ROS
    rospy.init_node('depth_repub', anonymous=False)
    rospy.loginfo('Running until shutdown (Ctrl-C).')
    file_name = rospy.get_param('~camera_info_path')
    cam_info = parse_yaml(file_name)
    bridge = CvBridge()

    # ROS subscribers
    rospy.Subscriber('/monodepth/depth', Image, callback)
    rospy.Subscriber('/tello/image_raw', Image, img_callback)
    rospy.Subscriber('/orb_slam2_rgbd/pose', PoseStamped, pose_callback)

    # ROS publishers
    depth_pub = rospy.Publisher('/depth_syn', Image, queue_size=10)
    info_pub = rospy.Publisher('/info_syn', CameraInfo, queue_size=10)
    image_pub = rospy.Publisher('/image_syn', Image, queue_size=10)
    odom_pub = rospy.Publisher('/odom_syn', Odometry, queue_size=10)

    rospy.spin()


