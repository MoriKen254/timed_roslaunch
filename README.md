# timed_roslaunch
refer to [Can I run a bash script using roslaunch?](http://answers.ros.org/question/51474/can-i-run-a-bash-script-using-roslaunch/)

## Usage
This script can delay the launch of a roslaunch file.
Make sure that the file is executable (chmod +x timed_roslaunch.sh)

### Run it from command line

```bash
./script/timed_roslaunch.sh [number of seconds to delay] [rospkg] [roslaunch file] [arguments (optional)]
```

Or

```bash
rosrun timed_roslaunch timed_roslaunch.sh [number of seconds to delay] [rospkg] [roslaunch file] [arguments (optional)]"
```

Example:

```bash
rosrun timed_roslaunch timed_roslaunch.sh 2 turtlebot_navigation amcl_demo.launch initial_pose_x:=17.0 initial_pose_y:=17.0"
```

### Run it from another roslaunch file

```xml
<launch>
  <arg name="initial_pose_y" default="17.0" />
  <node pkg="timed_roslaunch" type="timed_roslaunch.sh"
    args="2 turtlebot_navigation amcl_demo.launch initial_pose_x:=17.0 initial_pose_y:=$(arg initial_pose_y)"
    name="timed_roslaunch" output="screen">
  </node>
</launch>
```
