import rospy
from std_msgs.msg import Header
from sensor_msgs.msg import Imu

import numpy as np
import busio
import board
import adafruit_bno055


i2c = busio.I2C(board.SCL, board.SDA)

sensor = adafruit_bno055.BNO055_I2C(i2c)



def covariance(array):
    data = np.array(array)
    mean = np.mean(data)
    diff = data - mean
    cov_matrix = np.dot(diff, diff.T) / (len(data) - 1)
    return cov_matrix

def talker():
    imu_pub_champ = rospy.Publisher('imu/data', Imu, queue_size=10)
    rospy.init_node('talker', anonymous=True)
    rate = rospy.Rate(10)  # 10hz


    rospy.loginfo("IMU STARTED")
 
    while not rospy.is_shutdown():

        try:
            imu_msg = Imu()
            imu_msg.header = Header()
            imu_msg.header.stamp = rospy.Time.now()
            imu_msg.header.frame_id = 'imu_link'

            imu_msg.orientation.x = float(sensor.quaternion[0])
            imu_msg.orientation.y = float(sensor.quaternion[1])
            imu_msg.orientation.z = float(sensor.quaternion[2])
            imu_msg.orientation.w = float(sensor.quaternion[3])

            ori_cov = covariance(
                [float(sensor.quaternion[0]), float(sensor.quaternion[1]),
                float(sensor.quaternion[2]), float(sensor.quaternion[3])]
            )

            imu_msg.orientation_covariance[0] = ori_cov
            imu_msg.orientation_covariance[4] = ori_cov
            imu_msg.orientation_covariance[8] = ori_cov

            gyro_cov = covariance([float(sensor.gyro[0]), float(
                sensor.gyro[1]), float(sensor.gyro[2])])
            imu_msg.angular_velocity.x = float(sensor.gyro[0])
            imu_msg.angular_velocity.y = float(sensor.gyro[1])
            imu_msg.angular_velocity.z = float(sensor.gyro[2])
            imu_msg.angular_velocity_covariance[0] = gyro_cov
            imu_msg.angular_velocity_covariance[4] = gyro_cov
            imu_msg.angular_velocity_covariance[8] = gyro_cov

            acc_cov = covariance([float(sensor.acceleration[0]), float(
                sensor.acceleration[1]), float(sensor.acceleration[2])])
            imu_msg.linear_acceleration.x = float(sensor.acceleration[0])
            imu_msg.linear_acceleration.y = float(sensor.acceleration[1])
            imu_msg.linear_acceleration.z = float(sensor.acceleration[2])
            imu_msg.linear_acceleration_covariance[0] = acc_cov
            imu_msg.linear_acceleration_covariance[4] = acc_cov
            imu_msg.linear_acceleration_covariance[8] = acc_cov

        except Exception:
            pass
        print(imu_msg)
        imu_pub_champ.publish(imu_msg)
        rate.sleep()


if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass





# import rospy
# from std_msgs.msg import String, Header
# from sensor_msgs.msg import Imu, MagneticField
# from geometry_msgs.msg import TransformStamped


# import tf
# import math

# import time
# from mpu9250_jmdev.registers import *
# from mpu9250_jmdev.mpu_9250 import MPU9250

# G = 9.80665
# MagFieldConversion_uT_T = 0.000001

# mpu = MPU9250(
#     address_ak=AK8963_ADDRESS,
#     address_mpu_master=MPU9050_ADDRESS_68,  # In 0x68 Address
#     address_mpu_slave=None,
#     bus=1,
#     gfs=GFS_1000,
#     afs=AFS_8G,
#     mfs=AK8963_BIT_16,
#     mode=AK8963_MODE_C100HZ)


# def talker():
#     imu_pub_champ = rospy.Publisher('imu/data', Imu, queue_size=10)
#     rospy.init_node('talker', anonymous=True)
#     rate = rospy.Rate(10)  # 10hz

#     imu_msg = Imu()

#     # Apply the settings to the registers and calibrate
#     mpu.configure()
#     mpu.calibrate()
#     mpu.configure()

#     rospy.loginfo("IMU STARTED")
#     while not rospy.is_shutdown():
#         # Fill mag msg
#         # mx, my, mz = mpu.readMagnetometerMaster()
#         # mag_msg.header.stamp = rospy.get_rostime()
#         # mag_msg.magnetic_field.x = mx*MagFieldConversion_uT_T
#         # mag_msg.magnetic_field.y = my*MagFieldConversion_uT_T
#         # mag_msg.magnetic_field.z = mz*MagFieldConversion_uT_T
#         # mag_msg.magnetic_field_covariance[0] = 0.01
#         # mag_msg.magnetic_field_covariance[4] = 0.01
#         # mag_msg.magnetic_field_covariance[8] = 0.01

#         # create imu msg
#         q0 = 1.0  # W
#         q1 = 0.0  # X
#         q2 = 0.0  # Y
#         q3 = 0.0  # Z

#         # Fill imu message
#         imu_msg = Imu()
#         imu_msg.header = Header()
#         imu_msg.header.stamp = rospy.Time.now()
#         imu_msg.header.frame_id = 'imu_link'

#         imu_msg.orientation.x = q0
#         imu_msg.orientation.y = q1
#         imu_msg.orientation.z = q2
#         imu_msg.orientation.w = q3
#         imu_msg.orientation_covariance[0] = 0.01
#         imu_msg.orientation_covariance[4] = 0.01
#         imu_msg.orientation_covariance[8] = 0.01

#         gx, gy, gz = mpu.readGyroscopeMaster()
#         imu_msg.angular_velocity.x = math.radians(gx)
#         imu_msg.angular_velocity.y = math.radians(gy)
#         imu_msg.angular_velocity.z = math.radians(gz)
#         imu_msg.angular_velocity_covariance[0] = 0.03
#         imu_msg.angular_velocity_covariance[4] = 0.03
#         imu_msg.angular_velocity_covariance[8] = 0.03

#         ax, ay, az = mpu.readAccelerometerMaster()
#         imu_msg.linear_acceleration.x = ax*G
#         imu_msg.linear_acceleration.y = ay*G
#         imu_msg.linear_acceleration.z = az*G
#         imu_msg.linear_acceleration_covariance[0] = 10
#         imu_msg.linear_acceleration_covariance[4] = 10
#         imu_msg.linear_acceleration_covariance[8] = 10

#         print(imu_msg)
#         imu_pub_champ.publish(imu_msg)
#         rate.sleep()


# if __name__ == '__main__':
#     try:
#         talker()
#     except rospy.ROSInterruptException:
#         pass
