#!/usr/bin/env python2
import rospy
from std_msgs.msg import Empty, UInt8, Bool
from sensor_msgs.msg import Joy
from geometry_msgs.msg import Twist


class GamepadState:
    def __init__(self):
        self.Cr = False
        self.Ci = False
        self.Sq = False
        self.Tr = False
        self.Start = False
        self.Select = False
        self.Sync = False
        self.L1 = False
        self.L2 = False
        self.L3 = False
        self.R1 = False
        self.R2 = False
        self.R3 = False
        self.DL = False
        self.DU = False
        self.DR = False
        self.DD = False
        self.LX = 0.  # +: left
        self.LY = 0.  # +: top
        self.RX = 0.  # +: left
        self.RY = 0.  # +: top
        self.LT = 0.  # 1.0: idle, -1.0: depressed
        self.RT = 0.  # 1.0: idle, -1.0: depressed

    def parse_ps3_usb(self, msg):
        if len(msg.buttons) != 17 or len(msg.axes) != 6:
            raise ValueError('Invalid number of buttons (%d) or axes (%d)' % (
                len(msg.buttons), len(msg.axes)))
        self.Cr = msg.buttons[0]
        self.Ci = msg.buttons[1]
        self.Tr = msg.buttons[2]
        self.Sq = msg.buttons[3]
        self.L1 = msg.buttons[4]
        self.R1 = msg.buttons[5]
        self.L2 = msg.buttons[6]
        self.R2 = msg.buttons[7]
        self.Select = msg.buttons[8]
        self.Start = msg.buttons[9]
        self.Sync = msg.buttons[10]
        self.L3 = msg.buttons[11]
        self.R3 = msg.buttons[12]
        self.DU = msg.buttons[13]
        self.DD = msg.buttons[14]
        self.DL = msg.buttons[15]
        self.DR = msg.buttons[16]
        self.LX = msg.axes[0]
        self.LY = msg.axes[1]
        self.LT = msg.axes[2]
        self.RX = msg.axes[3]
        self.RY = msg.axes[4]
        self.RT = msg.axes[5]

    def parse_ps3_usb2(self, msg):
        if len(msg.buttons) != 19 or len(msg.axes) != 27:
            raise ValueError('Invalid number of buttons (%d) or axes (%d)' % (
                len(msg.buttons), len(msg.axes)))
        self.Select = msg.buttons[0]
        self.L3 = msg.buttons[1]
        self.R3 = msg.buttons[2]
        self.Start = msg.buttons[3]
        self.DU = msg.buttons[4]
        self.DR = msg.buttons[5]
        self.DD = msg.buttons[6]
        self.DL = msg.buttons[7]
        self.L2 = msg.buttons[8]
        self.R2 = msg.buttons[9]
        self.L1 = msg.buttons[10]
        self.R1 = msg.buttons[11]
        self.Tr = msg.buttons[12]
        self.Ci = msg.buttons[13]
        self.Cr = msg.buttons[14]
        self.Sq = msg.buttons[15]
        self.Sync = msg.buttons[16]
        self.LX = msg.axes[0]
        self.LY = msg.axes[1]
        self.LT = msg.axes[12]
        self.RX = msg.axes[2]
        self.RY = msg.axes[3]
        self.RT = msg.axes[13]

    def parse(self, msg):
        err = None
        try:
            return self.parse_ps3_usb(msg)
        except ValueError, e:
            err = e
        try:
            return self.parse_ps3_usb2(msg)
        except ValueError, e:
            err = e
        raise err


