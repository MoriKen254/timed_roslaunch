cmake_minimum_required(VERSION 2.8.3)
project(timed_roslaunch)
find_package(catkin REQUIRED COMPONENTS
  rospy
)

# Install
foreach(dir launch scripts test)
  install(DIRECTORY ${dir}/
    DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/${dir})
endforeach(dir)

# Test
if (CATKIN_ENABLE_TESTING)
  find_package(roslaunch REQUIRED)
  roslaunch_add_file_check(launch)
endif()

