# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rt_gene: 2 messages, 0 services")

set(MSG_I_FLAGS "-Irt_gene:/home/godfrey/wheelchair/src/rt_gene/rt_gene/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rt_gene_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/godfrey/wheelchair/src/rt_gene/rt_gene/msg/MSG_SubjectImages.msg" NAME_WE)
add_custom_target(_rt_gene_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rt_gene" "/home/godfrey/wheelchair/src/rt_gene/rt_gene/msg/MSG_SubjectImages.msg" "sensor_msgs/Image:std_msgs/Header"
)

get_filename_component(_filename "/home/godfrey/wheelchair/src/rt_gene/rt_gene/msg/MSG_SubjectImagesList.msg" NAME_WE)
add_custom_target(_rt_gene_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rt_gene" "/home/godfrey/wheelchair/src/rt_gene/rt_gene/msg/MSG_SubjectImagesList.msg" "sensor_msgs/Image:rt_gene/MSG_SubjectImages:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(rt_gene
  "/home/godfrey/wheelchair/src/rt_gene/rt_gene/msg/MSG_SubjectImages.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rt_gene
)
_generate_msg_cpp(rt_gene
  "/home/godfrey/wheelchair/src/rt_gene/rt_gene/msg/MSG_SubjectImagesList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/home/godfrey/wheelchair/src/rt_gene/rt_gene/msg/MSG_SubjectImages.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rt_gene
)

### Generating Services

### Generating Module File
_generate_module_cpp(rt_gene
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rt_gene
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rt_gene_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rt_gene_generate_messages rt_gene_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/godfrey/wheelchair/src/rt_gene/rt_gene/msg/MSG_SubjectImages.msg" NAME_WE)
add_dependencies(rt_gene_generate_messages_cpp _rt_gene_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/godfrey/wheelchair/src/rt_gene/rt_gene/msg/MSG_SubjectImagesList.msg" NAME_WE)
add_dependencies(rt_gene_generate_messages_cpp _rt_gene_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rt_gene_gencpp)
add_dependencies(rt_gene_gencpp rt_gene_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rt_gene_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(rt_gene
  "/home/godfrey/wheelchair/src/rt_gene/rt_gene/msg/MSG_SubjectImages.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rt_gene
)
_generate_msg_eus(rt_gene
  "/home/godfrey/wheelchair/src/rt_gene/rt_gene/msg/MSG_SubjectImagesList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/home/godfrey/wheelchair/src/rt_gene/rt_gene/msg/MSG_SubjectImages.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rt_gene
)

### Generating Services

### Generating Module File
_generate_module_eus(rt_gene
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rt_gene
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(rt_gene_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(rt_gene_generate_messages rt_gene_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/godfrey/wheelchair/src/rt_gene/rt_gene/msg/MSG_SubjectImages.msg" NAME_WE)
add_dependencies(rt_gene_generate_messages_eus _rt_gene_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/godfrey/wheelchair/src/rt_gene/rt_gene/msg/MSG_SubjectImagesList.msg" NAME_WE)
add_dependencies(rt_gene_generate_messages_eus _rt_gene_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rt_gene_geneus)
add_dependencies(rt_gene_geneus rt_gene_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rt_gene_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(rt_gene
  "/home/godfrey/wheelchair/src/rt_gene/rt_gene/msg/MSG_SubjectImages.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rt_gene
)
_generate_msg_lisp(rt_gene
  "/home/godfrey/wheelchair/src/rt_gene/rt_gene/msg/MSG_SubjectImagesList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/home/godfrey/wheelchair/src/rt_gene/rt_gene/msg/MSG_SubjectImages.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rt_gene
)

### Generating Services

### Generating Module File
_generate_module_lisp(rt_gene
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rt_gene
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rt_gene_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rt_gene_generate_messages rt_gene_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/godfrey/wheelchair/src/rt_gene/rt_gene/msg/MSG_SubjectImages.msg" NAME_WE)
add_dependencies(rt_gene_generate_messages_lisp _rt_gene_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/godfrey/wheelchair/src/rt_gene/rt_gene/msg/MSG_SubjectImagesList.msg" NAME_WE)
add_dependencies(rt_gene_generate_messages_lisp _rt_gene_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rt_gene_genlisp)
add_dependencies(rt_gene_genlisp rt_gene_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rt_gene_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(rt_gene
  "/home/godfrey/wheelchair/src/rt_gene/rt_gene/msg/MSG_SubjectImages.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rt_gene
)
_generate_msg_nodejs(rt_gene
  "/home/godfrey/wheelchair/src/rt_gene/rt_gene/msg/MSG_SubjectImagesList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/home/godfrey/wheelchair/src/rt_gene/rt_gene/msg/MSG_SubjectImages.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rt_gene
)

### Generating Services

### Generating Module File
_generate_module_nodejs(rt_gene
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rt_gene
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(rt_gene_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(rt_gene_generate_messages rt_gene_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/godfrey/wheelchair/src/rt_gene/rt_gene/msg/MSG_SubjectImages.msg" NAME_WE)
add_dependencies(rt_gene_generate_messages_nodejs _rt_gene_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/godfrey/wheelchair/src/rt_gene/rt_gene/msg/MSG_SubjectImagesList.msg" NAME_WE)
add_dependencies(rt_gene_generate_messages_nodejs _rt_gene_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rt_gene_gennodejs)
add_dependencies(rt_gene_gennodejs rt_gene_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rt_gene_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(rt_gene
  "/home/godfrey/wheelchair/src/rt_gene/rt_gene/msg/MSG_SubjectImages.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rt_gene
)
_generate_msg_py(rt_gene
  "/home/godfrey/wheelchair/src/rt_gene/rt_gene/msg/MSG_SubjectImagesList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/home/godfrey/wheelchair/src/rt_gene/rt_gene/msg/MSG_SubjectImages.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rt_gene
)

### Generating Services

### Generating Module File
_generate_module_py(rt_gene
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rt_gene
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rt_gene_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rt_gene_generate_messages rt_gene_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/godfrey/wheelchair/src/rt_gene/rt_gene/msg/MSG_SubjectImages.msg" NAME_WE)
add_dependencies(rt_gene_generate_messages_py _rt_gene_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/godfrey/wheelchair/src/rt_gene/rt_gene/msg/MSG_SubjectImagesList.msg" NAME_WE)
add_dependencies(rt_gene_generate_messages_py _rt_gene_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rt_gene_genpy)
add_dependencies(rt_gene_genpy rt_gene_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rt_gene_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rt_gene)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rt_gene
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(rt_gene_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(rt_gene_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(rt_gene_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rt_gene)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rt_gene
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(rt_gene_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(rt_gene_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(rt_gene_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rt_gene)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rt_gene
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(rt_gene_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(rt_gene_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(rt_gene_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rt_gene)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rt_gene
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(rt_gene_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(rt_gene_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(rt_gene_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rt_gene)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rt_gene\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rt_gene
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rt_gene
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rt_gene/.+/__init__.pyc?$"
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(rt_gene_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(rt_gene_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(rt_gene_generate_messages_py geometry_msgs_generate_messages_py)
endif()