class GamepadTeleopNode:
    MAX_FLIP_DIR = 7

    def __init__(self):
        # Define parameters
        self.joy_state_prev = GamepadState()
        # if None then not in agent mode, otherwise contains time of latest enable/ping
        self.agent_mode_t = None
        self.flip_dir = 0
        self.fast_mode = False

        # Start ROS node
        rospy.init_node('gamepad_teleop_node')

        # Load parameters
        self.agent_mode_timeout_sec = rospy.get_param(
            '~agent_mode_timeout_sec', 1.0)

        self.pub_takeoff = rospy.Publisher(
            'takeoff', Empty,  queue_size=1, latch=False)
        self.pub_manual_takeoff = rospy.Publisher(
            'manual_takeoff', Empty, queue_size=1, latch=False)
        self.pub_throw_takeoff = rospy.Publisher(
            'throw_takeoff', Empty,  queue_size=1, latch=False)
        self.pub_land = rospy.Publisher(
            'land', Empty,  queue_size=1, latch=False)
        self.pub_palm_land = rospy.Publisher(
            'palm_land', Empty,  queue_size=1, latch=False)
        self.pub_emergency = rospy.Publisher(
            'emergency', Empty,  queue_size=1, latch=False)
        self.pub_flattrim = rospy.Publisher(
            'flattrim', Empty,  queue_size=1, latch=False)
        self.pub_flip = rospy.Publisher(
            'flip', UInt8,  queue_size=1, latch=False)
        self.pub_cmd_out = rospy.Publisher(
            'cmd_vel', Twist, queue_size=10, latch=False)
        self.pub_fast_mode = rospy.Publisher(
            'fast_mode', Empty,  queue_size=1, latch=False)
        self.pub_video_mode = rospy.Publisher(
            'video_mode', Empty, queue_size=1, latch=False)
        self.sub_agent_cmd_in = rospy.Subscriber(
            'agent_cmd_vel_in', Twist, self.agent_cmd_cb)
        self.sub_joy = rospy.Subscriber('/joy', Joy, self.joy_cb)
        rospy.loginfo('Gamepad teleop node initialized')

    def agent_cmd_cb(self, msg):
        if self.agent_mode_t is not None:
            # Check for idle timeout
            if (rospy.Time.now() - self.agent_mode_t).to_sec() > self.agent_mode_timeout_sec:
                self.agent_mode_t = None
            else:
                self.pub_cmd_out.publish(msg)

    def joy_cb(self, msg):
        self.joy_state = GamepadState()
        self.joy_state.parse(msg)

        # Process emergency stop
        if not self.joy_state_prev.R2 and self.joy_state.R2:
            self.pub_emergency.publish()
            #rospy.logwarn('Issued RESET')
            return

        # Process takeoff
        if not self.joy_state_prev.L1 and self.joy_state.L1:
            self.pub_takeoff.publish()
            #rospy.logwarn('Issued TAKEOFF')

        # Process manual takeoff
        if self.joy_state.L2:
            self.pub_manual_takeoff.publish()
            #rospy.logwarn('Issued MANUAL_TAKEOFF')

        # Process throw takeoff
        if not self.joy_state_prev.DU and self.joy_state.DU:
            self.pub_throw_takeoff.publish()
            #rospy.logwarn('Issued THROW_TAKEOFF')

        # Process land
        if not self.joy_state_prev.R1 and self.joy_state.R1:
            self.pub_land.publish()
            #rospy.logwarn('Issued LAND')

        # Process palm land
        if not self.joy_state_prev.DD and self.joy_state.DD:
            self.pub_palm_land.publish()
            #rospy.logwarn('Issued PALM_LAND')

        # Process flat trim
        if not self.joy_state_prev.Cr and self.joy_state.Cr:
            self.pub_flattrim.publish()
            #rospy.logwarn('Issued FLATTRIM')
            
        # Process video mode
        if not self.joy_state_prev.Tr and self.joy_state.Tr:
            self.pub_video_mode.publish()
            #rospy.logwarn('Issued VIDEO_MODE')            

        if not self.joy_state_prev.Sq and self.joy_state.Sq:
            self.pub_flip.publish(self.flip_dir)
            #rospy.logwarn('Issued FLIP %d' % self.flip_dir)
            self.flip_dir += 1
            if self.flip_dir > self.MAX_FLIP_DIR:
                self.flip_dir = 0

        # Update agent bypass mode
        if self.joy_state.Select:
            self.agent_mode_t = rospy.Time.now()
        else:
            self.agent_mode_t = None

        # Manual control mode
        if self.agent_mode_t is None:
            if not self.joy_state_prev.Start and self.joy_state.Start:                
                    self.pub_fast_mode.publish()

            cmd = Twist()
            cmd.linear.x = -self.joy_state.RX
            cmd.linear.y = self.joy_state.RY
            cmd.linear.z = self.joy_state.LY
            cmd.angular.z = -self.joy_state.LX
            self.pub_cmd_out.publish(cmd)

        # Copy to previous state
        self.joy_state_prev = self.joy_state

    def spin(self):
        rospy.spin()


if __name__ == '__main__':
    try:
        node = GamepadTeleopNode()
        node.spin()
    except rospy.ROSInterruptException:
        pass
