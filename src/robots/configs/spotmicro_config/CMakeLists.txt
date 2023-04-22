
cmake_minimum_required(VERSION 2.8.3)
project(spotmicro_config)

find_package(catkin REQUIRED COMPONENTS 
  rospy
  sensor_msgs
)

catkin_package()

install(DIRECTORY config launch
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)

file(GLOB python_scripts src/*.py)
catkin_install_python(
  PROGRAMS ${python_scripts}
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)