#!/usr/bin/env python
# coding: utf-8

import rospy
import copy
import math
import sys
import numpy as np
from sensor_msgs.msg import LaserScan

NAME_NODE = 'lower_step_detector'

rospy.init_node('talker', anonymous=True)
rospy.loginfo("This is a test script.")
# print an argument recieved from test launch file
rospy.loginfo("Argument1: " + sys.argv[1])

