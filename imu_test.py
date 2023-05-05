import numpy as np
import os
import sys
import time
import smbus



from imusensor.MPU9250 import MPU9250
from imusensor.filters import madgwick

sensorfusion = madgwick.Madgwick(0.5)

address = 0x68
bus = smbus.SMBus(1)
imu = MPU9250.MPU9250(bus, address)
imu.begin()

# print('cali')
# imu.caliberateAccelerometer()
# print("Acceleration calib successful")

# imu.caliberateGyro()
# imu.caliberateMagApprox()
# print("Mag calib successful")
# imu.loadCalibDataFromFile("place_your_code_here.json")

currTime = time.time()
print_count = 0


def cov (array):
    data = np.array(array)
    # 평균 구하기
    mean = np.mean(data)
    # 각 샘플과 평균 간의 차이
    diff = data - mean
    # 공분산 행렬 계산 (1x1 크기)
    cov_matrix = np.dot(diff, diff.T) / (len(data) - 1)
    print(cov_matrix)
    return cov_matrix

while True:
	imu.readSensor()
	for i in range(10):
		newTime = time.time()
		dt = newTime - currTime
		currTime = newTime

		sensorfusion.updateRollPitchYaw(imu.AccelVals[0], imu.AccelVals[1], imu.AccelVals[2], imu.GyroVals[0],
                                  imu.GyroVals[1], imu.GyroVals[2], imu.MagVals[0], imu.MagVals[1], imu.MagVals[2], dt)

	if print_count == 2:
		print(sensorfusion.q)
		print(cov(sensorfusion.q))
		print("mad roll: {0} ; mad pitch : {1} ; mad yaw : {2}".format(
			sensorfusion.roll, sensorfusion.pitch, sensorfusion.yaw))
		print_count = 0

	print_count = print_count + 1
	time.sleep(0.01)
