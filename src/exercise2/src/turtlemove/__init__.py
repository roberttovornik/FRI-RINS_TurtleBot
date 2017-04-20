#!/usr/bin/env python
# -*- Mode: Python; indent-tabs-mode: nil; c-basic-offset: 2; tab-width: 2 -*- *

import roslib; roslib.load_manifest('exercise2')
import rospy
import math
from geometry_msgs.msg import Twist
from std_msgs.msg import String

def rectangle_movement(step):

  twist = Twist()
  twist.linear.x = 0.4
  step = step % 20

  if step % 5 == 0:
    twist.linear.x = 0
    twist.angular.z = (90.0 / 360.0) * 2.0 * math.pi

  return twist

def triangle_movement(step):
  
  twist = Twist()
  twist.linear.x = 0.4
  step = step % 15

  if step % 5 == 0:
    twist.linear.x = 0
    twist.angular.z = (120.0 / 360.0) * 2.0 * math.pi

  return twist

def circle_movement(step):

  twist = Twist()
  twist.linear.x = math.pi / 10.0
  twist.angular.z = math.pi / 10.0

  return twist


movement_type = rectangle_movement


def movement_dict(x):
  return {
        'rectangle': rectangle_movement,
        'triangle': triangle_movement,
        'circle': circle_movement,
    }.get(x, rectangle_movement)  # rectangle is default


def change_movement(msg):
  global movement_type

  movement_type = movement_dict(msg.data)
  rospy.loginfo("Movement: %s", movement_type)


def movement():
  global movement_type

  pub = rospy.Publisher('cmd_vel', Twist, queue_size = 1000)
  # For the turtle simulation map the topic to /turtle1/cmd_vel
  # For the turtlebot simulation and Turtlebot map the topic to /cmd_vel_mux/input/navi

  rospy.Subscriber('/move_type', String, change_movement)
  rospy.init_node('movement')

  r = rospy.Rate(1)

  step = 0.0
  while not rospy.is_shutdown():
    twist = movement_type(step)
    pub.publish(twist)
    step = step + 1.0
    r.sleep()

