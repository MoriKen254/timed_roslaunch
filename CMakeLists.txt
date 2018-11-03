cmake_minimum_required(VERSION 2.8.3)
project(timed_roslaunch)
find_package(catkin REQUIRED)

catkin_package()

# Install
install(PROGRAMS
    scripts/timed_roslaunch.sh
    DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

install(FILES
    launch/timed_roslaunch.launch
    launch/timed_roslaunch_test.launch
    DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)

# Test
if (CATKIN_ENABLE_TESTING)
  find_package(roslaunch REQUIRED)
  roslaunch_add_file_check(launch)
endif()

