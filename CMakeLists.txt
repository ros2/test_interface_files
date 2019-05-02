cmake_minimum_required(VERSION 3.5)

project(test_interface_files NONE)

find_package(ament_cmake_core REQUIRED)

set(msg_files
  "msg/Arrays.msg"
  "msg/BasicTypes.msg"
  "msg/BoundedSequences.msg"
  "msg/Constants.msg"
  "msg/Defaults.msg"
  "msg/Empty.msg"
  "msg/MultiNested.msg"
  "msg/Nested.msg"
  "msg/Strings.msg"
  "msg/UnboundedSequences.msg"
  "msg/WStrings.msg"
)

set(srv_files
  "srv/Empty.srv"
  "srv/BasicTypes.srv"
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
