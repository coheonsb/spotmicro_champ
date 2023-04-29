#!/usr/bin/python

import rospy
import numpy as np
from trajectory_msgs.msg import JointTrajectory
from sensor_msgs.msg import JointState
from std_msgs.msg import Header
import math

# from i2cpwm_board.msg import Servo, ServoArray

import busio
import board
import numpy as np
from adafruit_servokit import ServoKit
from adafruit_pca9685 import PCA9685


i2c_bus = busio.I2C(board.SCL, board.SDA)

kit = ServoKit(channels=16)

pca = PCA9685(i2c_bus)
pca.frequency = 330


config = [
    {'id': 0, 'fix': 90, 'offSet': 0, 'direction': -1, 'name': 'front_left_shoulder', 'min_angle': 5, 'max_angle': 175},
    {'id': 1, 'fix': 90, 'offSet': 0, 'direction': 1, 'name': 'front_left_leg', 'min_angle': 5, 'max_angle': 175},
    {'id': 2, 'fix': 180, 'offSet': 10, 'direction': 1, 'name': 'front_left_foot', 'min_angle': 5, 'max_angle': 175},
    {'id': 3, 'fix': 90, 'offSet': 0, 'direction': -1, 'name': 'front_right_shoulder', 'min_angle': 5, 'max_angle': 175},
    {'id': 4, 'fix': 90, 'offSet': 0, 'direction': -1, 'name': 'front_right_leg', 'min_angle': 5, 'max_angle': 175},
    {'id': 5, 'fix': 0, 'offSet': 0, 'direction': -1, 'name': 'front_right_foot', 'min_angle': 5, 'max_angle': 175},
    {'id': 6, 'fix': 90, 'offSet': 0, 'direction': 1, 'name': 'rear_left_shoulder', 'min_angle': 5, 'max_angle': 175},
    {'id': 7, 'fix': 90, 'offSet': 0, 'direction': 1, 'name': 'rear_left_leg', 'min_angle': 5, 'max_angle': 175},
    {'id': 8, 'fix': 180, 'offSet': 0, 'direction': 1, 'name': 'rear_left_foot', 'min_angle': 5, 'max_angle': 175},
    {'id': 9, 'fix': 90, 'offSet': 0, 'direction': 1, 'name': 'rear_right_shoulder', 'min_angle': 5, 'max_angle': 175},
    {'id': 10, 'fix': 90, 'offSet': 0, 'direction': -1, 'name': 'rear_right_leg', 'min_angle': 5, 'max_angle': 175},
    {'id': 11, 'fix': 0, 'offSet': 0, 'direction': -1, 'name': 'rear_right_foot', 'min_angle': 5, 'max_angle': 175}
]


for i in range(12):
    kit.servo[i].set_pulse_width_range(500, 2500)


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


def rTod(radians):
    return math.degrees(radians)


def dTor(degrees):
    return math.radians(degrees)


def move_servo(servo_index, angle):
    realId = config[servo_index].get('id')
    fixValue = config[servo_index].get('fix')
    direction = config[servo_index].get('direction')
    offSet = config[servo_index].get('offSet')
    finalAngle = fixValue + (angle * direction)
    # print(finalAngle)
    kit.servo[realId].angle = finalAngle
    return angle + offSet


def callback(msg):
    joint_positions = msg.points[0].positions
    degs = tuple(rTod(jr) for jr in joint_positions)
    rospy.loginfo(degs)
    for i, d in enumerate(degs):
        move_servo(i, d)
    radis = tuple(dTor(jd) for jd in degs)
    publish_joint_states(radis)


# def listener():
#     rospy.init_node('servo_interface', anonymous=True)
#     rospy.Subscriber('/joint_group_position_controller/command',
#                      JointTrajectory, callback, queue_size=1)
#     rospy.spin()


def publish_joint_states(joint_positions):
    joint_state = JointState()
    joint_state.header = Header()
    joint_state.header.stamp = rospy.Time.now()
    joint_state.name = joint_names
    joint_state.position = joint_positions

    joint_state_pub.publish(joint_state)


if __name__ == '__main__':
    rospy.init_node("hardware_interface_node")
    # servo_pub = rospy.Publisher("/servos_absolute", ServoArray, queue_size=1)
    # joint_state_pub = rospy.Publisher("joint_states", JointState, queue_size=1)
    rospy.Subscriber("/joint_group_position_controller/command", JointTrajectory, callback, queue_size=1)
    rospy.spin()
