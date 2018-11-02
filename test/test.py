#!/usr/bin/env python
# coding: utf-8

import rospy
import sys

rospy.init_node('talker', anonymous=True)
rospy.loginfo("This is a test script.")
# print an argument recieved from test launch file
rospy.loginfo("Argument1: " + sys.argv[1])

