#include "ros/ros.h"
#include "sensor_msgs/JointState.h"
#include "geometry_msgs/Quaternion.h"
#include "edumip_msgs/EduMipState.h"
#include "tf/transform_listener.h"
#include "geometry_msgs/TransformStamped.h"
#include "nav_msgs/Odometry.h"

static ros::Publisher joint_state_pub;
static ros::Publisher odom_nav_pub;
static std::string base_frame;

void stateCallback(const edumip_msgs::EduMipState::ConstPtr& state_msg) 
{

        ros::Time current_time = ros::Time::now();

	sensor_msgs::JointState joint_state_msg;

	joint_state_msg.header.stamp = current_time;

	joint_state_msg.name.resize(2);
	joint_state_msg.name[0] = "jointL";
	joint_state_msg.name[1] = "jointR";

	joint_state_msg.position.resize(2);
	joint_state_msg.position[0] = state_msg->wheel_angle_L;
	joint_state_msg.position[1] = state_msg->wheel_angle_R;
	joint_state_pub.publish(joint_state_msg);

	//IF USING MOVE BASE, UNCOMMENT
	static tf::TransformListener tf_listener;
	tf::StampedTransform transform;
	
	try {
	   tf_listener.lookupTransform("/world", base_frame, ros::Time(0), transform);

		
	   //Odom navigation message
	   nav_msgs::Odometry odom_nav_msg;
	   geometry_msgs::Quaternion odom_quat;

	   odom_nav_msg.header.stamp = current_time;
	   odom_nav_msg.header.frame_id = "world";

	   odom_nav_msg.pose.pose.position.x = transform.getOrigin().x();
	   odom_nav_msg.pose.pose.position.y = transform.getOrigin().y();
	   odom_nav_msg.pose.pose.position.z = transform.getOrigin().z();
	   
          tf::quaternionTFToMsg(transform.getRotation(), odom_quat);
	  odom_nav_msg.pose.pose.orientation = odom_quat;

	  odom_nav_msg.child_frame_id = base_frame;
	  odom_nav_msg.twist.twist.linear.x = state_msg->setpoint_phi_dot;
	  odom_nav_msg.twist.twist.angular.z = state_msg->setpoint_gamma_dot;

	  odom_nav_pub.publish(odom_nav_msg);
	  } catch (tf::TransformException &ex) {
		ROS_ERROR("%s", ex.what());
		ros::Duration(1.0).sleep();
	  }

}



int main(int argc, char** argv) 
{
	ros::init(argc, argv, "edumip_nav_publisher");
	ros::NodeHandle n;

	base_frame = argv[1];
	//static std::string odom_topic = argv[2];
	//static std::string state_topic = argv[3];
	//static std::string js_topic = argv[4];

	//initialize publisher
	joint_state_pub = n.advertise<sensor_msgs::JointState>("joint_states", 100);
	odom_nav_pub = n.advertise<nav_msgs::Odometry>("odom", 100);	
	//create a subscriber
	ros::Subscriber edumip_state_sub = n.subscribe("state", 10, stateCallback);

	ros::spin();

	return 0;

}
