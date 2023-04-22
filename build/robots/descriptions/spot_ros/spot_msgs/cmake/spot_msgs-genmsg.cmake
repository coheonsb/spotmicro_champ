# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "spot_msgs: 18 messages, 0 services")

set(MSG_I_FLAGS "-Ispot_msgs:/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(spot_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/LeaseOwner.msg" NAME_WE)
add_custom_target(_spot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "spot_msgs" "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/LeaseOwner.msg" ""
)

get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/EStopStateArray.msg" NAME_WE)
add_custom_target(_spot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "spot_msgs" "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/EStopStateArray.msg" "spot_msgs/EStopState:std_msgs/Header"
)

get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/WiFiState.msg" NAME_WE)
add_custom_target(_spot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "spot_msgs" "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/WiFiState.msg" ""
)

get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/BehaviorFaultState.msg" NAME_WE)
add_custom_target(_spot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "spot_msgs" "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/BehaviorFaultState.msg" "spot_msgs/BehaviorFault:std_msgs/Header"
)

get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/FootStateArray.msg" NAME_WE)
add_custom_target(_spot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "spot_msgs" "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/FootStateArray.msg" "spot_msgs/FootState:geometry_msgs/Point"
)

get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/Lease.msg" NAME_WE)
add_custom_target(_spot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "spot_msgs" "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/Lease.msg" ""
)

get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/LeaseResource.msg" NAME_WE)
add_custom_target(_spot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "spot_msgs" "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/LeaseResource.msg" "spot_msgs/LeaseOwner:spot_msgs/Lease"
)

get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/Feedback.msg" NAME_WE)
add_custom_target(_spot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "spot_msgs" "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/Feedback.msg" ""
)

get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/SystemFault.msg" NAME_WE)
add_custom_target(_spot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "spot_msgs" "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/SystemFault.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/PowerState.msg" NAME_WE)
add_custom_target(_spot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "spot_msgs" "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/PowerState.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/BatteryState.msg" NAME_WE)
add_custom_target(_spot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "spot_msgs" "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/BatteryState.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/SystemFaultState.msg" NAME_WE)
add_custom_target(_spot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "spot_msgs" "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/SystemFaultState.msg" "spot_msgs/SystemFault:std_msgs/Header"
)

get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/Metrics.msg" NAME_WE)
add_custom_target(_spot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "spot_msgs" "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/Metrics.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/LeaseArray.msg" NAME_WE)
add_custom_target(_spot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "spot_msgs" "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/LeaseArray.msg" "spot_msgs/LeaseOwner:spot_msgs/Lease:spot_msgs/LeaseResource"
)

