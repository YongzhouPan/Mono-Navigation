#! /home/peter/anaconda3/envs/MiDaS/bin/python

import rospy
from sensor_msgs.msg import CameraInfo
from sensor_msgs.msg import Image


def Depth_CallBack(msg):
    rospy.loginfo("DepthImages have been subscribed")


def CamInfo_CallBack(msg):
    rospy.loginfo("CameraInfo has been subscribed")


def CamInfo_DepIMG():
    # Initialize ROS node
    rospy.init_node('CamInfo_DepIMG_subscriber', anonymous=True)

    while not rospy.is_shutdown():
        # Depth Image Subscriber
        processedDepIMG = rospy.Subscriber("/midas_topic", Image, Depth_CallBack)

        # Camera Info Subscriber
        processedCamInfo = rospy.Subscriber("/usb_cam/camera_info", CameraInfo, CamInfo_CallBack)

        # ROS publisher
        DepIMG_pub = rospy.Publisher("/processed_info/depth_image", Image, queue_size=10)
        CamInfo_pub = rospy.Publisher("/processed_info/cam_info", CameraInfo, queue_size=10)

        DepIMG_pub.publish(processedDepIMG)
        CamInfo_pub.publish(processedCamInfo)


if __name__ == '__main__':
    CamInfo_DepIMG()
