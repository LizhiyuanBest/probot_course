# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "probot_demo: 2 messages, 1 services")

set(MSG_I_FLAGS "-Iprobot_demo:/home/li/ROS/probot_course/src/PROBOT_Anno/probot_demo/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(probot_demo_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_demo/msg/Process_Result.msg" NAME_WE)
add_custom_target(_probot_demo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "probot_demo" "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_demo/msg/Process_Result.msg" "probot_demo/Pt2D"
)

get_filename_component(_filename "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_demo/msg/Pt2D.msg" NAME_WE)
add_custom_target(_probot_demo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "probot_demo" "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_demo/msg/Pt2D.msg" ""
)

get_filename_component(_filename "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_demo/srv/Img_process.srv" NAME_WE)
add_custom_target(_probot_demo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "probot_demo" "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_demo/srv/Img_process.srv" "probot_demo/Process_Result:probot_demo/Pt2D"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(probot_demo
  "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_demo/msg/Process_Result.msg"
  "${MSG_I_FLAGS}"
  "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_demo/msg/Pt2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/probot_demo
)
_generate_msg_cpp(probot_demo
  "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_demo/msg/Pt2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/probot_demo
)

### Generating Services
_generate_srv_cpp(probot_demo
  "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_demo/srv/Img_process.srv"
  "${MSG_I_FLAGS}"
  "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_demo/msg/Process_Result.msg;/home/li/ROS/probot_course/src/PROBOT_Anno/probot_demo/msg/Pt2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/probot_demo
)

### Generating Module File
_generate_module_cpp(probot_demo
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/probot_demo
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(probot_demo_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(probot_demo_generate_messages probot_demo_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_demo/msg/Process_Result.msg" NAME_WE)
add_dependencies(probot_demo_generate_messages_cpp _probot_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_demo/msg/Pt2D.msg" NAME_WE)
add_dependencies(probot_demo_generate_messages_cpp _probot_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_demo/srv/Img_process.srv" NAME_WE)
add_dependencies(probot_demo_generate_messages_cpp _probot_demo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(probot_demo_gencpp)
add_dependencies(probot_demo_gencpp probot_demo_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS probot_demo_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(probot_demo
  "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_demo/msg/Process_Result.msg"
  "${MSG_I_FLAGS}"
  "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_demo/msg/Pt2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/probot_demo
)
_generate_msg_eus(probot_demo
  "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_demo/msg/Pt2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/probot_demo
)

### Generating Services
_generate_srv_eus(probot_demo
  "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_demo/srv/Img_process.srv"
  "${MSG_I_FLAGS}"
  "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_demo/msg/Process_Result.msg;/home/li/ROS/probot_course/src/PROBOT_Anno/probot_demo/msg/Pt2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/probot_demo
)

### Generating Module File
_generate_module_eus(probot_demo
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/probot_demo
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(probot_demo_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(probot_demo_generate_messages probot_demo_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_demo/msg/Process_Result.msg" NAME_WE)
add_dependencies(probot_demo_generate_messages_eus _probot_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_demo/msg/Pt2D.msg" NAME_WE)
add_dependencies(probot_demo_generate_messages_eus _probot_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_demo/srv/Img_process.srv" NAME_WE)
add_dependencies(probot_demo_generate_messages_eus _probot_demo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(probot_demo_geneus)
add_dependencies(probot_demo_geneus probot_demo_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS probot_demo_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(probot_demo
  "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_demo/msg/Process_Result.msg"
  "${MSG_I_FLAGS}"
  "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_demo/msg/Pt2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/probot_demo
)
_generate_msg_lisp(probot_demo
  "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_demo/msg/Pt2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/probot_demo
)

### Generating Services
_generate_srv_lisp(probot_demo
  "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_demo/srv/Img_process.srv"
  "${MSG_I_FLAGS}"
  "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_demo/msg/Process_Result.msg;/home/li/ROS/probot_course/src/PROBOT_Anno/probot_demo/msg/Pt2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/probot_demo
)

### Generating Module File
_generate_module_lisp(probot_demo
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/probot_demo
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(probot_demo_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(probot_demo_generate_messages probot_demo_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_demo/msg/Process_Result.msg" NAME_WE)
add_dependencies(probot_demo_generate_messages_lisp _probot_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_demo/msg/Pt2D.msg" NAME_WE)
add_dependencies(probot_demo_generate_messages_lisp _probot_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_demo/srv/Img_process.srv" NAME_WE)
add_dependencies(probot_demo_generate_messages_lisp _probot_demo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(probot_demo_genlisp)
add_dependencies(probot_demo_genlisp probot_demo_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS probot_demo_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(probot_demo
  "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_demo/msg/Process_Result.msg"
  "${MSG_I_FLAGS}"
  "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_demo/msg/Pt2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/probot_demo
)
_generate_msg_nodejs(probot_demo
  "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_demo/msg/Pt2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/probot_demo
)

### Generating Services
_generate_srv_nodejs(probot_demo
  "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_demo/srv/Img_process.srv"
  "${MSG_I_FLAGS}"
  "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_demo/msg/Process_Result.msg;/home/li/ROS/probot_course/src/PROBOT_Anno/probot_demo/msg/Pt2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/probot_demo
)

### Generating Module File
_generate_module_nodejs(probot_demo
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/probot_demo
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(probot_demo_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(probot_demo_generate_messages probot_demo_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_demo/msg/Process_Result.msg" NAME_WE)
add_dependencies(probot_demo_generate_messages_nodejs _probot_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_demo/msg/Pt2D.msg" NAME_WE)
add_dependencies(probot_demo_generate_messages_nodejs _probot_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_demo/srv/Img_process.srv" NAME_WE)
add_dependencies(probot_demo_generate_messages_nodejs _probot_demo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(probot_demo_gennodejs)
add_dependencies(probot_demo_gennodejs probot_demo_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS probot_demo_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(probot_demo
  "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_demo/msg/Process_Result.msg"
  "${MSG_I_FLAGS}"
  "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_demo/msg/Pt2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/probot_demo
)
_generate_msg_py(probot_demo
  "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_demo/msg/Pt2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/probot_demo
)

### Generating Services
_generate_srv_py(probot_demo
  "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_demo/srv/Img_process.srv"
  "${MSG_I_FLAGS}"
  "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_demo/msg/Process_Result.msg;/home/li/ROS/probot_course/src/PROBOT_Anno/probot_demo/msg/Pt2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/probot_demo
)

### Generating Module File
_generate_module_py(probot_demo
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/probot_demo
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(probot_demo_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(probot_demo_generate_messages probot_demo_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_demo/msg/Process_Result.msg" NAME_WE)
add_dependencies(probot_demo_generate_messages_py _probot_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_demo/msg/Pt2D.msg" NAME_WE)
add_dependencies(probot_demo_generate_messages_py _probot_demo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/li/ROS/probot_course/src/PROBOT_Anno/probot_demo/srv/Img_process.srv" NAME_WE)
add_dependencies(probot_demo_generate_messages_py _probot_demo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(probot_demo_genpy)
add_dependencies(probot_demo_genpy probot_demo_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS probot_demo_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/probot_demo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/probot_demo
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(probot_demo_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/probot_demo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/probot_demo
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(probot_demo_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/probot_demo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/probot_demo
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(probot_demo_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/probot_demo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/probot_demo
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(probot_demo_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/probot_demo)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/probot_demo\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/probot_demo
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(probot_demo_generate_messages_py std_msgs_generate_messages_py)
endif()
