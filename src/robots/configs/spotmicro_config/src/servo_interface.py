#!/usr/bin/python

import rospy
import numpy as np
from trajectory_msgs.msg import JointTrajectory
from sensor_msgs.msg import JointState
from i2cpwm_board.msg import Servo, ServoArray
from std_msgs.msg import Header
import math
# from MangDang.mini_pupper.HardwareInterface import HardwareInterface

# hardware_interface = HardwareInterface()

joint_state_pub = rospy.Publisher('/joint_states', JointState, queue_size=1)
joint_names = [
    'front_left_shoulder',
    'front_left_leg',
    'front_left_foot',
    'front_right_shoulder',
    'front_right_leg',
    'front_right_foot',
    'rear_left_shoulder',
    'rear_left_leg',
    'rear_left_foot',
    'rear_right_shoulder',
    'rear_right_leg',
    'rear_right_foot'
  
]




def rTod(radians, config = 0.0):
    temp = radians * (180 / math.pi)
    return temp + config

def dTor(degrees, config = 0.0):
    return (degrees - config) * (math.pi / 180)


def angle_to_pwm(angle_rad, min_pwm, max_pwm, center_pwm):
    # Convert angle from radians to degrees
    angle_deg = math.degrees(angle_rad)

    # Map angle range (-90, 90) to PWM range (min_pwm, max_pwm)
    pwm = int(((angle_deg + 90) * (max_pwm - min_pwm) / 180) + min_pwm)

    # Make sure PWM value is within the allowed range
    pwm = max(min(pwm, max_pwm), min_pwm)

    return pwm


def callback(msg):
    joint_positions = msg.points[0].positions
    # rospy.loginfo(msg)
    servo_array = ServoArray()
    for i, position in enumerate(joint_positions):
      servo = Servo()
      servo.servo = i + 1
      min_pwm = 83
      max_pwm = 520
      center_pwm = 306
      pwm_value = angle_to_pwm(position, min_pwm, max_pwm, center_pwm)
      position = 30
    #   servo.value = pwm_value  # need chane angle to pwm
    #   servo_array.servos.append(servo)

    # servo_pub.publish(servo_array)
    # publish_joint_states(joint_positions)
    # rTod
    # degs = tuple(rTod(jr) for jr in joint_positions)
    degs = (rTod(joint_positions[0]), rTod(joint_positions[1]), rTod(joint_positions[2], 90),
    rTod(joint_positions[3]), rTod(joint_positions[4]), rTod(joint_positions[5], 90),
    rTod(joint_positions[6]), rTod(joint_positions[7]), rTod(joint_positions[8], 90),
    rTod(joint_positions[9]), rTod(joint_positions[10]), rTod(joint_positions[11], 90))
    rospy.loginfo(degs)
    # radis = tuple(dTor(jd) for jd in degs)
    radis = (dTor(degs[0]), dTor(degs[1]), dTor(degs[2], 90),
    dTor(degs[3]), dTor(degs[4]), dTor(degs[5], 90),
    dTor(degs[6]), dTor(degs[7]), dTor(degs[8], 90),
    dTor(degs[9]), dTor(degs[10]), dTor(degs[11], 90))
    publish_joint_states(radis)




def listener():

    rospy.init_node('servo_interface', anonymous=True)
    rospy.Subscriber('/joint_group_position_controller/command',
                     JointTrajectory, callback, queue_size=1)
    rospy.spin()

def publish_joint_states(joint_positions):
    joint_state = JointState()
   
    joint_state.header = Header()
    joint_state.header.stamp = rospy.Time.now()
    joint_state.name = joint_names
    joint_state.position = joint_positions

    # rospy.loginfo(joint_positions)
    joint_state_pub.publish(joint_state)


if __name__ == '__main__':
    rospy.init_node("hardware_interface_node")

    servo_pub = rospy.Publisher("/servos_absolute", ServoArray, queue_size=1)
    joint_state_pub = rospy.Publisher("joint_states", JointState, queue_size=1)

    rospy.Subscriber("/joint_group_position_controller/command", JointTrajectory, callback, queue_size=1)

    rospy.spin()
    # listener()