# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "i2cpwm_board: 6 messages, 4 services")

set(MSG_I_FLAGS "-Ii2cpwm_board:/home/pi/catkin_ws/src/i2c_pwm_board/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(i2cpwm_board_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/pi/catkin_ws/src/i2c_pwm_board/msg/ServoConfigArray.msg" NAME_WE)
add_custom_target(_i2cpwm_board_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "i2cpwm_board" "/home/pi/catkin_ws/src/i2c_pwm_board/msg/ServoConfigArray.msg" "i2cpwm_board/ServoConfig"
)

get_filename_component(_filename "/home/pi/catkin_ws/src/i2c_pwm_board/msg/ServoArray.msg" NAME_WE)
add_custom_target(_i2cpwm_board_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "i2cpwm_board" "/home/pi/catkin_ws/src/i2c_pwm_board/msg/ServoArray.msg" "i2cpwm_board/Servo"
)

get_filename_component(_filename "/home/pi/catkin_ws/src/i2c_pwm_board/srv/StopServos.srv" NAME_WE)
add_custom_target(_i2cpwm_board_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "i2cpwm_board" "/home/pi/catkin_ws/src/i2c_pwm_board/srv/StopServos.srv" ""
)

get_filename_component(_filename "/home/pi/catkin_ws/src/i2c_pwm_board/msg/ServoConfig.msg" NAME_WE)
add_custom_target(_i2cpwm_board_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "i2cpwm_board" "/home/pi/catkin_ws/src/i2c_pwm_board/msg/ServoConfig.msg" ""
)

get_filename_component(_filename "/home/pi/catkin_ws/src/i2c_pwm_board/msg/PositionArray.msg" NAME_WE)
add_custom_target(_i2cpwm_board_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "i2cpwm_board" "/home/pi/catkin_ws/src/i2c_pwm_board/msg/PositionArray.msg" "i2cpwm_board/Position"
)

get_filename_component(_filename "/home/pi/catkin_ws/src/i2c_pwm_board/msg/Servo.msg" NAME_WE)
add_custom_target(_i2cpwm_board_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "i2cpwm_board" "/home/pi/catkin_ws/src/i2c_pwm_board/msg/Servo.msg" ""
)

get_filename_component(_filename "/home/pi/catkin_ws/src/i2c_pwm_board/srv/IntValue.srv" NAME_WE)
add_custom_target(_i2cpwm_board_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "i2cpwm_board" "/home/pi/catkin_ws/src/i2c_pwm_board/srv/IntValue.srv" ""
)

get_filename_component(_filename "/home/pi/catkin_ws/src/i2c_pwm_board/msg/Position.msg" NAME_WE)
add_custom_target(_i2cpwm_board_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "i2cpwm_board" "/home/pi/catkin_ws/src/i2c_pwm_board/msg/Position.msg" ""
)

get_filename_component(_filename "/home/pi/catkin_ws/src/i2c_pwm_board/srv/DriveMode.srv" NAME_WE)
add_custom_target(_i2cpwm_board_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "i2cpwm_board" "/home/pi/catkin_ws/src/i2c_pwm_board/srv/DriveMode.srv" "i2cpwm_board/Position"
)

