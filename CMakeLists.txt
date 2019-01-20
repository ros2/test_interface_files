cmake_minimum_required(VERSION 3.5)

project(test_interface_files NONE)

find_package(ament_cmake_core REQUIRED)

set(msg_files
  "msg/BoundedArrayPrimitivesNested.msg"
  "msg/BoundedArrayNested.msg"
  "msg/BoundedArrayPrimitives.msg"
  "msg/DynamicArrayNested.msg"
  "msg/DynamicArrayPrimitives.msg"
  "msg/DynamicArrayPrimitivesNested.msg"
  "msg/DynamicArrayStaticArrayPrimitivesNested.msg"
  "msg/Empty.msg"
  "msg/Nested.msg"
  "msg/Primitives.msg"
  "msg/StaticArrayNested.msg"
  "msg/StaticArrayPrimitives.msg"
  "msg/StaticArrayPrimitivesNested.msg"
)

set(srv_files
  "srv/Empty.srv"
  "srv/Primitives.srv"
)

set(action_files
  "action/Fibonacci.action"
)

install(
  FILES ${msg_files}
  DESTINATION share/${PROJECT_NAME}/msg
)
install(
  FILES ${srv_files}
  DESTINATION share/${PROJECT_NAME}/srv
)
install(
  FILES ${action_files}
  DESTINATION share/${PROJECT_NAME}/action
)

ament_package(
  CONFIG_EXTRAS ${PROJECT_NAME}-extras.cmake.in
)
