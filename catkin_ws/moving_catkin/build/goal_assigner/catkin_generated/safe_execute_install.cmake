execute_process(COMMAND "/home/ajiang2/RSP/catkin_ws/moving_catkin/build/goal_assigner/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/ajiang2/RSP/catkin_ws/moving_catkin/build/goal_assigner/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