get_filename_component(_filename "/home/pi/catkin_ws/src/i2c_pwm_board/srv/ServosConfig.srv" NAME_WE)
add_custom_target(_i2cpwm_board_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "i2cpwm_board" "/home/pi/catkin_ws/src/i2c_pwm_board/srv/ServosConfig.srv" "i2cpwm_board/ServoConfig"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(i2cpwm_board
  "/home/pi/catkin_ws/src/i2c_pwm_board/msg/ServoConfigArray.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/i2c_pwm_board/msg/ServoConfig.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/i2cpwm_board
)
_generate_msg_cpp(i2cpwm_board
  "/home/pi/catkin_ws/src/i2c_pwm_board/msg/ServoArray.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/i2c_pwm_board/msg/Servo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/i2cpwm_board
)
_generate_msg_cpp(i2cpwm_board
  "/home/pi/catkin_ws/src/i2c_pwm_board/msg/ServoConfig.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/i2cpwm_board
)
_generate_msg_cpp(i2cpwm_board
  "/home/pi/catkin_ws/src/i2c_pwm_board/msg/PositionArray.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/i2c_pwm_board/msg/Position.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/i2cpwm_board
)
_generate_msg_cpp(i2cpwm_board
  "/home/pi/catkin_ws/src/i2c_pwm_board/msg/Servo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/i2cpwm_board
)
_generate_msg_cpp(i2cpwm_board
  "/home/pi/catkin_ws/src/i2c_pwm_board/msg/Position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/i2cpwm_board
)

### Generating Services
_generate_srv_cpp(i2cpwm_board
  "/home/pi/catkin_ws/src/i2c_pwm_board/srv/StopServos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/i2cpwm_board
)
_generate_srv_cpp(i2cpwm_board
  "/home/pi/catkin_ws/src/i2c_pwm_board/srv/IntValue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/i2cpwm_board
)
_generate_srv_cpp(i2cpwm_board
  "/home/pi/catkin_ws/src/i2c_pwm_board/srv/DriveMode.srv"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/i2c_pwm_board/msg/Position.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/i2cpwm_board
)
_generate_srv_cpp(i2cpwm_board
  "/home/pi/catkin_ws/src/i2c_pwm_board/srv/ServosConfig.srv"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/i2c_pwm_board/msg/ServoConfig.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/i2cpwm_board
)

### Generating Module File
_generate_module_cpp(i2cpwm_board
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/i2cpwm_board
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(i2cpwm_board_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(i2cpwm_board_generate_messages i2cpwm_board_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/catkin_ws/src/i2c_pwm_board/msg/ServoConfigArray.msg" NAME_WE)
add_dependencies(i2cpwm_board_generate_messages_cpp _i2cpwm_board_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/i2c_pwm_board/msg/ServoArray.msg" NAME_WE)
add_dependencies(i2cpwm_board_generate_messages_cpp _i2cpwm_board_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/i2c_pwm_board/srv/StopServos.srv" NAME_WE)
add_dependencies(i2cpwm_board_generate_messages_cpp _i2cpwm_board_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/i2c_pwm_board/msg/ServoConfig.msg" NAME_WE)
add_dependencies(i2cpwm_board_generate_messages_cpp _i2cpwm_board_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/i2c_pwm_board/msg/PositionArray.msg" NAME_WE)
add_dependencies(i2cpwm_board_generate_messages_cpp _i2cpwm_board_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/i2c_pwm_board/msg/Servo.msg" NAME_WE)
add_dependencies(i2cpwm_board_generate_messages_cpp _i2cpwm_board_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/i2c_pwm_board/srv/IntValue.srv" NAME_WE)
add_dependencies(i2cpwm_board_generate_messages_cpp _i2cpwm_board_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/i2c_pwm_board/msg/Position.msg" NAME_WE)
add_dependencies(i2cpwm_board_generate_messages_cpp _i2cpwm_board_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/i2c_pwm_board/srv/DriveMode.srv" NAME_WE)
add_dependencies(i2cpwm_board_generate_messages_cpp _i2cpwm_board_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/i2c_pwm_board/srv/ServosConfig.srv" NAME_WE)
add_dependencies(i2cpwm_board_generate_messages_cpp _i2cpwm_board_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(i2cpwm_board_gencpp)
add_dependencies(i2cpwm_board_gencpp i2cpwm_board_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS i2cpwm_board_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(i2cpwm_board
  "/home/pi/catkin_ws/src/i2c_pwm_board/msg/ServoConfigArray.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/i2c_pwm_board/msg/ServoConfig.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/i2cpwm_board
)
_generate_msg_eus(i2cpwm_board
  "/home/pi/catkin_ws/src/i2c_pwm_board/msg/ServoArray.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/i2c_pwm_board/msg/Servo.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/i2cpwm_board
)
_generate_msg_eus(i2cpwm_board
  "/home/pi/catkin_ws/src/i2c_pwm_board/msg/ServoConfig.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/i2cpwm_board
)
_generate_msg_eus(i2cpwm_board
  "/home/pi/catkin_ws/src/i2c_pwm_board/msg/PositionArray.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/i2c_pwm_board/msg/Position.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/i2cpwm_board
)
_generate_msg_eus(i2cpwm_board
  "/home/pi/catkin_ws/src/i2c_pwm_board/msg/Servo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/i2cpwm_board
)
_generate_msg_eus(i2cpwm_board
  "/home/pi/catkin_ws/src/i2c_pwm_board/msg/Position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/i2cpwm_board
)

### Generating Services
_generate_srv_eus(i2cpwm_board
  "/home/pi/catkin_ws/src/i2c_pwm_board/srv/StopServos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/i2cpwm_board
)
_generate_srv_eus(i2cpwm_board
  "/home/pi/catkin_ws/src/i2c_pwm_board/srv/IntValue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/i2cpwm_board
)
_generate_srv_eus(i2cpwm_board
  "/home/pi/catkin_ws/src/i2c_pwm_board/srv/DriveMode.srv"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/i2c_pwm_board/msg/Position.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/i2cpwm_board
)
_generate_srv_eus(i2cpwm_board
  "/home/pi/catkin_ws/src/i2c_pwm_board/srv/ServosConfig.srv"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/i2c_pwm_board/msg/ServoConfig.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/i2cpwm_board
)

### Generating Module File
_generate_module_eus(i2cpwm_board
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/i2cpwm_board
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(i2cpwm_board_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(i2cpwm_board_generate_messages i2cpwm_board_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/catkin_ws/src/i2c_pwm_board/msg/ServoConfigArray.msg" NAME_WE)
add_dependencies(i2cpwm_board_generate_messages_eus _i2cpwm_board_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/i2c_pwm_board/msg/ServoArray.msg" NAME_WE)
add_dependencies(i2cpwm_board_generate_messages_eus _i2cpwm_board_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/i2c_pwm_board/srv/StopServos.srv" NAME_WE)
add_dependencies(i2cpwm_board_generate_messages_eus _i2cpwm_board_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/i2c_pwm_board/msg/ServoConfig.msg" NAME_WE)
add_dependencies(i2cpwm_board_generate_messages_eus _i2cpwm_board_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/i2c_pwm_board/msg/PositionArray.msg" NAME_WE)
add_dependencies(i2cpwm_board_generate_messages_eus _i2cpwm_board_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/i2c_pwm_board/msg/Servo.msg" NAME_WE)
add_dependencies(i2cpwm_board_generate_messages_eus _i2cpwm_board_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/i2c_pwm_board/srv/IntValue.srv" NAME_WE)
add_dependencies(i2cpwm_board_generate_messages_eus _i2cpwm_board_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/i2c_pwm_board/msg/Position.msg" NAME_WE)
add_dependencies(i2cpwm_board_generate_messages_eus _i2cpwm_board_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/i2c_pwm_board/srv/DriveMode.srv" NAME_WE)
add_dependencies(i2cpwm_board_generate_messages_eus _i2cpwm_board_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/i2c_pwm_board/srv/ServosConfig.srv" NAME_WE)
add_dependencies(i2cpwm_board_generate_messages_eus _i2cpwm_board_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(i2cpwm_board_geneus)
add_dependencies(i2cpwm_board_geneus i2cpwm_board_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS i2cpwm_board_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(i2cpwm_board
  "/home/pi/catkin_ws/src/i2c_pwm_board/msg/ServoConfigArray.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/i2c_pwm_board/msg/ServoConfig.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/i2cpwm_board
)
_generate_msg_lisp(i2cpwm_board
  "/home/pi/catkin_ws/src/i2c_pwm_board/msg/ServoArray.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/i2c_pwm_board/msg/Servo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/i2cpwm_board
)
_generate_msg_lisp(i2cpwm_board
  "/home/pi/catkin_ws/src/i2c_pwm_board/msg/ServoConfig.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/i2cpwm_board
)
_generate_msg_lisp(i2cpwm_board
  "/home/pi/catkin_ws/src/i2c_pwm_board/msg/PositionArray.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/i2c_pwm_board/msg/Position.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/i2cpwm_board
)
_generate_msg_lisp(i2cpwm_board
  "/home/pi/catkin_ws/src/i2c_pwm_board/msg/Servo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/i2cpwm_board
)
_generate_msg_lisp(i2cpwm_board
  "/home/pi/catkin_ws/src/i2c_pwm_board/msg/Position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/i2cpwm_board
)

### Generating Services
_generate_srv_lisp(i2cpwm_board
  "/home/pi/catkin_ws/src/i2c_pwm_board/srv/StopServos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/i2cpwm_board
)
_generate_srv_lisp(i2cpwm_board
  "/home/pi/catkin_ws/src/i2c_pwm_board/srv/IntValue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/i2cpwm_board
)
_generate_srv_lisp(i2cpwm_board
  "/home/pi/catkin_ws/src/i2c_pwm_board/srv/DriveMode.srv"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/i2c_pwm_board/msg/Position.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/i2cpwm_board
)
_generate_srv_lisp(i2cpwm_board
  "/home/pi/catkin_ws/src/i2c_pwm_board/srv/ServosConfig.srv"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/i2c_pwm_board/msg/ServoConfig.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/i2cpwm_board
)

### Generating Module File
_generate_module_lisp(i2cpwm_board
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/i2cpwm_board
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(i2cpwm_board_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(i2cpwm_board_generate_messages i2cpwm_board_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/catkin_ws/src/i2c_pwm_board/msg/ServoConfigArray.msg" NAME_WE)
add_dependencies(i2cpwm_board_generate_messages_lisp _i2cpwm_board_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/i2c_pwm_board/msg/ServoArray.msg" NAME_WE)
add_dependencies(i2cpwm_board_generate_messages_lisp _i2cpwm_board_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/i2c_pwm_board/srv/StopServos.srv" NAME_WE)
add_dependencies(i2cpwm_board_generate_messages_lisp _i2cpwm_board_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/i2c_pwm_board/msg/ServoConfig.msg" NAME_WE)
add_dependencies(i2cpwm_board_generate_messages_lisp _i2cpwm_board_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/i2c_pwm_board/msg/PositionArray.msg" NAME_WE)
add_dependencies(i2cpwm_board_generate_messages_lisp _i2cpwm_board_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/i2c_pwm_board/msg/Servo.msg" NAME_WE)
add_dependencies(i2cpwm_board_generate_messages_lisp _i2cpwm_board_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/i2c_pwm_board/srv/IntValue.srv" NAME_WE)
add_dependencies(i2cpwm_board_generate_messages_lisp _i2cpwm_board_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/i2c_pwm_board/msg/Position.msg" NAME_WE)
add_dependencies(i2cpwm_board_generate_messages_lisp _i2cpwm_board_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/i2c_pwm_board/srv/DriveMode.srv" NAME_WE)
add_dependencies(i2cpwm_board_generate_messages_lisp _i2cpwm_board_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/i2c_pwm_board/srv/ServosConfig.srv" NAME_WE)
add_dependencies(i2cpwm_board_generate_messages_lisp _i2cpwm_board_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(i2cpwm_board_genlisp)
add_dependencies(i2cpwm_board_genlisp i2cpwm_board_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS i2cpwm_board_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(i2cpwm_board
  "/home/pi/catkin_ws/src/i2c_pwm_board/msg/ServoConfigArray.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/i2c_pwm_board/msg/ServoConfig.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/i2cpwm_board
)
_generate_msg_nodejs(i2cpwm_board
  "/home/pi/catkin_ws/src/i2c_pwm_board/msg/ServoArray.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/i2c_pwm_board/msg/Servo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/i2cpwm_board
)
_generate_msg_nodejs(i2cpwm_board
  "/home/pi/catkin_ws/src/i2c_pwm_board/msg/ServoConfig.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/i2cpwm_board
)
_generate_msg_nodejs(i2cpwm_board
  "/home/pi/catkin_ws/src/i2c_pwm_board/msg/PositionArray.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/i2c_pwm_board/msg/Position.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/i2cpwm_board
)
_generate_msg_nodejs(i2cpwm_board
  "/home/pi/catkin_ws/src/i2c_pwm_board/msg/Servo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/i2cpwm_board
)
_generate_msg_nodejs(i2cpwm_board
  "/home/pi/catkin_ws/src/i2c_pwm_board/msg/Position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/i2cpwm_board
)

### Generating Services
_generate_srv_nodejs(i2cpwm_board
  "/home/pi/catkin_ws/src/i2c_pwm_board/srv/StopServos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/i2cpwm_board
)
_generate_srv_nodejs(i2cpwm_board
  "/home/pi/catkin_ws/src/i2c_pwm_board/srv/IntValue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/i2cpwm_board
)
_generate_srv_nodejs(i2cpwm_board
  "/home/pi/catkin_ws/src/i2c_pwm_board/srv/DriveMode.srv"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/i2c_pwm_board/msg/Position.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/i2cpwm_board
)
_generate_srv_nodejs(i2cpwm_board
  "/home/pi/catkin_ws/src/i2c_pwm_board/srv/ServosConfig.srv"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/i2c_pwm_board/msg/ServoConfig.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/i2cpwm_board
)

### Generating Module File
_generate_module_nodejs(i2cpwm_board
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/i2cpwm_board
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(i2cpwm_board_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(i2cpwm_board_generate_messages i2cpwm_board_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/catkin_ws/src/i2c_pwm_board/msg/ServoConfigArray.msg" NAME_WE)
add_dependencies(i2cpwm_board_generate_messages_nodejs _i2cpwm_board_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/i2c_pwm_board/msg/ServoArray.msg" NAME_WE)
add_dependencies(i2cpwm_board_generate_messages_nodejs _i2cpwm_board_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/i2c_pwm_board/srv/StopServos.srv" NAME_WE)
add_dependencies(i2cpwm_board_generate_messages_nodejs _i2cpwm_board_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/i2c_pwm_board/msg/ServoConfig.msg" NAME_WE)
add_dependencies(i2cpwm_board_generate_messages_nodejs _i2cpwm_board_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/i2c_pwm_board/msg/PositionArray.msg" NAME_WE)
add_dependencies(i2cpwm_board_generate_messages_nodejs _i2cpwm_board_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/i2c_pwm_board/msg/Servo.msg" NAME_WE)
add_dependencies(i2cpwm_board_generate_messages_nodejs _i2cpwm_board_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/i2c_pwm_board/srv/IntValue.srv" NAME_WE)
add_dependencies(i2cpwm_board_generate_messages_nodejs _i2cpwm_board_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/i2c_pwm_board/msg/Position.msg" NAME_WE)
add_dependencies(i2cpwm_board_generate_messages_nodejs _i2cpwm_board_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/i2c_pwm_board/srv/DriveMode.srv" NAME_WE)
add_dependencies(i2cpwm_board_generate_messages_nodejs _i2cpwm_board_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/i2c_pwm_board/srv/ServosConfig.srv" NAME_WE)
add_dependencies(i2cpwm_board_generate_messages_nodejs _i2cpwm_board_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(i2cpwm_board_gennodejs)
add_dependencies(i2cpwm_board_gennodejs i2cpwm_board_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS i2cpwm_board_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(i2cpwm_board
  "/home/pi/catkin_ws/src/i2c_pwm_board/msg/ServoConfigArray.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/i2c_pwm_board/msg/ServoConfig.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/i2cpwm_board
)
_generate_msg_py(i2cpwm_board
  "/home/pi/catkin_ws/src/i2c_pwm_board/msg/ServoArray.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/i2c_pwm_board/msg/Servo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/i2cpwm_board
)
_generate_msg_py(i2cpwm_board
  "/home/pi/catkin_ws/src/i2c_pwm_board/msg/ServoConfig.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/i2cpwm_board
)
_generate_msg_py(i2cpwm_board
  "/home/pi/catkin_ws/src/i2c_pwm_board/msg/PositionArray.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/i2c_pwm_board/msg/Position.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/i2cpwm_board
)
_generate_msg_py(i2cpwm_board
  "/home/pi/catkin_ws/src/i2c_pwm_board/msg/Servo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/i2cpwm_board
)
_generate_msg_py(i2cpwm_board
  "/home/pi/catkin_ws/src/i2c_pwm_board/msg/Position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/i2cpwm_board
)

### Generating Services
_generate_srv_py(i2cpwm_board
  "/home/pi/catkin_ws/src/i2c_pwm_board/srv/StopServos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/i2cpwm_board
)
_generate_srv_py(i2cpwm_board
  "/home/pi/catkin_ws/src/i2c_pwm_board/srv/IntValue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/i2cpwm_board
)
_generate_srv_py(i2cpwm_board
  "/home/pi/catkin_ws/src/i2c_pwm_board/srv/DriveMode.srv"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/i2c_pwm_board/msg/Position.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/i2cpwm_board
)
_generate_srv_py(i2cpwm_board
  "/home/pi/catkin_ws/src/i2c_pwm_board/srv/ServosConfig.srv"
  "${MSG_I_FLAGS}"
  "/home/pi/catkin_ws/src/i2c_pwm_board/msg/ServoConfig.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/i2cpwm_board
)

### Generating Module File
_generate_module_py(i2cpwm_board
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/i2cpwm_board
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(i2cpwm_board_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(i2cpwm_board_generate_messages i2cpwm_board_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/catkin_ws/src/i2c_pwm_board/msg/ServoConfigArray.msg" NAME_WE)
add_dependencies(i2cpwm_board_generate_messages_py _i2cpwm_board_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/i2c_pwm_board/msg/ServoArray.msg" NAME_WE)
add_dependencies(i2cpwm_board_generate_messages_py _i2cpwm_board_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/i2c_pwm_board/srv/StopServos.srv" NAME_WE)
add_dependencies(i2cpwm_board_generate_messages_py _i2cpwm_board_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/i2c_pwm_board/msg/ServoConfig.msg" NAME_WE)
add_dependencies(i2cpwm_board_generate_messages_py _i2cpwm_board_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/i2c_pwm_board/msg/PositionArray.msg" NAME_WE)
add_dependencies(i2cpwm_board_generate_messages_py _i2cpwm_board_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/i2c_pwm_board/msg/Servo.msg" NAME_WE)
add_dependencies(i2cpwm_board_generate_messages_py _i2cpwm_board_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/i2c_pwm_board/srv/IntValue.srv" NAME_WE)
add_dependencies(i2cpwm_board_generate_messages_py _i2cpwm_board_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/i2c_pwm_board/msg/Position.msg" NAME_WE)
add_dependencies(i2cpwm_board_generate_messages_py _i2cpwm_board_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/i2c_pwm_board/srv/DriveMode.srv" NAME_WE)
add_dependencies(i2cpwm_board_generate_messages_py _i2cpwm_board_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/catkin_ws/src/i2c_pwm_board/srv/ServosConfig.srv" NAME_WE)
add_dependencies(i2cpwm_board_generate_messages_py _i2cpwm_board_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(i2cpwm_board_genpy)
add_dependencies(i2cpwm_board_genpy i2cpwm_board_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS i2cpwm_board_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/i2cpwm_board)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/i2cpwm_board
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(i2cpwm_board_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/i2cpwm_board)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/i2cpwm_board
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(i2cpwm_board_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/i2cpwm_board)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/i2cpwm_board
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(i2cpwm_board_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/i2cpwm_board)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/i2cpwm_board
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(i2cpwm_board_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/i2cpwm_board)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/i2cpwm_board\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/i2cpwm_board
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(i2cpwm_board_generate_messages_py std_msgs_generate_messages_py)
endif()
