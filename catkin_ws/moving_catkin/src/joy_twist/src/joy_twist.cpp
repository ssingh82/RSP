#include <ros/ros.h>
#include <geometry_msgs/Twist.h>
#include <sensor_msgs/Joy.h>

class JoyTwist
{
public:
  JoyTwist();
  geometry_msgs::Twist twist_;

private:
  void joyCallback(const sensor_msgs::Joy::ConstPtr& joy);
  void timerCallback(const ros::TimerEvent&);

  ros::NodeHandle nh_;
  int linear_, angular_;
  double l_scale_, a_scale_;

  ros::Publisher vel_pub_;
  ros::Subscriber joy_sub_;

  //initialize timer
  ros::Timer timer_;
};

JoyTwist::JoyTwist():
  linear_(1),
  angular_(2)
{
  nh_.param("axis_linear", linear_, linear_);
  nh_.param("axis_angular", angular_, angular_);
  nh_.param("scale_angular", a_scale_, a_scale_);
  nh_.param("scale_linear", l_scale_, l_scale_);
  vel_pub_ = nh_.advertise<geometry_msgs::Twist>("edumip/cmd", 1);

  joy_sub_ = nh_.subscribe<sensor_msgs::Joy>("joy", 10, &JoyTwist::joyCallback, this);

  timer_ = nh_.createTimer(ros::Duration(0.1), &JoyTwist::timerCallback, this);

  twist_.linear.x = 0;
  twist_.angular.z = 0;
}

void JoyTwist::joyCallback(const sensor_msgs::Joy::ConstPtr& joy)
{
  twist_.linear.x = l_scale_*joy->axes[linear_];
  twist_.angular.z = a_scale_*joy->axes[angular_];
}

void JoyTwist::timerCallback(const ros::TimerEvent&)
{
  vel_pub_.publish(this->twist_);
}

int main(int argc, char** argv)
{
  ros::init(argc, argv, "joy_twist");
  JoyTwist joy_twist;
  ros::spin();
}
