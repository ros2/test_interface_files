cmake_minimum_required(VERSION 3.5)

project(test_interface_files NONE)

find_package(ament_cmake_core REQUIRED)

set(msg_files
  "msg/ArrayNested.msg"
  "msg/ArrayPrimitives.msg"
  "msg/ArrayPrimitivesNested.msg"
  "msg/BoundedSequencePrimitivesNested.msg"
  "msg/BoundedSequenceNested.msg"
  "msg/BoundedSequencePrimitives.msg"
  "msg/BoundedString.msg"
  "msg/Empty.msg"
  "msg/Nested.msg"
  "msg/Primitives.msg"
  "msg/PrimitivesDefault.msg"
  "msg/PrimitivesConstants.msg"
  "msg/UnboundedSequenceNested.msg"
  "msg/UnboundedSequencePrimitives.msg"
  "msg/UnboundedSequencePrimitivesNested.msg"
  "msg/UnboundedSequenceArrayPrimitivesNested.msg"
  "msg/Various.msg"
)

set(srv_files
  "srv/Empty.srv"
  "srv/Primitives.srv"
)

set(action_files
  "action/Fibonacci.action"
)

set(interface_install_dir "share/${PROJECT_NAME}")

install(
  FILES ${msg_files}
  DESTINATION ${interface_install_dir}/msg
)
install(
  FILES ${srv_files}
  DESTINATION ${interface_install_dir}/srv
)
install(
  FILES ${action_files}
  DESTINATION ${interface_install_dir}/action
)

ament_package(
  CONFIG_EXTRAS ${PROJECT_NAME}-extras.cmake.in
)
