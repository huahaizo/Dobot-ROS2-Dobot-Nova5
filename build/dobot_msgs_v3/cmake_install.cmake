# Install script for directory: /home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/huahai/dobot_ws/install/dobot_msgs_v3")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ament_index/resource_index/rosidl_interfaces" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/ament_cmake_index/share/ament_index/resource_index/rosidl_interfaces/dobot_msgs_v3")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/dobot_msgs_v3/dobot_msgs_v3" TYPE DIRECTORY FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_generator_c/dobot_msgs_v3/" REGEX "/[^/]*\\.h$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/environment" TYPE FILE FILES "/opt/ros/humble/lib/python3.10/site-packages/ament_package/template/environment_hook/library_path.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/environment" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/ament_cmake_environment_hooks/library_path.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdobot_msgs_v3__rosidl_generator_c.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdobot_msgs_v3__rosidl_generator_c.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdobot_msgs_v3__rosidl_generator_c.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/libdobot_msgs_v3__rosidl_generator_c.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdobot_msgs_v3__rosidl_generator_c.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdobot_msgs_v3__rosidl_generator_c.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdobot_msgs_v3__rosidl_generator_c.so"
         OLD_RPATH "/opt/ros/humble/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdobot_msgs_v3__rosidl_generator_c.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/dobot_msgs_v3/dobot_msgs_v3" TYPE DIRECTORY FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_typesupport_fastrtps_c/dobot_msgs_v3/" REGEX "/[^/]*\\.cpp$" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdobot_msgs_v3__rosidl_typesupport_fastrtps_c.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdobot_msgs_v3__rosidl_typesupport_fastrtps_c.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdobot_msgs_v3__rosidl_typesupport_fastrtps_c.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/libdobot_msgs_v3__rosidl_typesupport_fastrtps_c.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdobot_msgs_v3__rosidl_typesupport_fastrtps_c.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdobot_msgs_v3__rosidl_typesupport_fastrtps_c.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdobot_msgs_v3__rosidl_typesupport_fastrtps_c.so"
         OLD_RPATH "/home/huahai/dobot_ws/build/dobot_msgs_v3:/opt/ros/humble/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdobot_msgs_v3__rosidl_typesupport_fastrtps_c.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/dobot_msgs_v3/dobot_msgs_v3" TYPE DIRECTORY FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_generator_cpp/dobot_msgs_v3/" REGEX "/[^/]*\\.hpp$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/dobot_msgs_v3/dobot_msgs_v3" TYPE DIRECTORY FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_typesupport_fastrtps_cpp/dobot_msgs_v3/" REGEX "/[^/]*\\.cpp$" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdobot_msgs_v3__rosidl_typesupport_fastrtps_cpp.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdobot_msgs_v3__rosidl_typesupport_fastrtps_cpp.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdobot_msgs_v3__rosidl_typesupport_fastrtps_cpp.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/libdobot_msgs_v3__rosidl_typesupport_fastrtps_cpp.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdobot_msgs_v3__rosidl_typesupport_fastrtps_cpp.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdobot_msgs_v3__rosidl_typesupport_fastrtps_cpp.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdobot_msgs_v3__rosidl_typesupport_fastrtps_cpp.so"
         OLD_RPATH "/opt/ros/humble/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdobot_msgs_v3__rosidl_typesupport_fastrtps_cpp.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/dobot_msgs_v3/dobot_msgs_v3" TYPE DIRECTORY FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_typesupport_introspection_c/dobot_msgs_v3/" REGEX "/[^/]*\\.h$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdobot_msgs_v3__rosidl_typesupport_introspection_c.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdobot_msgs_v3__rosidl_typesupport_introspection_c.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdobot_msgs_v3__rosidl_typesupport_introspection_c.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/libdobot_msgs_v3__rosidl_typesupport_introspection_c.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdobot_msgs_v3__rosidl_typesupport_introspection_c.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdobot_msgs_v3__rosidl_typesupport_introspection_c.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdobot_msgs_v3__rosidl_typesupport_introspection_c.so"
         OLD_RPATH "/home/huahai/dobot_ws/build/dobot_msgs_v3:/opt/ros/humble/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdobot_msgs_v3__rosidl_typesupport_introspection_c.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdobot_msgs_v3__rosidl_typesupport_c.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdobot_msgs_v3__rosidl_typesupport_c.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdobot_msgs_v3__rosidl_typesupport_c.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/libdobot_msgs_v3__rosidl_typesupport_c.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdobot_msgs_v3__rosidl_typesupport_c.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdobot_msgs_v3__rosidl_typesupport_c.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdobot_msgs_v3__rosidl_typesupport_c.so"
         OLD_RPATH "/home/huahai/dobot_ws/build/dobot_msgs_v3:/opt/ros/humble/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdobot_msgs_v3__rosidl_typesupport_c.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/dobot_msgs_v3/dobot_msgs_v3" TYPE DIRECTORY FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_typesupport_introspection_cpp/dobot_msgs_v3/" REGEX "/[^/]*\\.hpp$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdobot_msgs_v3__rosidl_typesupport_introspection_cpp.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdobot_msgs_v3__rosidl_typesupport_introspection_cpp.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdobot_msgs_v3__rosidl_typesupport_introspection_cpp.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/libdobot_msgs_v3__rosidl_typesupport_introspection_cpp.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdobot_msgs_v3__rosidl_typesupport_introspection_cpp.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdobot_msgs_v3__rosidl_typesupport_introspection_cpp.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdobot_msgs_v3__rosidl_typesupport_introspection_cpp.so"
         OLD_RPATH "/opt/ros/humble/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdobot_msgs_v3__rosidl_typesupport_introspection_cpp.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdobot_msgs_v3__rosidl_typesupport_cpp.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdobot_msgs_v3__rosidl_typesupport_cpp.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdobot_msgs_v3__rosidl_typesupport_cpp.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/libdobot_msgs_v3__rosidl_typesupport_cpp.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdobot_msgs_v3__rosidl_typesupport_cpp.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdobot_msgs_v3__rosidl_typesupport_cpp.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdobot_msgs_v3__rosidl_typesupport_cpp.so"
         OLD_RPATH "/opt/ros/humble/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdobot_msgs_v3__rosidl_typesupport_cpp.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/environment" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/ament_cmake_environment_hooks/pythonpath.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/environment" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/ament_cmake_environment_hooks/pythonpath.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/local/lib/python3.10/dist-packages/dobot_msgs_v3-0.0.0-py3.10.egg-info" TYPE DIRECTORY FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/ament_cmake_python/dobot_msgs_v3/dobot_msgs_v3.egg-info/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/local/lib/python3.10/dist-packages/dobot_msgs_v3" TYPE DIRECTORY FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_generator_py/dobot_msgs_v3/" REGEX "/[^/]*\\.pyc$" EXCLUDE REGEX "/\\_\\_pycache\\_\\_$" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(
        COMMAND
        "/usr/bin/python3" "-m" "compileall"
        "/home/huahai/dobot_ws/install/dobot_msgs_v3/local/lib/python3.10/dist-packages/dobot_msgs_v3"
      )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/huahai/dobot_ws/build/dobot_msgs_v3/dobot_msgs_v3__py/cmake_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/local/lib/python3.10/dist-packages/dobot_msgs_v3/dobot_msgs_v3_s__rosidl_typesupport_fastrtps_c.cpython-310-x86_64-linux-gnu.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/local/lib/python3.10/dist-packages/dobot_msgs_v3/dobot_msgs_v3_s__rosidl_typesupport_fastrtps_c.cpython-310-x86_64-linux-gnu.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/local/lib/python3.10/dist-packages/dobot_msgs_v3/dobot_msgs_v3_s__rosidl_typesupport_fastrtps_c.cpython-310-x86_64-linux-gnu.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/local/lib/python3.10/dist-packages/dobot_msgs_v3" TYPE SHARED_LIBRARY FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_generator_py/dobot_msgs_v3/dobot_msgs_v3_s__rosidl_typesupport_fastrtps_c.cpython-310-x86_64-linux-gnu.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/local/lib/python3.10/dist-packages/dobot_msgs_v3/dobot_msgs_v3_s__rosidl_typesupport_fastrtps_c.cpython-310-x86_64-linux-gnu.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/local/lib/python3.10/dist-packages/dobot_msgs_v3/dobot_msgs_v3_s__rosidl_typesupport_fastrtps_c.cpython-310-x86_64-linux-gnu.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/local/lib/python3.10/dist-packages/dobot_msgs_v3/dobot_msgs_v3_s__rosidl_typesupport_fastrtps_c.cpython-310-x86_64-linux-gnu.so"
         OLD_RPATH "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_generator_py/dobot_msgs_v3:/home/huahai/dobot_ws/build/dobot_msgs_v3:/opt/ros/humble/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/local/lib/python3.10/dist-packages/dobot_msgs_v3/dobot_msgs_v3_s__rosidl_typesupport_fastrtps_c.cpython-310-x86_64-linux-gnu.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/local/lib/python3.10/dist-packages/dobot_msgs_v3/dobot_msgs_v3_s__rosidl_typesupport_introspection_c.cpython-310-x86_64-linux-gnu.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/local/lib/python3.10/dist-packages/dobot_msgs_v3/dobot_msgs_v3_s__rosidl_typesupport_introspection_c.cpython-310-x86_64-linux-gnu.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/local/lib/python3.10/dist-packages/dobot_msgs_v3/dobot_msgs_v3_s__rosidl_typesupport_introspection_c.cpython-310-x86_64-linux-gnu.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/local/lib/python3.10/dist-packages/dobot_msgs_v3" TYPE SHARED_LIBRARY FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_generator_py/dobot_msgs_v3/dobot_msgs_v3_s__rosidl_typesupport_introspection_c.cpython-310-x86_64-linux-gnu.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/local/lib/python3.10/dist-packages/dobot_msgs_v3/dobot_msgs_v3_s__rosidl_typesupport_introspection_c.cpython-310-x86_64-linux-gnu.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/local/lib/python3.10/dist-packages/dobot_msgs_v3/dobot_msgs_v3_s__rosidl_typesupport_introspection_c.cpython-310-x86_64-linux-gnu.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/local/lib/python3.10/dist-packages/dobot_msgs_v3/dobot_msgs_v3_s__rosidl_typesupport_introspection_c.cpython-310-x86_64-linux-gnu.so"
         OLD_RPATH "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_generator_py/dobot_msgs_v3:/home/huahai/dobot_ws/build/dobot_msgs_v3:/opt/ros/humble/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/local/lib/python3.10/dist-packages/dobot_msgs_v3/dobot_msgs_v3_s__rosidl_typesupport_introspection_c.cpython-310-x86_64-linux-gnu.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/local/lib/python3.10/dist-packages/dobot_msgs_v3/dobot_msgs_v3_s__rosidl_typesupport_c.cpython-310-x86_64-linux-gnu.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/local/lib/python3.10/dist-packages/dobot_msgs_v3/dobot_msgs_v3_s__rosidl_typesupport_c.cpython-310-x86_64-linux-gnu.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/local/lib/python3.10/dist-packages/dobot_msgs_v3/dobot_msgs_v3_s__rosidl_typesupport_c.cpython-310-x86_64-linux-gnu.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/local/lib/python3.10/dist-packages/dobot_msgs_v3" TYPE SHARED_LIBRARY FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_generator_py/dobot_msgs_v3/dobot_msgs_v3_s__rosidl_typesupport_c.cpython-310-x86_64-linux-gnu.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/local/lib/python3.10/dist-packages/dobot_msgs_v3/dobot_msgs_v3_s__rosidl_typesupport_c.cpython-310-x86_64-linux-gnu.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/local/lib/python3.10/dist-packages/dobot_msgs_v3/dobot_msgs_v3_s__rosidl_typesupport_c.cpython-310-x86_64-linux-gnu.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/local/lib/python3.10/dist-packages/dobot_msgs_v3/dobot_msgs_v3_s__rosidl_typesupport_c.cpython-310-x86_64-linux-gnu.so"
         OLD_RPATH "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_generator_py/dobot_msgs_v3:/home/huahai/dobot_ws/build/dobot_msgs_v3:/opt/ros/humble/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/local/lib/python3.10/dist-packages/dobot_msgs_v3/dobot_msgs_v3_s__rosidl_typesupport_c.cpython-310-x86_64-linux-gnu.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdobot_msgs_v3__rosidl_generator_py.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdobot_msgs_v3__rosidl_generator_py.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdobot_msgs_v3__rosidl_generator_py.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_generator_py/dobot_msgs_v3/libdobot_msgs_v3__rosidl_generator_py.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdobot_msgs_v3__rosidl_generator_py.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdobot_msgs_v3__rosidl_generator_py.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdobot_msgs_v3__rosidl_generator_py.so"
         OLD_RPATH "/home/huahai/dobot_ws/build/dobot_msgs_v3:/opt/ros/humble/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdobot_msgs_v3__rosidl_generator_py.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/msg" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/msg/RobotStatus.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/msg" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/msg/ToolVectorActual.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/AccJ.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/AccL.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/AO.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/AOExecute.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/Arc.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/Arch.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/BrakeControl.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/Circle.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/ClearError.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/Continues.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/ContinueScript.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/CP.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/DI.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/DigitalOutputs.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/DisableRobot.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/DO.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/DOExecute.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/DOGroup.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/EmergencyStop.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/EnableRobot.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/GetAngle.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/GetCoils.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/GetErrorID.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/GetHoldRegs.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/GetInBits.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/GetInRegs.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/GetPose.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/InverseSolution.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/JointMovJ.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/Jump.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/LimZ.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/LoadSwitch.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/ModbusClose.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/ModbusCreate.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/MoveJog.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/MovJ.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/MovJExt.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/MovJIO.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/MovL.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/MovLIO.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/Pause.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/PauseScript.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/PayLoad.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/PositiveSolution.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/PowerOn.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/RelJointMovJ.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/RelMovJ.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/RelMovJUser.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/RelMovJTool.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/RelMovL.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/RelMovLUser.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/RelMovLTool.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/ResetRobot.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/RobotMode.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/RunScript.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/ServoJ.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/ServoP.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/SetArmOrientation.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/SetCoils.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/SetCollisionLevel.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/SetHoldRegs.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/SetObstacleAvoid.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/SetPayload.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/SetSafeSkin.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/SpeedFactor.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/SpeedJ.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/SpeedL.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/StartDrag.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/StartFCTrace.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/StartPath.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/StartTrace.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/StopDrag.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/StopmoveJog.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/StopScript.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/Sync.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/SyncAll.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/Tool.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/ToolDI.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/ToolDO.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/ToolDOExecute.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/User.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_adapter/dobot_msgs_v3/srv/Wait.idl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/msg" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/msg/RobotStatus.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/msg" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/msg/ToolVectorActual.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/AccJ.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/AccJ_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/AccJ_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/AccL.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/AccL_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/AccL_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/AO.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/AO_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/AO_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/AOExecute.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/AOExecute_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/AOExecute_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/Arc.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/Arc_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/Arc_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/Arch.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/Arch_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/Arch_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/BrakeControl.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/BrakeControl_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/BrakeControl_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/Circle.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/Circle_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/Circle_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/ClearError.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/ClearError_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/ClearError_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/Continues.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/Continues_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/Continues_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/ContinueScript.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/ContinueScript_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/ContinueScript_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/CP.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/CP_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/CP_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/DI.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/DI_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/DI_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/DigitalOutputs.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/DigitalOutputs_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/DigitalOutputs_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/DisableRobot.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/DisableRobot_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/DisableRobot_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/DO.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/DO_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/DO_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/DOExecute.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/DOExecute_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/DOExecute_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/DOGroup.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/DOGroup_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/DOGroup_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/EmergencyStop.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/EmergencyStop_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/EmergencyStop_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/EnableRobot.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/EnableRobot_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/EnableRobot_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/GetAngle.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/GetAngle_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/GetAngle_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/GetCoils.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/GetCoils_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/GetCoils_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/GetErrorID.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/GetErrorID_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/GetErrorID_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/GetHoldRegs.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/GetHoldRegs_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/GetHoldRegs_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/GetInBits.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/GetInBits_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/GetInBits_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/GetInRegs.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/GetInRegs_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/GetInRegs_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/GetPose.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/GetPose_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/GetPose_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/InverseSolution.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/InverseSolution_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/InverseSolution_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/JointMovJ.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/JointMovJ_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/JointMovJ_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/Jump.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/Jump_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/Jump_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/LimZ.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/LimZ_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/LimZ_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/LoadSwitch.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/LoadSwitch_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/LoadSwitch_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/ModbusClose.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/ModbusClose_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/ModbusClose_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/ModbusCreate.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/ModbusCreate_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/ModbusCreate_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/MoveJog.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/MoveJog_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/MoveJog_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/MovJ.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/MovJ_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/MovJ_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/MovJExt.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/MovJExt_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/MovJExt_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/MovJIO.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/MovJIO_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/MovJIO_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/MovL.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/MovL_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/MovL_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/MovLIO.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/MovLIO_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/MovLIO_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/Pause.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/Pause_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/Pause_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/PauseScript.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/PauseScript_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/PauseScript_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/PayLoad.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/PayLoad_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/PayLoad_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/PositiveSolution.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/PositiveSolution_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/PositiveSolution_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/PowerOn.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/PowerOn_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/PowerOn_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/RelJointMovJ.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/RelJointMovJ_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/RelJointMovJ_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/RelMovJ.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/RelMovJ_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/RelMovJ_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/RelMovJUser.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/RelMovJUser_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/RelMovJUser_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/RelMovJTool.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/RelMovJTool_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/RelMovJTool_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/RelMovL.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/RelMovL_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/RelMovL_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/RelMovLUser.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/RelMovLUser_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/RelMovLUser_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/RelMovLTool.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/RelMovLTool_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/RelMovLTool_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/ResetRobot.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/ResetRobot_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/ResetRobot_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/RobotMode.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/RobotMode_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/RobotMode_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/RunScript.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/RunScript_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/RunScript_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/ServoJ.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/ServoJ_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/ServoJ_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/ServoP.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/ServoP_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/ServoP_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/SetArmOrientation.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/SetArmOrientation_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/SetArmOrientation_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/SetCoils.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/SetCoils_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/SetCoils_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/SetCollisionLevel.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/SetCollisionLevel_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/SetCollisionLevel_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/SetHoldRegs.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/SetHoldRegs_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/SetHoldRegs_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/SetObstacleAvoid.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/SetObstacleAvoid_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/SetObstacleAvoid_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/SetPayload.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/SetPayload_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/SetPayload_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/SetSafeSkin.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/SetSafeSkin_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/SetSafeSkin_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/SpeedFactor.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/SpeedFactor_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/SpeedFactor_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/SpeedJ.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/SpeedJ_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/SpeedJ_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/SpeedL.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/SpeedL_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/SpeedL_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/StartDrag.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/StartDrag_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/StartDrag_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/StartFCTrace.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/StartFCTrace_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/StartFCTrace_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/StartPath.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/StartPath_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/StartPath_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/StartTrace.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/StartTrace_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/StartTrace_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/StopDrag.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/StopDrag_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/StopDrag_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/StopmoveJog.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/StopmoveJog_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/StopmoveJog_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/StopScript.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/StopScript_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/StopScript_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/Sync.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/Sync_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/Sync_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/SyncAll.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/SyncAll_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/SyncAll_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/Tool.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/Tool_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/Tool_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/ToolDI.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/ToolDI_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/ToolDI_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/ToolDO.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/ToolDO_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/ToolDO_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/ToolDOExecute.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/ToolDOExecute_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/ToolDOExecute_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/User.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/User_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/User_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/srv/Wait.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/Wait_Request.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/srv" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/srv/Wait_Response.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ament_index/resource_index/package_run_dependencies" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/ament_cmake_index/share/ament_index/resource_index/package_run_dependencies/dobot_msgs_v3")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ament_index/resource_index/parent_prefix_path" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/ament_cmake_index/share/ament_index/resource_index/parent_prefix_path/dobot_msgs_v3")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/environment" TYPE FILE FILES "/opt/ros/humble/share/ament_cmake_core/cmake/environment_hooks/environment/ament_prefix_path.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/environment" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/ament_cmake_environment_hooks/ament_prefix_path.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/environment" TYPE FILE FILES "/opt/ros/humble/share/ament_cmake_core/cmake/environment_hooks/environment/path.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/environment" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/ament_cmake_environment_hooks/path.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/ament_cmake_environment_hooks/local_setup.bash")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/ament_cmake_environment_hooks/local_setup.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/ament_cmake_environment_hooks/local_setup.zsh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/ament_cmake_environment_hooks/local_setup.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/ament_cmake_environment_hooks/package.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ament_index/resource_index/packages" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/ament_cmake_index/share/ament_index/resource_index/packages/dobot_msgs_v3")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/cmake/export_dobot_msgs_v3__rosidl_generator_cExport.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/cmake/export_dobot_msgs_v3__rosidl_generator_cExport.cmake"
         "/home/huahai/dobot_ws/build/dobot_msgs_v3/CMakeFiles/Export/share/dobot_msgs_v3/cmake/export_dobot_msgs_v3__rosidl_generator_cExport.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/cmake/export_dobot_msgs_v3__rosidl_generator_cExport-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/cmake/export_dobot_msgs_v3__rosidl_generator_cExport.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/cmake" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/CMakeFiles/Export/share/dobot_msgs_v3/cmake/export_dobot_msgs_v3__rosidl_generator_cExport.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^()$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/cmake" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/CMakeFiles/Export/share/dobot_msgs_v3/cmake/export_dobot_msgs_v3__rosidl_generator_cExport-noconfig.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/cmake/export_dobot_msgs_v3__rosidl_typesupport_fastrtps_cExport.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/cmake/export_dobot_msgs_v3__rosidl_typesupport_fastrtps_cExport.cmake"
         "/home/huahai/dobot_ws/build/dobot_msgs_v3/CMakeFiles/Export/share/dobot_msgs_v3/cmake/export_dobot_msgs_v3__rosidl_typesupport_fastrtps_cExport.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/cmake/export_dobot_msgs_v3__rosidl_typesupport_fastrtps_cExport-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/cmake/export_dobot_msgs_v3__rosidl_typesupport_fastrtps_cExport.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/cmake" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/CMakeFiles/Export/share/dobot_msgs_v3/cmake/export_dobot_msgs_v3__rosidl_typesupport_fastrtps_cExport.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^()$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/cmake" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/CMakeFiles/Export/share/dobot_msgs_v3/cmake/export_dobot_msgs_v3__rosidl_typesupport_fastrtps_cExport-noconfig.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/cmake/export_dobot_msgs_v3__rosidl_generator_cppExport.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/cmake/export_dobot_msgs_v3__rosidl_generator_cppExport.cmake"
         "/home/huahai/dobot_ws/build/dobot_msgs_v3/CMakeFiles/Export/share/dobot_msgs_v3/cmake/export_dobot_msgs_v3__rosidl_generator_cppExport.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/cmake/export_dobot_msgs_v3__rosidl_generator_cppExport-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/cmake/export_dobot_msgs_v3__rosidl_generator_cppExport.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/cmake" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/CMakeFiles/Export/share/dobot_msgs_v3/cmake/export_dobot_msgs_v3__rosidl_generator_cppExport.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/cmake/export_dobot_msgs_v3__rosidl_typesupport_fastrtps_cppExport.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/cmake/export_dobot_msgs_v3__rosidl_typesupport_fastrtps_cppExport.cmake"
         "/home/huahai/dobot_ws/build/dobot_msgs_v3/CMakeFiles/Export/share/dobot_msgs_v3/cmake/export_dobot_msgs_v3__rosidl_typesupport_fastrtps_cppExport.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/cmake/export_dobot_msgs_v3__rosidl_typesupport_fastrtps_cppExport-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/cmake/export_dobot_msgs_v3__rosidl_typesupport_fastrtps_cppExport.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/cmake" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/CMakeFiles/Export/share/dobot_msgs_v3/cmake/export_dobot_msgs_v3__rosidl_typesupport_fastrtps_cppExport.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^()$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/cmake" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/CMakeFiles/Export/share/dobot_msgs_v3/cmake/export_dobot_msgs_v3__rosidl_typesupport_fastrtps_cppExport-noconfig.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/cmake/dobot_msgs_v3__rosidl_typesupport_introspection_cExport.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/cmake/dobot_msgs_v3__rosidl_typesupport_introspection_cExport.cmake"
         "/home/huahai/dobot_ws/build/dobot_msgs_v3/CMakeFiles/Export/share/dobot_msgs_v3/cmake/dobot_msgs_v3__rosidl_typesupport_introspection_cExport.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/cmake/dobot_msgs_v3__rosidl_typesupport_introspection_cExport-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/cmake/dobot_msgs_v3__rosidl_typesupport_introspection_cExport.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/cmake" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/CMakeFiles/Export/share/dobot_msgs_v3/cmake/dobot_msgs_v3__rosidl_typesupport_introspection_cExport.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^()$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/cmake" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/CMakeFiles/Export/share/dobot_msgs_v3/cmake/dobot_msgs_v3__rosidl_typesupport_introspection_cExport-noconfig.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/cmake/dobot_msgs_v3__rosidl_typesupport_cExport.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/cmake/dobot_msgs_v3__rosidl_typesupport_cExport.cmake"
         "/home/huahai/dobot_ws/build/dobot_msgs_v3/CMakeFiles/Export/share/dobot_msgs_v3/cmake/dobot_msgs_v3__rosidl_typesupport_cExport.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/cmake/dobot_msgs_v3__rosidl_typesupport_cExport-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/cmake/dobot_msgs_v3__rosidl_typesupport_cExport.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/cmake" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/CMakeFiles/Export/share/dobot_msgs_v3/cmake/dobot_msgs_v3__rosidl_typesupport_cExport.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^()$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/cmake" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/CMakeFiles/Export/share/dobot_msgs_v3/cmake/dobot_msgs_v3__rosidl_typesupport_cExport-noconfig.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/cmake/dobot_msgs_v3__rosidl_typesupport_introspection_cppExport.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/cmake/dobot_msgs_v3__rosidl_typesupport_introspection_cppExport.cmake"
         "/home/huahai/dobot_ws/build/dobot_msgs_v3/CMakeFiles/Export/share/dobot_msgs_v3/cmake/dobot_msgs_v3__rosidl_typesupport_introspection_cppExport.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/cmake/dobot_msgs_v3__rosidl_typesupport_introspection_cppExport-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/cmake/dobot_msgs_v3__rosidl_typesupport_introspection_cppExport.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/cmake" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/CMakeFiles/Export/share/dobot_msgs_v3/cmake/dobot_msgs_v3__rosidl_typesupport_introspection_cppExport.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^()$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/cmake" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/CMakeFiles/Export/share/dobot_msgs_v3/cmake/dobot_msgs_v3__rosidl_typesupport_introspection_cppExport-noconfig.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/cmake/dobot_msgs_v3__rosidl_typesupport_cppExport.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/cmake/dobot_msgs_v3__rosidl_typesupport_cppExport.cmake"
         "/home/huahai/dobot_ws/build/dobot_msgs_v3/CMakeFiles/Export/share/dobot_msgs_v3/cmake/dobot_msgs_v3__rosidl_typesupport_cppExport.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/cmake/dobot_msgs_v3__rosidl_typesupport_cppExport-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/cmake/dobot_msgs_v3__rosidl_typesupport_cppExport.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/cmake" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/CMakeFiles/Export/share/dobot_msgs_v3/cmake/dobot_msgs_v3__rosidl_typesupport_cppExport.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^()$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/cmake" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/CMakeFiles/Export/share/dobot_msgs_v3/cmake/dobot_msgs_v3__rosidl_typesupport_cppExport-noconfig.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/cmake/export_dobot_msgs_v3__rosidl_generator_pyExport.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/cmake/export_dobot_msgs_v3__rosidl_generator_pyExport.cmake"
         "/home/huahai/dobot_ws/build/dobot_msgs_v3/CMakeFiles/Export/share/dobot_msgs_v3/cmake/export_dobot_msgs_v3__rosidl_generator_pyExport.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/cmake/export_dobot_msgs_v3__rosidl_generator_pyExport-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/cmake/export_dobot_msgs_v3__rosidl_generator_pyExport.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/cmake" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/CMakeFiles/Export/share/dobot_msgs_v3/cmake/export_dobot_msgs_v3__rosidl_generator_pyExport.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^()$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/cmake" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/CMakeFiles/Export/share/dobot_msgs_v3/cmake/export_dobot_msgs_v3__rosidl_generator_pyExport-noconfig.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/cmake" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/rosidl_cmake-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/cmake" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/ament_cmake_export_dependencies/ament_cmake_export_dependencies-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/cmake" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/ament_cmake_export_include_directories/ament_cmake_export_include_directories-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/cmake" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/ament_cmake_export_libraries/ament_cmake_export_libraries-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/cmake" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/ament_cmake_export_targets/ament_cmake_export_targets-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/cmake" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/rosidl_cmake_export_typesupport_targets-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/cmake" TYPE FILE FILES "/home/huahai/dobot_ws/build/dobot_msgs_v3/rosidl_cmake/rosidl_cmake_export_typesupport_libraries-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3/cmake" TYPE FILE FILES
    "/home/huahai/dobot_ws/build/dobot_msgs_v3/ament_cmake_core/dobot_msgs_v3Config.cmake"
    "/home/huahai/dobot_ws/build/dobot_msgs_v3/ament_cmake_core/dobot_msgs_v3Config-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dobot_msgs_v3" TYPE FILE FILES "/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_msgs_v3/package.xml")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/huahai/dobot_ws/build/dobot_msgs_v3/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
