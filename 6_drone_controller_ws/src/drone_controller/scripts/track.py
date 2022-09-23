#!/usr/bin/env python

import rospy
import std_msgs.msg
from geometry_msgs.msg import Twist, Pose2D, PoseStamped
from nav_msgs.msg import Odometry
from quadrotor_msgs.msg import PositionCommand
import numpy as np


global e_x_1, e_y_1, e_z_1, e_theta_1, Ee_x, Ee_y, Ee_z, Ee_theta, u_x_1, u_y_1, u_z_1, u_theta_1, x_1, y_1, z_1, theta_1, i_g
global cur_pose


e_x_1 = 0
e_y_1 = 0
e_z_1 = 0
e_theta_1 = 0
Ee_x = 0
Ee_y = 0
Ee_z = 0
Ee_theta = 0
u_x_1 = 0.0
u_y_1 = 0.0
u_z_1 = 0.0
u_theta_1 = 0
x_1 = 0
y_1 = 0
z_1 = 0
theta_1 = 0

# initialize current pose
cur_pose = np.array([0.0, 0.0, 0.0]) 


kp = 1.15
ki = 0
kd = 0.6

vel_max_x = 0.36
vel_max_y = 0.6
vel_max_z = 0.0
angular_max = 0.3
thrhd_val = 0.001
expect_theta = 1.5

def cur_pose_callback(msg):

    global cur_pose
    
    cur_pose[0] = msg.pose.position.x
    cur_pose[1] = msg.pose.position.y
    cur_pose[2] = msg.pose.position.z
    # rc = "pose_x: " + str(x) + " pose_y: " + str(y) + " pose_z: " + str(theta)
    # rospy.loginfo(rc)


def vel_cmd_callback(msg):
    
    global e_x_1, e_y_1, e_z_1, e_theta_1, Ee_x, Ee_y, Ee_z, Ee_theta, u_x_1, u_y_1, u_z_1, u_theta_1, x_1, y_1, z_1, theta_1
    
    refer_pose = np.array([0.0, 0.0, 0.0])
    refer_pose[0] = msg.position.x
    refer_pose[1] = msg.position.y
    refer_pose[2] = msg.position.z
    
    pose_err = refer_pose - cur_pose

    print(refer_pose, cur_pose, pose_err)

    e_x = pose_err[0]
    u_x = kp * e_x + ki * Ee_x + kd * (e_x - e_x_1)
    Ee_x += e_x
    u_x_1 = u_x
    e_x_1 = e_x

    e_y = pose_err[1]
    u_y = 1.6 * kp * e_y + ki * Ee_y + kd * (e_y - e_y_1) 
    Ee_y += e_y
    u_y_1 = u_y
    e_y_1 = e_y

    e_z = pose_err[2]
    u_z = kp * e_z + ki * Ee_z + kd * (e_z - e_z_1) 
    Ee_z += e_z
    u_z_1 = u_z
    e_z_1 = e_z

    '''
    e_theta = pose_err[2]
    u_theta = kp * e_theta + ki * Ee_theta + kd * (e_theta - e_theta_1)
    Ee_theta += e_theta
    u_theta_1 = u_theta
    theta_1 = theta
    e_theta_1 = e_theta
    '''
    
    if u_x > vel_max_x:
        u_x = vel_max_x
    if u_x < -vel_max_x: 
        u_x = -vel_max_x
    if u_y > vel_max_y:
        u_y = vel_max_y
    if u_y < -vel_max_y:
        u_y = -vel_max_y
    if u_z > vel_max_z:
        u_z = vel_max_z
    if u_z < -vel_max_z: 
        u_z = -vel_max_z
    '''
    if u_theta > angular_max:
        u_theta = angular_max
    if u_theta < -angular_max:
        u_theta = -angular_max
    '''
    if e_x < thrhd_val and e_x > -thrhd_val:
        u_x = 0
    if e_y < thrhd_val and e_y > -thrhd_val:
        u_y = 0
    if e_z < thrhd_val and e_z > -thrhd_val:
        u_z = 0


    vel_msg = Twist()
    vel_msg.linear.x = -u_y
    vel_msg.linear.y = u_x
    vel_msg.linear.z = 0
    # vel_msg.linear.z = u_theta

    vel_cmd_pub.publish(vel_msg)
    print(vel_msg)

        

if __name__ == '__main__':

    rospy.init_node('pos_track', anonymous=True)
    sub = rospy.Subscriber('/orb_slam2_rgbd/pose', PoseStamped, cur_pose_callback, queue_size=10)
    sub_vel_cmd = rospy.Subscriber('/planning/pos_cmd', PositionCommand, vel_cmd_callback, queue_size=10)
    vel_cmd_pub = rospy.Publisher('/tello/cmd_vel', Twist, queue_size=10)
    rospy.spin()
