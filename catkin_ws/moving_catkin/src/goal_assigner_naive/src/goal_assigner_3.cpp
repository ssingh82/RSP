#include <ros/ros.h>
#include <tf/transform_broadcaster.h>
#include <geometry_msgs/PoseStamped.h>

#include <string>


//double x[5]={0.152,-0.035,0.53,0.365,-0.25};
//double y[5]={0.3,0.63,0.85,0.571,0.82};
double x[5]={0.61,-0.05,-0.29,0.38,0.19};
double y[5]={0.0,0.0,0.0,0.0,0.0};
//double q[5][4]={{0.1, -0.045, 0.73, 0.66}, {0.039,-0.13,0.70,0.69}, { 0.024 ,0.027,-0.69,0.71}, {0.053,-0.27,0.68, 0.67}, {0.064,0.001,-0.66,0.74}};
std::vector<std::string> edumip;
std::vector<ros::Publisher> goal_pubs;

static ros::Publisher goal_pub_1; 
static ros::Publisher goal_pub_2; 
static ros::Publisher goal_pub_3; 
static ros::Publisher goal_pub_4; 
static ros::Publisher goal_pub_5; 


void callback(const ros::TimerEvent& event)
{
  static tf::TransformBroadcaster br;
  tf::Transform transform;
  geometry_msgs::PoseStamped goal_pose;
  ros::Time current_time;

  for(int i = 0; i < 5; i++) {


    current_time = ros::Time::now();
    transform.setOrigin( tf::Vector3(x[i], y[i], 0.0) );
    tf::Quaternion quat;
    //quat = tf::Quaternion(q[i][0], q[i][1], q[i][2], q[i][3]);
    quat = tf::createQuaternionFromRPY(0, 0, 0);
    transform.setRotation(quat);

    br.sendTransform(tf::StampedTransform(transform, current_time, "world", edumip[i]));

    goal_pose.header.stamp = current_time;
    goal_pose.header.frame_id = "world";
    goal_pose.header.seq = 1;

    tf::poseTFToMsg(transform, goal_pose.pose);
    goal_pubs[i].publish(goal_pose);

  }
}


int main(int argc, char** argv){
  edumip.push_back("goal/1"); 
  edumip.push_back("goal/2");
  edumip.push_back("goal/3");
  edumip.push_back("goal/4");
  edumip.push_back("goal/5");
  ros::init(argc, argv, "goal_assigner");
  /*if (argc != 2){ROS_ERROR("need turtle name as argument"); return -1;};
  
  turtle_name = argv[1];*/
  ros::NodeHandle node;

  goal_pub_1 = node.advertise<geometry_msgs::PoseStamped>("/edumip1/move_base_simple/goal", 10);
  goal_pub_2 = node.advertise<geometry_msgs::PoseStamped>("/edumip2/move_base_simple/goal", 10);
  goal_pub_3 = node.advertise<geometry_msgs::PoseStamped>("/edumip3/move_base_simple/goal", 10);
  goal_pub_4 = node.advertise<geometry_msgs::PoseStamped>("/edumip4/move_base_simple/goal", 10);
  goal_pub_5 = node.advertise<geometry_msgs::PoseStamped>("/edumip5/move_base_simple/goal", 10);

  goal_pubs.push_back(goal_pub_1);
  goal_pubs.push_back(goal_pub_2);
  goal_pubs.push_back(goal_pub_3);
  goal_pubs.push_back(goal_pub_4);
  goal_pubs.push_back(goal_pub_5);



  //ros::Subscriber sub = node.subscribe(turtle_name+"/pose", 10, &poseCallback);
  ros::Timer timer = node.createTimer(ros::Duration(10.0), &callback);
  ros::spin();
  return 0;
};
