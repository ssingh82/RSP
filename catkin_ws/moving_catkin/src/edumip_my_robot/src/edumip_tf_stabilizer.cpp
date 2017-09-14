#include "ros/ros.h"
#include "geometry_msgs/Twist.h"
#include "tf/transform_listener.h"
#include "tf/transform_broadcaster.h"

static std::string laser_num;

static std::string edumip_num;

void timerCallback(const ros::TimerEvent&)
{

	static tf::TransformListener tf_listener;
	static tf::TransformBroadcaster tf_broadcaster;
	tf::Transform edumip_base;
	double yaw;
	try {

		// CONFIRM IF THESE NAMES ARE CORRECT
		tf::StampedTransform transform;

		tf_listener.lookupTransform("/world", laser_num, ros::Time(0), transform);
	
 		edumip_base.setOrigin(tf::Vector3(transform.getOrigin().x(), transform.getOrigin().y(), 0.035));
		
		yaw = tf::getYaw(transform.getRotation());
		tf::Quaternion q;
		q.setRPY(0, 0, yaw);
		edumip_base.setRotation(q);
				
		tf_broadcaster.sendTransform(tf::StampedTransform(edumip_base, ros::Time::now(), "/world", edumip_num));
		

	} catch (tf::TransformException &ex) {
		ROS_ERROR("%s", ex.what());
		ros::Duration(1.0).sleep();
	}

}


int main(int argc, char** argv) 
{
	ros::init(argc, argv, "tf_laser_stabilizer");
	ros::NodeHandle n;

	//get Params
	laser_num = argv[2];
	edumip_num = argv[1];	
 
	//create a timer callback at 10 hz
	ros::Timer timer = n.createTimer(ros::Duration(0.1), timerCallback);

	ros::spin();

	return 0;

}
