#include "ros/ros.h"
#include "exercise1/Sum.h"

#include <string>
#include <iostream>
#include <algorithm>

bool manipulate(exercise1::Sum::Request  &req,
         exercise1::Sum::Response &res)
{
	std::stringstream ss_in;
	for(std::vector<int>::iterator it = req.array.begin(); it != req.array.end(); ++it)
		ss_in << *it << " ";

	std::string s = ss_in.str();
	ROS_INFO("SER: Received array: %s", s.c_str());

  res.sum = 0;
	res.array.resize(req.array.size());
	res.array = req.array;
  
  for(std::vector<int>::iterator it = req.array.begin(); it != req.array.end(); ++it)
    res.sum += *it;

  return true;
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "our_service_node");
  ros::NodeHandle n;

  ros::ServiceServer service = n.advertiseService("our_service_node/string", manipulate);
  ROS_INFO("SER: Waiting for array!");
  ros::spin();

  return 0;
}
