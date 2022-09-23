#! /usr/bin/env python

import rospy
import numpy as np
from geometry_msgs.msg import Twist, PoseStamped
from quadrotor_msgs.msg import PositionCommand

class PID_CONTROLLER:
    def __init__(self):
        # Set PID parameters
        self.kp = 1.15
        self.ki = 0
        self.kd = 0.6

        # Set maximum velocity
        self.vel_max_x = 0.5 # 0.36
        self.vel_max_y = 0.6
        self.vel_max_z = 0.0
        self.angular_max = 0.3
        self.thrhd_val = 0.01
        self.expect_theta = 1.5

        # Initialization
        self.e_x_1 = 0
        self.e_y_1 = 0
        self.e_z_1 = 0
        self.e_theta_1 = 0
        self.Ee_x = 0
        self.Ee_y = 0
        self.Ee_z = 0
        self.Ee_theta = 0
        self.u_x_1 = 0.0
        self.u_y_1 = 0.0
        self.u_z_1 = 0.0
        self.u_theta_1 = 0
        self.x_1 = 0
        self.y_1 = 0
        self.z_1 = 0
        self.theta_1 = 0
        self.i_g = 0

        # Initialize current pose
        self.cur_pose = np.array([0.0, 0.0, 0.0])

        # Publisher
        self.vel_cmd_pub = rospy.Publisher('/tello/cmd_vel', Twist, queue_size=10)
        # Subscriber
        rospy.Subscriber('/orb_slam2_rgbd/pose', PoseStamped, self.cur_pose_callback, queue_size=10)
        rospy.Subscriber('/planning/pos_cmd', PositionCommand, self.vel_cmd_callback, queue_size=10)


    def cur_pose_callback(self, msg):
            self.cur_pose[0] = msg.pose.position.x
            self.cur_pose[1] = msg.pose.position.y
            self.cur_pose[2] = msg.pose.position.z
            # rc = "pose_x: " + str(x) + " pose_y: " + str(y) + " pose_z: " + str(theta)
            # rospy.loginfo(rc)


    def vel_cmd_callback(self, msg):
            refer_pose = np.array([0.0, 0.0, 0.0])
            refer_pose[0] = msg.position.x
            refer_pose[1] = msg.position.y
            refer_pose[2] = msg.position.z

            pose_err = refer_pose - self.cur_pose

            print(refer_pose, self.cur_pose, pose_err)

            e_x = pose_err[0]
            u_x = self.kp * e_x + self.ki * self.Ee_x + self.kd * (e_x - self.e_x_1)
            self.Ee_x += e_x
            self.u_x_1 = u_x
            self.e_x_1 = e_x

            e_y = pose_err[1]
            u_y = 1.6 * self.kp * e_y + self.ki * self.Ee_y + self.kd * (e_y - self.e_y_1)
            self.Ee_y += e_y
            self.u_y_1 = u_y
            self.e_y_1 = e_y

            e_z = pose_err[2]
            u_z = self.kp * e_z + self.ki * self.Ee_z + self.kd * (e_z - self.e_z_1) 
            self.Ee_z += e_z
            self.u_z_1 = u_z
            self.e_z_1 = e_z

            '''
            e_theta = pose_err[2]
            u_theta = self.kp * e_theta + self.ki * self.Ee_theta + self.kd * (e_theta - self.e_theta_1)
            self.Ee_theta += e_theta
            u_theta_1 = u_theta
            theta_1 = self.theta
            e_theta_1 = e_theta
            '''

            if u_x > self.vel_max_x:
                u_x = self.vel_max_x
            if u_x < -self.vel_max_x:
                u_x = -self.vel_max_x
            if u_y > self.vel_max_y:
                u_y = self.vel_max_y
            if u_y < -self.vel_max_y:
                u_y = -self.vel_max_y
            if u_z > self.vel_max_z:
                u_z = self.vel_max_z
            if u_z < -self.vel_max_z:
                u_z = -self.vel_max_z
            
            '''
            if u_theta > self.angular_max:
                u_theta = self.angular_max
            if u_theta < -self.angular_max:
                u_theta = -self.angular_max
            '''

            if e_x < self.thrhd_val and e_x > -self.thrhd_val:
                u_x = 0
            if e_y < self.thrhd_val and e_y > -self.thrhd_val:
                u_y = 0

            vel_msg = Twist()
            vel_msg.linear.x = -u_y
            vel_msg.linear.y = u_x
            vel_msg.linear.z = 0
            # vel_msg.linear.z = u_theta

            self.vel_cmd_pub.publish(vel_msg)
            print(vel_msg)


if __name__ == '__main__':
    rospy.init_node('pos_track', anonymous=True)
    rospy.loginfo('Drone Controller Activated')
    vel_cmd = PID_CONTROLLER()
    try:
        rospy.spin()
    except KeyboardInterrupt:
        print("Node Shutdown")
