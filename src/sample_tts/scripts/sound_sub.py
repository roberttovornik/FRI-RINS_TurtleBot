#!/usr/bin/env python
import roslib; roslib.load_manifest('sample_tts')
import rospy, os, sys
from sound_play.msg import SoundRequest
from sound_play.libsoundplay import SoundClient
from std_msgs.msg import String

def foundCallback(data):
	rospy.loginfo(rospy.get_caller_id() + "I heard %s", data.data)
	s = soundhandle.voiceSound(data.data)
	s.play()
	rospy.sleep(1)


if __name__ == '__main__':
	rospy.init_node('soundplay_test', anonymous=True)
	soundhandle = SoundClient()
	rospy.sleep(1)
	
	rospy.Subscriber("sound_listener", String, foundCallback)	
	
	while not rospy.is_shutdown():	
		rospy.spin()
	