get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/EStopState.msg" NAME_WE)
add_custom_target(_spot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "spot_msgs" "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/EStopState.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/BehaviorFault.msg" NAME_WE)
add_custom_target(_spot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "spot_msgs" "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/BehaviorFault.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/FootState.msg" NAME_WE)
add_custom_target(_spot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "spot_msgs" "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/FootState.msg" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/BatteryStateArray.msg" NAME_WE)
add_custom_target(_spot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "spot_msgs" "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/BatteryStateArray.msg" "spot_msgs/BatteryState:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/LeaseOwner.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spot_msgs
)
_generate_msg_cpp(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/EStopStateArray.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/EStopState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spot_msgs
)
_generate_msg_cpp(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/PowerState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spot_msgs
)
_generate_msg_cpp(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/WiFiState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spot_msgs
)
_generate_msg_cpp(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/Lease.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spot_msgs
)
_generate_msg_cpp(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/BehaviorFaultState.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/BehaviorFault.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spot_msgs
)
_generate_msg_cpp(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/LeaseResource.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/LeaseOwner.msg;/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/Lease.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spot_msgs
)
_generate_msg_cpp(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/Feedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spot_msgs
)
_generate_msg_cpp(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/FootState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spot_msgs
)
_generate_msg_cpp(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/Metrics.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spot_msgs
)
_generate_msg_cpp(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/BatteryState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spot_msgs
)
_generate_msg_cpp(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/SystemFaultState.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/SystemFault.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spot_msgs
)
_generate_msg_cpp(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/FootStateArray.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/FootState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spot_msgs
)
_generate_msg_cpp(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/LeaseArray.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/LeaseOwner.msg;/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/Lease.msg;/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/LeaseResource.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spot_msgs
)
_generate_msg_cpp(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/EStopState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spot_msgs
)
_generate_msg_cpp(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/BehaviorFault.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spot_msgs
)
_generate_msg_cpp(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/SystemFault.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spot_msgs
)
_generate_msg_cpp(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/BatteryStateArray.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/BatteryState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spot_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(spot_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spot_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(spot_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(spot_msgs_generate_messages spot_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/LeaseOwner.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_cpp _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/EStopStateArray.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_cpp _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/WiFiState.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_cpp _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/BehaviorFaultState.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_cpp _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/FootStateArray.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_cpp _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/Lease.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_cpp _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/LeaseResource.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_cpp _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/Feedback.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_cpp _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/SystemFault.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_cpp _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/PowerState.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_cpp _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/BatteryState.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_cpp _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/SystemFaultState.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_cpp _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/Metrics.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_cpp _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/LeaseArray.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_cpp _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/EStopState.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_cpp _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/BehaviorFault.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_cpp _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/FootState.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_cpp _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/BatteryStateArray.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_cpp _spot_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(spot_msgs_gencpp)
add_dependencies(spot_msgs_gencpp spot_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS spot_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/LeaseOwner.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/spot_msgs
)
_generate_msg_eus(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/EStopStateArray.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/EStopState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/spot_msgs
)
_generate_msg_eus(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/PowerState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/spot_msgs
)
_generate_msg_eus(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/WiFiState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/spot_msgs
)
_generate_msg_eus(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/Lease.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/spot_msgs
)
_generate_msg_eus(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/BehaviorFaultState.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/BehaviorFault.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/spot_msgs
)
_generate_msg_eus(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/LeaseResource.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/LeaseOwner.msg;/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/Lease.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/spot_msgs
)
_generate_msg_eus(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/Feedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/spot_msgs
)
_generate_msg_eus(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/FootState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/spot_msgs
)
_generate_msg_eus(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/Metrics.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/spot_msgs
)
_generate_msg_eus(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/BatteryState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/spot_msgs
)
_generate_msg_eus(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/SystemFaultState.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/SystemFault.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/spot_msgs
)
_generate_msg_eus(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/FootStateArray.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/FootState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/spot_msgs
)
_generate_msg_eus(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/LeaseArray.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/LeaseOwner.msg;/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/Lease.msg;/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/LeaseResource.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/spot_msgs
)
_generate_msg_eus(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/EStopState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/spot_msgs
)
_generate_msg_eus(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/BehaviorFault.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/spot_msgs
)
_generate_msg_eus(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/SystemFault.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/spot_msgs
)
_generate_msg_eus(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/BatteryStateArray.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/BatteryState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/spot_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(spot_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/spot_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(spot_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(spot_msgs_generate_messages spot_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/LeaseOwner.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_eus _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/EStopStateArray.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_eus _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/WiFiState.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_eus _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/BehaviorFaultState.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_eus _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/FootStateArray.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_eus _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/Lease.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_eus _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/LeaseResource.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_eus _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/Feedback.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_eus _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/SystemFault.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_eus _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/PowerState.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_eus _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/BatteryState.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_eus _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/SystemFaultState.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_eus _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/Metrics.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_eus _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/LeaseArray.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_eus _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/EStopState.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_eus _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/BehaviorFault.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_eus _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/FootState.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_eus _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/BatteryStateArray.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_eus _spot_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(spot_msgs_geneus)
add_dependencies(spot_msgs_geneus spot_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS spot_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/LeaseOwner.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spot_msgs
)
_generate_msg_lisp(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/EStopStateArray.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/EStopState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spot_msgs
)
_generate_msg_lisp(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/PowerState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spot_msgs
)
_generate_msg_lisp(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/WiFiState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spot_msgs
)
_generate_msg_lisp(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/Lease.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spot_msgs
)
_generate_msg_lisp(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/BehaviorFaultState.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/BehaviorFault.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spot_msgs
)
_generate_msg_lisp(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/LeaseResource.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/LeaseOwner.msg;/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/Lease.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spot_msgs
)
_generate_msg_lisp(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/Feedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spot_msgs
)
_generate_msg_lisp(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/FootState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spot_msgs
)
_generate_msg_lisp(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/Metrics.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spot_msgs
)
_generate_msg_lisp(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/BatteryState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spot_msgs
)
_generate_msg_lisp(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/SystemFaultState.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/SystemFault.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spot_msgs
)
_generate_msg_lisp(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/FootStateArray.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/FootState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spot_msgs
)
_generate_msg_lisp(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/LeaseArray.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/LeaseOwner.msg;/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/Lease.msg;/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/LeaseResource.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spot_msgs
)
_generate_msg_lisp(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/EStopState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spot_msgs
)
_generate_msg_lisp(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/BehaviorFault.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spot_msgs
)
_generate_msg_lisp(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/SystemFault.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spot_msgs
)
_generate_msg_lisp(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/BatteryStateArray.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/BatteryState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spot_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(spot_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spot_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(spot_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(spot_msgs_generate_messages spot_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/LeaseOwner.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_lisp _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/EStopStateArray.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_lisp _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/WiFiState.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_lisp _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/BehaviorFaultState.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_lisp _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/FootStateArray.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_lisp _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/Lease.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_lisp _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/LeaseResource.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_lisp _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/Feedback.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_lisp _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/SystemFault.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_lisp _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/PowerState.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_lisp _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/BatteryState.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_lisp _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/SystemFaultState.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_lisp _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/Metrics.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_lisp _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/LeaseArray.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_lisp _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/EStopState.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_lisp _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/BehaviorFault.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_lisp _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/FootState.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_lisp _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/BatteryStateArray.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_lisp _spot_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(spot_msgs_genlisp)
add_dependencies(spot_msgs_genlisp spot_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS spot_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/LeaseOwner.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/spot_msgs
)
_generate_msg_nodejs(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/EStopStateArray.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/EStopState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/spot_msgs
)
_generate_msg_nodejs(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/PowerState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/spot_msgs
)
_generate_msg_nodejs(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/WiFiState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/spot_msgs
)
_generate_msg_nodejs(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/Lease.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/spot_msgs
)
_generate_msg_nodejs(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/BehaviorFaultState.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/BehaviorFault.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/spot_msgs
)
_generate_msg_nodejs(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/LeaseResource.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/LeaseOwner.msg;/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/Lease.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/spot_msgs
)
_generate_msg_nodejs(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/Feedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/spot_msgs
)
_generate_msg_nodejs(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/FootState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/spot_msgs
)
_generate_msg_nodejs(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/Metrics.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/spot_msgs
)
_generate_msg_nodejs(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/BatteryState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/spot_msgs
)
_generate_msg_nodejs(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/SystemFaultState.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/SystemFault.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/spot_msgs
)
_generate_msg_nodejs(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/FootStateArray.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/FootState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/spot_msgs
)
_generate_msg_nodejs(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/LeaseArray.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/LeaseOwner.msg;/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/Lease.msg;/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/LeaseResource.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/spot_msgs
)
_generate_msg_nodejs(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/EStopState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/spot_msgs
)
_generate_msg_nodejs(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/BehaviorFault.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/spot_msgs
)
_generate_msg_nodejs(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/SystemFault.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/spot_msgs
)
_generate_msg_nodejs(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/BatteryStateArray.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/BatteryState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/spot_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(spot_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/spot_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(spot_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(spot_msgs_generate_messages spot_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/LeaseOwner.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_nodejs _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/EStopStateArray.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_nodejs _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/WiFiState.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_nodejs _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/BehaviorFaultState.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_nodejs _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/FootStateArray.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_nodejs _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/Lease.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_nodejs _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/LeaseResource.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_nodejs _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/Feedback.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_nodejs _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/SystemFault.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_nodejs _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/PowerState.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_nodejs _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/BatteryState.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_nodejs _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/SystemFaultState.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_nodejs _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/Metrics.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_nodejs _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/LeaseArray.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_nodejs _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/EStopState.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_nodejs _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/BehaviorFault.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_nodejs _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/FootState.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_nodejs _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/BatteryStateArray.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_nodejs _spot_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(spot_msgs_gennodejs)
add_dependencies(spot_msgs_gennodejs spot_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS spot_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/LeaseOwner.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spot_msgs
)
_generate_msg_py(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/EStopStateArray.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/EStopState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spot_msgs
)
_generate_msg_py(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/PowerState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spot_msgs
)
_generate_msg_py(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/WiFiState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spot_msgs
)
_generate_msg_py(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/Lease.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spot_msgs
)
_generate_msg_py(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/BehaviorFaultState.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/BehaviorFault.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spot_msgs
)
_generate_msg_py(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/LeaseResource.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/LeaseOwner.msg;/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/Lease.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spot_msgs
)
_generate_msg_py(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/Feedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spot_msgs
)
_generate_msg_py(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/FootState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spot_msgs
)
_generate_msg_py(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/Metrics.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spot_msgs
)
_generate_msg_py(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/BatteryState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spot_msgs
)
_generate_msg_py(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/SystemFaultState.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/SystemFault.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spot_msgs
)
_generate_msg_py(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/FootStateArray.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/FootState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spot_msgs
)
_generate_msg_py(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/LeaseArray.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/LeaseOwner.msg;/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/Lease.msg;/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/LeaseResource.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spot_msgs
)
_generate_msg_py(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/EStopState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spot_msgs
)
_generate_msg_py(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/BehaviorFault.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spot_msgs
)
_generate_msg_py(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/SystemFault.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spot_msgs
)
_generate_msg_py(spot_msgs
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/BatteryStateArray.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/BatteryState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spot_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(spot_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spot_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(spot_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(spot_msgs_generate_messages spot_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/LeaseOwner.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_py _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/EStopStateArray.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_py _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/WiFiState.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_py _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/BehaviorFaultState.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_py _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/FootStateArray.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_py _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/Lease.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_py _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/LeaseResource.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_py _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/Feedback.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_py _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/SystemFault.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_py _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/PowerState.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_py _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/BatteryState.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_py _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/SystemFaultState.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_py _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/Metrics.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_py _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/LeaseArray.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_py _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/EStopState.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_py _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/BehaviorFault.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_py _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/FootState.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_py _spot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/robots/descriptions/spot_ros/spot_msgs/msg/BatteryStateArray.msg" NAME_WE)
add_dependencies(spot_msgs_generate_messages_py _spot_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(spot_msgs_genpy)
add_dependencies(spot_msgs_genpy spot_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS spot_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spot_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spot_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(spot_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(spot_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/spot_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/spot_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(spot_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(spot_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spot_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spot_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(spot_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(spot_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/spot_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/spot_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(spot_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(spot_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spot_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spot_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spot_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(spot_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(spot_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
