#include <ros/ros.h>
#include <tf/transform_listener.h>
#include <sensor_msgs/Joy.h>

class MultiParser
{
public:
  MultiParser();
  tf::Transform trans_;
  ros::Time stamp_;

private:
  void tfCallback(const geometry_msgs/TransformStamped& msg);
  void timerCallback(const ros::TimerEvent&);

  ros::NodeHandle nh_;
  string ar_frame_id_;

  ros::Publisher tf_pub_;
  ros::Subscriber tf_sub_;

  //initialize timer
  ros::Timer timer_;
};

MultiParser::MultiParser():
  ar_frame_id_("")
{
  nh_.param("ar_frame_id", ar_frame_id_, ar_frame_id_);
  tf_pub_ = nh_.advertise<geometry_msgs::TransformStamped>("edumip/state/camera", 1);

  tf_sub_ = nh_.subscribe<geometry_msgs::TransformStamped>("tf", 10, &MultiParser::tfCallback, this);
}

void MultiParser::

