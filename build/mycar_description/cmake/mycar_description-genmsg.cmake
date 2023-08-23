# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "mycar_description: 1 messages, 0 services")

set(MSG_I_FLAGS "-Imycar_description:/home/chenshuo/demo2_ws/src/mycar_description/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(mycar_description_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/chenshuo/demo2_ws/src/mycar_description/msg/odom.msg" NAME_WE)
add_custom_target(_mycar_description_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mycar_description" "/home/chenshuo/demo2_ws/src/mycar_description/msg/odom.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(mycar_description
  "/home/chenshuo/demo2_ws/src/mycar_description/msg/odom.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mycar_description
)

### Generating Services

### Generating Module File
_generate_module_cpp(mycar_description
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mycar_description
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(mycar_description_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(mycar_description_generate_messages mycar_description_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chenshuo/demo2_ws/src/mycar_description/msg/odom.msg" NAME_WE)
add_dependencies(mycar_description_generate_messages_cpp _mycar_description_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mycar_description_gencpp)
add_dependencies(mycar_description_gencpp mycar_description_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mycar_description_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(mycar_description
  "/home/chenshuo/demo2_ws/src/mycar_description/msg/odom.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mycar_description
)

### Generating Services

### Generating Module File
_generate_module_eus(mycar_description
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mycar_description
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(mycar_description_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(mycar_description_generate_messages mycar_description_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chenshuo/demo2_ws/src/mycar_description/msg/odom.msg" NAME_WE)
add_dependencies(mycar_description_generate_messages_eus _mycar_description_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mycar_description_geneus)
add_dependencies(mycar_description_geneus mycar_description_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mycar_description_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(mycar_description
  "/home/chenshuo/demo2_ws/src/mycar_description/msg/odom.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mycar_description
)

### Generating Services

### Generating Module File
_generate_module_lisp(mycar_description
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mycar_description
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(mycar_description_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(mycar_description_generate_messages mycar_description_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chenshuo/demo2_ws/src/mycar_description/msg/odom.msg" NAME_WE)
add_dependencies(mycar_description_generate_messages_lisp _mycar_description_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mycar_description_genlisp)
add_dependencies(mycar_description_genlisp mycar_description_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mycar_description_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(mycar_description
  "/home/chenshuo/demo2_ws/src/mycar_description/msg/odom.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mycar_description
)

### Generating Services

### Generating Module File
_generate_module_nodejs(mycar_description
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mycar_description
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(mycar_description_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(mycar_description_generate_messages mycar_description_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chenshuo/demo2_ws/src/mycar_description/msg/odom.msg" NAME_WE)
add_dependencies(mycar_description_generate_messages_nodejs _mycar_description_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mycar_description_gennodejs)
add_dependencies(mycar_description_gennodejs mycar_description_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mycar_description_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(mycar_description
  "/home/chenshuo/demo2_ws/src/mycar_description/msg/odom.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mycar_description
)

### Generating Services

### Generating Module File
_generate_module_py(mycar_description
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mycar_description
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(mycar_description_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(mycar_description_generate_messages mycar_description_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chenshuo/demo2_ws/src/mycar_description/msg/odom.msg" NAME_WE)
add_dependencies(mycar_description_generate_messages_py _mycar_description_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mycar_description_genpy)
add_dependencies(mycar_description_genpy mycar_description_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mycar_description_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mycar_description)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mycar_description
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(mycar_description_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(mycar_description_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mycar_description)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mycar_description
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(mycar_description_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(mycar_description_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mycar_description)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mycar_description
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(mycar_description_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(mycar_description_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mycar_description)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mycar_description
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(mycar_description_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(mycar_description_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mycar_description)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mycar_description\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mycar_description
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(mycar_description_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(mycar_description_generate_messages_py geometry_msgs_generate_messages_py)
endif()
