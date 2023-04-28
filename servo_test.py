#!/usr/bin/python

# import time

import sys

# import busio
# import board
# import numpy as np
# from adafruit_servokit import ServoKit
# from adafruit_pca9685 import PCA9685


# i2c_bus = busio.I2C(board.SCL, board.SDA)


# kit = ServoKit(channels=16)


# pca = PCA9685(i2c_bus)
# pca.frequency = 330



# for i in range(12):
#     kit.servo[i].set_pulse_width_range(500, 2500)

config = [
    {'id': 0, 'fix': 90, 'offSet': 0, 'direction': 1, 'name': 'front_left_shoulder', 'min_angle': 5, 'max_angle': 175 },
    {'id': 1,'fix': 90, 'offSet': 0, 'direction': 1, 'name': 'front_left_leg', 'min_angle': 5, 'max_angle': 175 },
    {'id': 2,'fix': 180, 'offSet': 10, 'direction': 1, 'name': 'front_left_foot', 'min_angle': 5, 'max_angle': 175 },
    {'id': 3,'fix': 90, 'offSet': 0, 'direction': 1, 'name': 'front_right_shoulder', 'min_angle': 5, 'max_angle': 175 },
    {'id': 4,'fix': 90, 'offSet': 0, 'direction': -1, 'name': 'front_right_leg', 'min_angle': 5, 'max_angle': 175 },
    {'id': 5,'fix': 0, 'offSet': 0, 'direction': -1, 'name': 'front_right_foot', 'min_angle': 5, 'max_angle': 175 },  
    {'id': 6,'fix': 90, 'offSet': 0, 'direction': -1, 'name': 'rear_left_shoulder', 'min_angle': 5, 'max_angle': 175 },
    {'id': 7,'fix': 90, 'offSet': 0, 'direction': 1, 'name': 'rear_left_leg', 'min_angle': 5, 'max_angle': 175 },
    {'id': 8,'fix': 180, 'offSet': 0, 'direction': 1, 'name': 'rear_left_foot', 'min_angle': 5, 'max_angle': 175 },
    {'id': 9,'fix': 90, 'offSet': 0, 'direction': -1, 'name': 'rear_right_shoulder', 'min_angle': 5, 'max_angle': 175 },
    {'id': 10,'fix': 90, 'offSet': 0, 'direction': -1, 'name': 'rear_right_leg', 'min_angle': 5, 'max_angle': 175 },
    {'id': 11,'fix': 0, 'offSet': 0, 'direction': -1, 'name': 'rear_right_foot', 'min_angle': 5, 'max_angle': 175 }  
]

def move_servo(servo_index, angle):
    realId = config[servo_index].get('id')
    fixValue = config[servo_index].get('fix')
    direction = config[servo_index].get('direction')
    offSet = config[servo_index].get('offSet')

    finalAngle = fixValue + (angle * direction)
    
    print(finalAngle)

    # kit.servo[realId].angle = finalAngle
    # kit.servo[realId].set_pulse_width_range(500, 2500)

    return angle + offSet


# move_servo(0, 0)

move_servo(1, -30)


# def move_all_servos(angles):
#     for i in range(len(angles)):
#         kit.servo[i].angle = angles[i]


# angles = [0, 90, 45, 135, 180, 90, 45, 90, 135, 180, 0, 90]
# move_all_servos(angles)

# time.sleep(1)
