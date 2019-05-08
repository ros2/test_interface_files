^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Changelog for package test_interface_files
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

0.7.0 (2019-05-08)
------------------
* add WStrings message (`#4 <https://github.com/ros2/test_interface_files/issues/4>`_)
* Refactor interface messages (`#3 <https://github.com/ros2/test_interface_files/pull/3>`_)
    * Rename messages towards consolidation
    * Refactor message fields
        * Add fields to cover test cases
        * Move string fields to Strings.msg
        * Comment out fields that have issues to be resolved
    * Remove old interface files
* Rename messages to align with IDL terminology
* rename package, remove all dependencies, and only install the interface files
* move package content into the root of the repo
* Merge: test_msgs package from ros2/rcl_interfaces
  The commit messages have been rewritten to reference the tickets in the original repository
