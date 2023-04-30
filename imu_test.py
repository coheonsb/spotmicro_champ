
from std_msgs.msg import String, Header
from sensor_msgs.msg import Imu, MagneticField
from geometry_msgs.msg import TransformStamped

import tf
import math

import time

from mpu9250_jmdev.registers import *
from mpu9250_jmdev.mpu_9250 import MPU9250

G = 9.80665
MagFieldConversion_uT_T = 0.000001

mpu = MPU9250(
    address_ak=AK8963_ADDRESS,
    address_mpu_master=MPU9050_ADDRESS_68,  # In 0x68 Address
    address_mpu_slave=None,
    bus=1,
    gfs=GFS_1000,
    afs=AFS_8G,
    mfs=AK8963_BIT_16,
    mode=AK8963_MODE_C100HZ)




def talker():
    imu_msg = Imu()

    mpu.configure()
    mpu.calibrate()
    mpu.configure()

    # create imu msg
    q0 = 1.0  # W
    q1 = 0.0  # X
    q2 = 0.0  # Y
    q3 = 0.0  # Z

    # Fill imu message
    imu_msg = Imu()
    imu_msg.header = Header()
  
    imu_msg.header.frame_id = 'imu_link'

    imu_msg.orientation.x = q0
    imu_msg.orientation.y = q1
    imu_msg.orientation.z = q2
    imu_msg.orientation.w = q3
    imu_msg.orientation_covariance[0] = 0.01
    imu_msg.orientation_covariance[4] = 0.01
    imu_msg.orientation_covariance[8] = 0.01

    gx, gy, gz = mpu.readGyroscopeMaster()
    imu_msg.angular_velocity.x = math.radians(gx)
    imu_msg.angular_velocity.y = math.radians(gy)
    imu_msg.angular_velocity.z = math.radians(gz)
    imu_msg.angular_velocity_covariance[0] = 0.03
    imu_msg.angular_velocity_covariance[4] = 0.03
    imu_msg.angular_velocity_covariance[8] = 0.03

    ax, ay, az = mpu.readAccelerometerMaster()
    imu_msg.linear_acceleration.x = ax*G
    imu_msg.linear_acceleration.y = ay*G
    imu_msg.linear_acceleration.z = az*G
    imu_msg.linear_acceleration_covariance[0] = 10
    imu_msg.linear_acceleration_covariance[4] = 10
    imu_msg.linear_acceleration_covariance[8] = 10


    print(imu_msg)





if __name__ == '__main__':
    talker()
    # broadcaster()

