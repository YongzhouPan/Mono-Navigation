# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "tello_driver: 1 messages, 2 services")

set(MSG_I_FLAGS "-Itello_driver:/home/peter/Desktop/tello_driver/src/tello_driver/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Inav_msgs:/opt/ros/melodic/share/nav_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/melodic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(tello_driver_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/peter/Desktop/tello_driver/src/tello_driver/srv/MoveUp.srv" NAME_WE)
add_custom_target(_tello_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tello_driver" "/home/peter/Desktop/tello_driver/src/tello_driver/srv/MoveUp.srv" ""
)

get_filename_component(_filename "/home/peter/Desktop/tello_driver/src/tello_driver/msg/TelloStatus.msg" NAME_WE)
add_custom_target(_tello_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tello_driver" "/home/peter/Desktop/tello_driver/src/tello_driver/msg/TelloStatus.msg" ""
)

get_filename_component(_filename "/home/peter/Desktop/tello_driver/src/tello_driver/srv/MoveDown.srv" NAME_WE)
add_custom_target(_tello_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tello_driver" "/home/peter/Desktop/tello_driver/src/tello_driver/srv/MoveDown.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(tello_driver
  "/home/peter/Desktop/tello_driver/src/tello_driver/msg/TelloStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tello_driver
)

### Generating Services
_generate_srv_cpp(tello_driver
  "/home/peter/Desktop/tello_driver/src/tello_driver/srv/MoveUp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tello_driver
)
_generate_srv_cpp(tello_driver
  "/home/peter/Desktop/tello_driver/src/tello_driver/srv/MoveDown.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tello_driver
)

### Generating Module File
_generate_module_cpp(tello_driver
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tello_driver
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(tello_driver_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(tello_driver_generate_messages tello_driver_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/peter/Desktop/tello_driver/src/tello_driver/srv/MoveUp.srv" NAME_WE)
add_dependencies(tello_driver_generate_messages_cpp _tello_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/Desktop/tello_driver/src/tello_driver/msg/TelloStatus.msg" NAME_WE)
add_dependencies(tello_driver_generate_messages_cpp _tello_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/Desktop/tello_driver/src/tello_driver/srv/MoveDown.srv" NAME_WE)
add_dependencies(tello_driver_generate_messages_cpp _tello_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tello_driver_gencpp)
add_dependencies(tello_driver_gencpp tello_driver_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tello_driver_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(tello_driver
  "/home/peter/Desktop/tello_driver/src/tello_driver/msg/TelloStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tello_driver
)

### Generating Services
_generate_srv_eus(tello_driver
  "/home/peter/Desktop/tello_driver/src/tello_driver/srv/MoveUp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tello_driver
)
_generate_srv_eus(tello_driver
  "/home/peter/Desktop/tello_driver/src/tello_driver/srv/MoveDown.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tello_driver
)

### Generating Module File
_generate_module_eus(tello_driver
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tello_driver
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(tello_driver_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(tello_driver_generate_messages tello_driver_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/peter/Desktop/tello_driver/src/tello_driver/srv/MoveUp.srv" NAME_WE)
add_dependencies(tello_driver_generate_messages_eus _tello_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/Desktop/tello_driver/src/tello_driver/msg/TelloStatus.msg" NAME_WE)
add_dependencies(tello_driver_generate_messages_eus _tello_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/Desktop/tello_driver/src/tello_driver/srv/MoveDown.srv" NAME_WE)
add_dependencies(tello_driver_generate_messages_eus _tello_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tello_driver_geneus)
add_dependencies(tello_driver_geneus tello_driver_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tello_driver_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(tello_driver
  "/home/peter/Desktop/tello_driver/src/tello_driver/msg/TelloStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tello_driver
)

### Generating Services
_generate_srv_lisp(tello_driver
  "/home/peter/Desktop/tello_driver/src/tello_driver/srv/MoveUp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tello_driver
)
_generate_srv_lisp(tello_driver
  "/home/peter/Desktop/tello_driver/src/tello_driver/srv/MoveDown.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tello_driver
)

### Generating Module File
_generate_module_lisp(tello_driver
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tello_driver
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(tello_driver_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(tello_driver_generate_messages tello_driver_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/peter/Desktop/tello_driver/src/tello_driver/srv/MoveUp.srv" NAME_WE)
add_dependencies(tello_driver_generate_messages_lisp _tello_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/Desktop/tello_driver/src/tello_driver/msg/TelloStatus.msg" NAME_WE)
add_dependencies(tello_driver_generate_messages_lisp _tello_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/Desktop/tello_driver/src/tello_driver/srv/MoveDown.srv" NAME_WE)
add_dependencies(tello_driver_generate_messages_lisp _tello_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tello_driver_genlisp)
add_dependencies(tello_driver_genlisp tello_driver_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tello_driver_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(tello_driver
  "/home/peter/Desktop/tello_driver/src/tello_driver/msg/TelloStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tello_driver
)

### Generating Services
_generate_srv_nodejs(tello_driver
  "/home/peter/Desktop/tello_driver/src/tello_driver/srv/MoveUp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tello_driver
)
_generate_srv_nodejs(tello_driver
  "/home/peter/Desktop/tello_driver/src/tello_driver/srv/MoveDown.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tello_driver
)

### Generating Module File
_generate_module_nodejs(tello_driver
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tello_driver
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(tello_driver_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(tello_driver_generate_messages tello_driver_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/peter/Desktop/tello_driver/src/tello_driver/srv/MoveUp.srv" NAME_WE)
add_dependencies(tello_driver_generate_messages_nodejs _tello_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/Desktop/tello_driver/src/tello_driver/msg/TelloStatus.msg" NAME_WE)
add_dependencies(tello_driver_generate_messages_nodejs _tello_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/Desktop/tello_driver/src/tello_driver/srv/MoveDown.srv" NAME_WE)
add_dependencies(tello_driver_generate_messages_nodejs _tello_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tello_driver_gennodejs)
add_dependencies(tello_driver_gennodejs tello_driver_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tello_driver_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(tello_driver
  "/home/peter/Desktop/tello_driver/src/tello_driver/msg/TelloStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tello_driver
)

### Generating Services
_generate_srv_py(tello_driver
  "/home/peter/Desktop/tello_driver/src/tello_driver/srv/MoveUp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tello_driver
)
_generate_srv_py(tello_driver
  "/home/peter/Desktop/tello_driver/src/tello_driver/srv/MoveDown.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tello_driver
)

### Generating Module File
_generate_module_py(tello_driver
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tello_driver
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(tello_driver_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(tello_driver_generate_messages tello_driver_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/peter/Desktop/tello_driver/src/tello_driver/srv/MoveUp.srv" NAME_WE)
add_dependencies(tello_driver_generate_messages_py _tello_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/Desktop/tello_driver/src/tello_driver/msg/TelloStatus.msg" NAME_WE)
add_dependencies(tello_driver_generate_messages_py _tello_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peter/Desktop/tello_driver/src/tello_driver/srv/MoveDown.srv" NAME_WE)
add_dependencies(tello_driver_generate_messages_py _tello_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tello_driver_genpy)
add_dependencies(tello_driver_genpy tello_driver_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tello_driver_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tello_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tello_driver
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(tello_driver_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(tello_driver_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(tello_driver_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(tello_driver_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tello_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tello_driver
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(tello_driver_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(tello_driver_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(tello_driver_generate_messages_eus nav_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(tello_driver_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tello_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tello_driver
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(tello_driver_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(tello_driver_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(tello_driver_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(tello_driver_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tello_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tello_driver
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(tello_driver_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(tello_driver_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(tello_driver_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(tello_driver_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tello_driver)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tello_driver\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tello_driver
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(tello_driver_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(tello_driver_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(tello_driver_generate_messages_py nav_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(tello_driver_generate_messages_py sensor_msgs_generate_messages_py)
endif()
