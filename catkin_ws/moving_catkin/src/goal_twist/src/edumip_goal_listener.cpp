#include "ros/ros.h"
#include "geometry_msgs/Twist.h"
#include "tf/transform_listener.h"

//Twist that is to be published on /edumip/cmd
static ros::Publisher edumip_twist;

static float tolerance = 0.05;

static std::string goal_num;

static std::string edumip_num;
/*
void joyCallback(const sensor_msgs::Joy::ConstPtr& joy_msg) 
{

	//convert joystick msg to twist
	twist.linear.x = -joy_msg->axes[1]; //joystick axis 1
	twist.angular.z = joy_msg->axes[0]; 
	
}
*/

void timerCallback(const ros::TimerEvent&)
{

	static tf::TransformListener tf_listener;
	float distance;
	float angle;
	double max_vel;

	try {

		// CONFIRM IF THESE NAMES ARE CORRECT
		tf::StampedTransform transform;

		tf_listener.lookupTransform(edumip_num, goal_num, ros::Time(0), transform);
		geometry_msgs::Twist twist;

		distance = sqrt(pow(transform.getOrigin().x(), 2) + pow(transform.getOrigin().y(), 2));
		angle = atan2(transform.getOrigin().y(), transform.getOrigin().x());

		if (distance > tolerance) {
			//twist.linear.x = -0.5 * distance;
			twist.angular.z = 4.0 * (angle);

			edumip_twist.publish(twist);
		}

	} catch (tf::TransformException &ex) {
		ROS_ERROR("%s", ex.what());
		ros::Duration(1.0).sleep();
	}

}


int main(int argc, char** argv) 
{
	ros::init(argc, argv, "goal_twist_listener");
	ros::NodeHandle n;

	//edumip twist publisher
	edumip_twist = n.advertise<geometry_msgs::Twist>("/edumip/cmd", 10);

	//get Params
	goal_num = argv[2];
	edumip_num = argv[1];	
 
	//create a subscriber
	//ros::Subscriber sub_joy = n.subscribe("/joy", 100, joyCallback);


	//create a timer callback at 10 hz
	ros::Timer timer = n.createTimer(ros::Duration(0.1), timerCallback);

	ros::spin();

	return 0;

}
