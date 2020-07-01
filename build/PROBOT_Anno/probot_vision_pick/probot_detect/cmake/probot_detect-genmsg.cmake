# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "probot_detect: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(probot_detect_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_vision_pick/probot_detect/srv/detectobjectionSrv.srv" NAME_WE)
add_custom_target(_probot_detect_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "probot_detect" "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_vision_pick/probot_detect/srv/detectobjectionSrv.srv" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(probot_detect
  "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_vision_pick/probot_detect/srv/detectobjectionSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/probot_detect
)

### Generating Module File
_generate_module_cpp(probot_detect
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/probot_detect
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(probot_detect_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(probot_detect_generate_messages probot_detect_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_vision_pick/probot_detect/srv/detectobjectionSrv.srv" NAME_WE)
add_dependencies(probot_detect_generate_messages_cpp _probot_detect_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(probot_detect_gencpp)
add_dependencies(probot_detect_gencpp probot_detect_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS probot_detect_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(probot_detect
  "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_vision_pick/probot_detect/srv/detectobjectionSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/probot_detect
)

### Generating Module File
_generate_module_eus(probot_detect
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/probot_detect
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(probot_detect_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(probot_detect_generate_messages probot_detect_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_vision_pick/probot_detect/srv/detectobjectionSrv.srv" NAME_WE)
add_dependencies(probot_detect_generate_messages_eus _probot_detect_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(probot_detect_geneus)
add_dependencies(probot_detect_geneus probot_detect_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS probot_detect_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(probot_detect
  "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_vision_pick/probot_detect/srv/detectobjectionSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/probot_detect
)

### Generating Module File
_generate_module_lisp(probot_detect
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/probot_detect
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(probot_detect_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(probot_detect_generate_messages probot_detect_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_vision_pick/probot_detect/srv/detectobjectionSrv.srv" NAME_WE)
add_dependencies(probot_detect_generate_messages_lisp _probot_detect_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(probot_detect_genlisp)
add_dependencies(probot_detect_genlisp probot_detect_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS probot_detect_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(probot_detect
  "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_vision_pick/probot_detect/srv/detectobjectionSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/probot_detect
)

### Generating Module File
_generate_module_nodejs(probot_detect
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/probot_detect
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(probot_detect_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(probot_detect_generate_messages probot_detect_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_vision_pick/probot_detect/srv/detectobjectionSrv.srv" NAME_WE)
add_dependencies(probot_detect_generate_messages_nodejs _probot_detect_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(probot_detect_gennodejs)
add_dependencies(probot_detect_gennodejs probot_detect_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS probot_detect_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(probot_detect
  "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_vision_pick/probot_detect/srv/detectobjectionSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/probot_detect
)

### Generating Module File
_generate_module_py(probot_detect
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/probot_detect
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(probot_detect_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(probot_detect_generate_messages probot_detect_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_vision_pick/probot_detect/srv/detectobjectionSrv.srv" NAME_WE)
add_dependencies(probot_detect_generate_messages_py _probot_detect_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(probot_detect_genpy)
add_dependencies(probot_detect_genpy probot_detect_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS probot_detect_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/probot_detect)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/probot_detect
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(probot_detect_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(probot_detect_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(probot_detect_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/probot_detect)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/probot_detect
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(probot_detect_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(probot_detect_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(probot_detect_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/probot_detect)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/probot_detect
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(probot_detect_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(probot_detect_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(probot_detect_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/probot_detect)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/probot_detect
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(probot_detect_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(probot_detect_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(probot_detect_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/probot_detect)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/probot_detect\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/probot_detect
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(probot_detect_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(probot_detect_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(probot_detect_generate_messages_py geometry_msgs_generate_messages_py)
endif()
