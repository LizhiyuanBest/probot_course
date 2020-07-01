# Install script for directory: /home/li/ROS/probot_course/src/PROBOT_Anno/probot_vision_pick/probot_pick_place

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/li/ROS/probot_course/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/li/ROS/probot_course/build/PROBOT_Anno/probot_vision_pick/probot_pick_place/catkin_generated/installspace/probot_pick_place.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/probot_pick_place/cmake" TYPE FILE FILES
    "/home/li/ROS/probot_course/build/PROBOT_Anno/probot_vision_pick/probot_pick_place/catkin_generated/installspace/probot_pick_placeConfig.cmake"
    "/home/li/ROS/probot_course/build/PROBOT_Anno/probot_vision_pick/probot_pick_place/catkin_generated/installspace/probot_pick_placeConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/probot_pick_place" TYPE FILE FILES "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_vision_pick/probot_pick_place/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/probot_pick_place" TYPE PROGRAM FILES
    "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_vision_pick/probot_pick_place/scripts/probot_sorting_demo.py"
    "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_vision_pick/probot_pick_place/scripts/probot_sorting_network.py"
    "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_vision_pick/probot_pick_place/scripts/probot_sorting_ocr.py"
    )
endif()

