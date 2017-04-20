#include "ros/ros.h"
#include "exercise1/Sum.h"

#include <sstream>
#include <time.h>
#include <stdlib.h>

int main(int argc, char **argv)
{
  ros::init(argc, argv, "our_client_node");
  ros::NodeHandle n;

  ros::ServiceClient client = n.serviceClient<exercise1::Sum>("our_service_node/string");

  exercise1::Sum srv;
  std::stringstream ss_out;
	std::stringstream ss_in;

	srand (time(NULL));
  std::vector<int> array;
  for (int i = 0; i < 10; i++)
		array.push_back(rand() % 100);

	srv.request.array = array;

  ros::service::waitForService("our_service_node/string", 1000);

//	for(std::vector<int>::iterator it = array.begin(); it != array.end(); ++it)
//		ss_out << *it << " ";

//	std::string s = ss_out.str();

//  ROS_INFO("Sending array: %s", s.c_str());

  if (client.call(srv))
  {
		for(std::vector<int>::iterator it = srv.response.array.begin(); it != srv.response.array.end(); ++it)
			ss_in << *it << " ";

		std::string s = ss_in.str();

		ROS_INFO("CLI: For array: %s", s.c_str());
		ROS_INFO("CLI: The service returned sum: %d", srv.response.sum);
  }
  else
  {
    ROS_ERROR("Failed to call service");
    return 1;
  }

  return 0;
}
