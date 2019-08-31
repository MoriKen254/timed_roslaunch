#!/bin/bash          

# BSD 3-Clause License
# https://opensource.org/licenses/BSD-3-Clause
#
# Copyright (c) 2016, Masaru Morita
# All rights reserved.

# --------------------------------------------------------------------
# Script to delay the launch of a roslaunch file
#
# Usage: sh timed_roslaunch.sh [number of seconds to delay] [rospkg] [roslaunch file]
# --------------------------------------------------------------------

showHelp() {
    echo 
    echo "This script can delay the launch of a roslaunch file"
    echo "Make sure that the file is executable (chmod +x timed_roslaunch.sh)"
    echo 
    echo "Run it from command line:"
    echo 
    echo "Usage: ./script/timed_roslaunch.sh [number of seconds to delay] [rospkg] [roslaunch file] [arguments (optional)]"
    echo "Or: rosrun timed_roslaunch timed_roslaunch.sh [number of seconds to delay] [rospkg] [roslaunch file] [arguments (optional)]"
    echo "Example: rosrun timed_roslaunch timed_roslaunch.sh 2 turtlebot_navigation amcl_demo.launch initial_pose_x:=17.0 initial_pose_y:=17.0"
    echo 
    echo "Or run it from another roslaunch file:"
    echo 
    echo '<launch>'
    echo '  <arg name="initial_pose_y" default="17.0" />'
    echo '  <node pkg="timed_launch" type="timed_roslaunch.sh"'
    echo '    args="2 turtlebot_navigation amcl_demo.launch initial_pose_x:=17.0 initial_pose_y:=$(arg initial_pose_y)"'
    echo '    name="timed_roslaunch" output="screen">'
    echo '  </node>'
    echo '</launch>'
}

if [ $# -lt 3 -o "$1" = "-h" ]; then
    showHelp
else 
    echo "start wait for $1 seconds"
    sleep $1
    echo "end wait for $1 seconds"

    shift # The sleep time is droped
        echo "now running 'roslaunch $@'"
    roslaunch "$@"
fi
