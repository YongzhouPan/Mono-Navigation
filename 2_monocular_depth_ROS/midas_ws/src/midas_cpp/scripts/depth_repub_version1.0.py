#!/home/peter/anaconda3/envs/MiDaS/bin/python
# -*-coding:utf-8-*-
# Copyright (c) 2021 Tao.

# ROS
import yaml
import rospy
from sensor_msgs.msg import Image, CameraInfo

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
    # file_name = rospy.get_param('~camera_info_path')
    file_name = '/home/peter/Desktop/MonocularROS/MiDaS/src/midas_cpp/config/head_camera.yaml'
    cam_info = parse_yaml(file_name)

    # ROS subscribers
    rospy.Subscriber('/midas_topic', Image, callback)
    # ROS publishers
    depth_pub = rospy.Publisher('/depth_syn', Image, queue_size=10)
    info_pub = rospy.Publisher('/info_syn', CameraInfo, queue_size=10)

    rospy.spin()

        
