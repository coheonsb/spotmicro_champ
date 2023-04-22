cmake_minimum_required(VERSION 2.8.3)
project(i2cpwm_board)

find_package(catkin REQUIRED COMPONENTS
	roscpp
	std_msgs
	message_generation
)

# Messages and services generation
add_message_files(DIRECTORY msg)
add_service_files(DIRECTORY srv)
generate_messages(DEPENDENCIES std_msgs)


catkin_package(
	INCLUDE_DIRS
		include
	CATKIN_DEPENDS
		roscpp
		std_msgs
		message_runtime
	LIBRARIES
		${PROJECT_NAME}
)

include_directories(include ${catkin_INCLUDE_DIRS})
link_directories(${catkin_LIBRARY_DIRS})

add_executable(i2cpwm_controller src/i2cpwm_controller.cpp)
target_link_libraries(i2cpwm_controller i2c ${catkin_LIBRARIES})
add_dependencies(i2cpwm_controller
		i2cpwm_board_generate_messages_cpp
		${catkin_EXPORTED_TARGETS})

# I2C-PWM Library
add_library(${PROJECT_NAME}
	include/${PROJECT_NAME}/i2cpwm_lib.h
	src/i2cpwm_lib.cpp
)
add_dependencies(${PROJECT_NAME}
		i2cpwm_board_generate_messages_cpp
		${catkin_EXPORTED_TARGETS})
target_link_libraries(${PROJECT_NAME} ${catkin_LIBRARIES})

install(TARGETS
		i2cpwm_controller
		${PROJECT_NAME}
  RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
	LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
	ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
)
install(DIRECTORY include/${PROJECT_NAME}/
				DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
				FILES_MATCHING PATTERN "*.h" )
install(DIRECTORY launch/
				DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/launch )

execute_process(COMMAND doxygen doc/Doxyfile)

# Testing
if (CATKIN_ENABLE_TESTING)
	add_executable(i2cpwm_controller_test test/i2cpwm_controller_test.cpp)
	target_link_libraries(i2cpwm_controller_test ${catkin_LIBRARIES})
	add_dependencies(i2cpwm_controller_test
			i2cpwm_board_generate_messages_cpp
			${catkin_EXPORTED_TARGETS})
endif()
