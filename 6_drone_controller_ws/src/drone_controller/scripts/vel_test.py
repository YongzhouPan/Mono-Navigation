#!/usr/bin/env python

import rospy
import rospkg
import std_msgs.msg
from geometry_msgs.msg import Twist, Pose2D, PoseStamped
from nav_msgs.msg import Odometry
from quadrotor_msgs.msg import PositionCommand
import numpy as np


if __name__ == '__main__':

    rospy.init_node('vel_pub', anonymous=True)
    vel_cmd_pub = rospy.Publisher('/tello/cmd_vel', Twist, queue_size=10)
    rate = rospy.Rate(10)
    while not rospy.is_shutdown():
        vel_msg = Twist()
        vel_msg.linear.x = 0.0
        vel_msg.linear.y = 0.3
        vel_cmd_pub.publish(vel_msg)
        rate.sleep()
