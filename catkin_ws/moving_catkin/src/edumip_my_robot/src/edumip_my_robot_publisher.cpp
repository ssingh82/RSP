#include "ros/ros.h"
#include "sensor_msgs/JointState.h"
#include "edumip_msgs/EduMipState.h"
#include "tf/transform_broadcaster.h"
#include "geometry_msgs/TransformStamped.h"
//#include "nav_msgs/Odometry.h"

static boost::shared_ptr<tf::TransformBroadcaster> tf_pt;
static ros::Publisher joint_state_pub;

void stateCallback(const edumip_msgs::EduMipState::ConstPtr& state_msg) 
{
	
	sensor_msgs::JointState joint_state_msg;
	geometry_msgs::TransformStamped world_to_base;
	double body_angle;

	joint_state_msg.header.stamp = ros::Time::now();

	joint_state_msg.name.resize(2);
	joint_state_msg.name[0] = "jointL";
	joint_state_msg.name[1] = "jointR";

	joint_state_msg.position.resize(2);
	joint_state_msg.position[0] = state_msg->wheel_angle_L;
	joint_state_msg.position[1] = state_msg->wheel_angle_R;
	
	joint_state_pub.publish(joint_state_msg);

	
	//now the tf transform
	
	world_to_base.header.frame_id = "world";
	world_to_base.child_frame_id = "edumip_body";
	world_to_base.header.stamp = ros::Time::now();
	world_to_base.transform.translation.x = -state_msg->body_frame_easting;
	world_to_base.transform.translation.y = -state_msg->body_frame_northing;
	world_to_base.transform.translation.z = 0.034; //offset by wheel radius

	body_angle = 0.26 + state_msg->theta; //tilt angle

	world_to_base.transform.rotation = tf::createQuaternionMsgFromRollPitchYaw(0, body_angle, -state_msg->body_frame_heading + 1.57);

	(*tf_pt).sendTransform(world_to_base);
	
	//IF USING MOVE BASE, UNCOMMENT
	
	/*	//Odom navigation message
	nav_msgs::Odometry odom_nav_msg;
	odom_nav_msg.header.stamp = current_time;
	odom_nav_msg.header.frame_id = "world"

	odom_nav_msg.pose.pose.position.x = -state_msg->body_frame_easting;
	odom_nav_msg.pose.pose.position.y = -state_msg->body_frame_northing;
	odom_nav_msg.pose.pose.position.z = 0.0;
	odom_nav_msg.pose.pose.orientation = odom_quat;

	odom_nav_msg.child_frame_id = "edumip_body";
	odom_nav_msg.twist.twist.linear.x = state_msg->setpoint_phi_dot
	odom_nav_msg.twist.twist.angular.z = state_msg->setpoint_gamma_dot

	odom_nav_pub.publish(odom_nav_msg);
	
	*/

}



int main(int argc, char** argv) 
{
	ros::init(argc, argv, "edumip_my_robot_publisher");
	ros::NodeHandle n;


	tf_pt.reset(new tf::TransformBroadcaster());

	//initialize publisher
	joint_state_pub = n.advertise<sensor_msgs::JointState>("/joint_states", 100);
	
	//create a subscriber
	ros::Subscriber edumip_state_sub = n.subscribe("/edumip/state", 10, stateCallback);

	ros::spin();

	return 0;

}
