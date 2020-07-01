# Install script for directory: /home/li/ROS/probot_course/src/PROBOT_Anno/probot_vision_pick/probot_ocr

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/probot_ocr/srv" TYPE FILE FILES "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_vision_pick/probot_ocr/srv/detectobjectionSrv.srv")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/probot_ocr/cmake" TYPE FILE FILES "/home/li/ROS/probot_course/build/PROBOT_Anno/probot_vision_pick/probot_ocr/catkin_generated/installspace/probot_ocr-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/li/ROS/probot_course/devel/include/probot_ocr")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/li/ROS/probot_course/devel/share/roseus/ros/probot_ocr")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/li/ROS/probot_course/devel/share/common-lisp/ros/probot_ocr")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/li/ROS/probot_course/devel/share/gennodejs/ros/probot_ocr")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/li/ROS/probot_course/devel/lib/python2.7/dist-packages/probot_ocr")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/li/ROS/probot_course/devel/lib/python2.7/dist-packages/probot_ocr")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/li/ROS/probot_course/build/PROBOT_Anno/probot_vision_pick/probot_ocr/catkin_generated/installspace/probot_ocr.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/probot_ocr/cmake" TYPE FILE FILES "/home/li/ROS/probot_course/build/PROBOT_Anno/probot_vision_pick/probot_ocr/catkin_generated/installspace/probot_ocr-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/probot_ocr/cmake" TYPE FILE FILES
    "/home/li/ROS/probot_course/build/PROBOT_Anno/probot_vision_pick/probot_ocr/catkin_generated/installspace/probot_ocrConfig.cmake"
    "/home/li/ROS/probot_course/build/PROBOT_Anno/probot_vision_pick/probot_ocr/catkin_generated/installspace/probot_ocrConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/probot_ocr" TYPE FILE FILES "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_vision_pick/probot_ocr/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/probot_ocr" TYPE PROGRAM FILES
    "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_vision_pick/probot_ocr/scripts/Detect_ocr.py"
    "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_vision_pick/probot_ocr/scripts/icdar.py"
    "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_vision_pick/probot_ocr/scripts/locality_aware_nms.py"
    "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_vision_pick/probot_ocr/scripts/model.py"
    "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_vision_pick/probot_ocr/scripts/init.py"
    )
endif()

