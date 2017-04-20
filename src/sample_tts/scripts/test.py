#!/usr/bin/env python
import roslib; roslib.load_manifest('sample_tts')
import rospy, os, sys
from sound_play.msg import SoundRequest
from sound_play.libsoundplay import SoundClient

if __name__ == '__main__':
	rospy.init_node('soundplay_test', anonymous=True)
	soundhandle = SoundClient()
	rospy.sleep(1)

	s = soundhandle.voiceSound("Face detected.")
	s.play()
	rospy.sleep(3)
	


