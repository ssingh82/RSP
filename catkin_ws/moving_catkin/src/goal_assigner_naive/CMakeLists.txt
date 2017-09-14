cmake_minimum_required(VERSION 2.8.3)
project(goal_assigner_naive)

## Add support for C++11, supported in ROS Kinetic and newer
# add_definitions(-std=c++11)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  tf
)

## System dependencies are found with CMake's conventions
# find_package(Boost REQUIRED COMPONENTS system)


catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES goal_assigner_naive
#  CATKIN_DEPENDS roscpp rospy tf
#  DEPENDS system_lib
)

include_directories(
  ${catkin_INCLUDE_DIRS}
)

add_executable(goal_assigner src/goal_assigner.cpp)
add_executable(goal_assigner_2 src/goal_assigner_2.cpp)
add_executable(goal_assigner_3 src/goal_assigner_3.cpp)
add_executable(goal_assigner_square src/goal_assigner_square.cpp)
add_executable(goal_assigner_verticle src/goal_assigner_verticle.cpp)
add_executable(goal_assigner_flying_v src/goal_assigner_flying_v.cpp)
target_link_libraries(goal_assigner ${catkin_LIBRARIES})
target_link_libraries(goal_assigner_2 ${catkin_LIBRARIES})
target_link_libraries(goal_assigner_3 ${catkin_LIBRARIES})
target_link_libraries(goal_assigner_square ${catkin_LIBRARIES})
target_link_libraries(goal_assigner_verticle ${catkin_LIBRARIES})
target_link_libraries(goal_assigner_flying_v ${catkin_LIBRARIES})
