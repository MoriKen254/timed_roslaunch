# timed_roslaunch [![Build Status](https://travis-ci.org/MoriKen254/timed_roslaunch.svg?branch)](https://travis-ci.org/MoriKen254/timed_roslaunch) 

This script can delay the launch of a roslaunch file.

## Usage
This script can delay the launch of a roslaunch file.
Make sure that the file is executable (chmod +x timed_roslaunch.sh)

### Run it from command line

```bash
rosrun timed_roslaunch timed_roslaunch.sh [number of seconds to delay] [rospkg] [roslaunch file] [arguments (optional)]
```

Or

```bash
roslaunch timed_roslaunch timed_roslaunch.launch time:=[number of second to delay] pkg:=[rospkg] file:=[roslaunch file] value:=[arguments (optional)]
```

Example:

```bash
rosrun timed_roslaunch timed_roslaunch.sh 2 turtlebot_navigation amcl_demo.launch initial_pose_x:=17.0 initial_pose_y:=17.0"
```

### Run it from another roslaunch file

```xml
<launch>
  <include file="$(find timed_roslaunch)/launch/timed_roslaunch.launch">
    <arg name="time" value="2" />
    <arg name="pkg" value="turtlebot_navigation" />
    <arg name="file" value="amcl_demo.launch" />
    <arg name="value" value="initial_pose_x:=17.0 initial_pose_y:=17.0" />
    <arg name="node_name" value="timed_roslaunch" /> <!-- This is optional jBrgment -->
  </include>
</launch>
```

Or

```xml
<launch>
  <node pkg="timed_roslaunch" type="timed_roslaunch.sh"
    args="2 turtlebot_navigation amcl_demo.launch initial_pose_x:=17.0 initial_pose_y:=17.0"
    name="timed_roslaunch" output="screen" />
</launch>
```

## LICENSE
This software is released under the BSD 3-Clause License, see LICENSE.txt.
