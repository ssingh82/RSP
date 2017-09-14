#include <ros/ros.h>
#include <sensor_msgs/LaserScan.h>
#include <tf/transform_listener.h>
#include <string>

//params 
static std::string edumip_frame; //frame_id
static unsigned int num_readings = 200;
static sensor_msgs::LaserScan scan;
static ros::Publisher scan_pub;
double angle_range = 2*3.1415;
std::vector<std::string> edumip_frames;

void timerCallback(const ros::TimerEvent&)
{
   
    //create tf stuff
    static tf::TransformListener tf_listener;
    tf::StampedTransform transform;
    int angle_index;
    double angle;
    double distance;
    ros::Time current_time;	
 
    //initialize scan ranges
    for(unsigned int i = 0; i < num_readings; ++i){
      scan.ranges[i] = 3.0;

    } 

    try {
        for(size_t i=0; i < edumip_frames.size(); ++i) 
        {
            
  	    current_time = ros::Time::now();
  	    scan.header.stamp = current_time;
  	    
  	    //find the tf transform between edumip and other edumip
               //std::string name_str;
               //if (j == 2) { name_str = "/edumip_body/2"; }
               //else if (j == 3) { name_str = "/edumip_body/3"; }
               //else if (j == 4) { name_str = "/edumip_body/4"; }
               //else if (j == 5) { name_str = "/edumip_body/5"; }
              //std::string name_str;
              //name_str = "/edumip_body/";
              //std::string num;
              //num = std::to_string(j);
              //name_str += num;
  	    tf_listener.waitForTransform(edumip_frame, edumip_frames[i], current_time, ros::Duration(3.0));
  	    tf_listener.lookupTransform(edumip_frame, edumip_frames[i], current_time, transform);
  	    //repeat for other edumips edumipbody/3, etc.

  	    angle = atan2(transform.getOrigin().y(), transform.getOrigin().x()) + angle_range/2.0;
  	    //ROS_ERROR("intermediate: %G", (angle * num_readings)); 
  	    angle_index = (int)(((double) num_readings * angle)/angle_range);
  		
  	    distance = sqrt(pow(transform.getOrigin().x(), 2) + pow(transform.getOrigin().y(), 2));

  	    int edumip_range = 1;

  	    //ROS_ERROR("Angle: %G", angle);
  	    //ROS_ERROR("Angle Index: %d", angle_index);
  	    //ROS_ERROR("Distance: %G", distance); 

	    for (int i = -edumip_range; i <= edumip_range; i++){
		    if ((angle_index + i) >= 0 && (angle_index + i) < num_readings) {
			     scan.ranges[angle_index + i] = distance;
		    }
	    }
    }
    scan_pub.publish(scan);

    } catch (tf::TransformException &ex) {
	      ROS_ERROR("%s", ex.what());
	     ros::Duration(1.0).sleep();
    }
	

  }




int main(int argc, char** argv){
  ros::init(argc, argv, "laser_scan_publisher");

  ros::NodeHandle n;
  //char* topic_name = (char*) ("/edumip_scan/");
  std::string edumip_topic = argv[2];
  scan_pub = n.advertise<sensor_msgs::LaserScan>(edumip_topic, 100);
  //scan_pub = n.advertise<sensor_msgs::LaserScan>("edumip_scan", 5);


  //initialize framelist
  //edumip_frames.push_back("/edumip_body/1");
  //edumip_frames.push_back("/edumip_body/2");
  //edumip_frames.push_back("/edumip_body/3");
  //edumip_frames.push_back("/edumip_body/4");
  //edumip_frames.push_back("/edumip_body/5");

  edumip_frames.push_back("edumip1/edumip_body");
  edumip_frames.push_back("edumip2/edumip_body");
  edumip_frames.push_back("edumip3/edumip_body");
  edumip_frames.push_back("edumip4/edumip_body");
  edumip_frames.push_back("edumip5/edumip_body");

  //frame_id, edumip_body/1, etc.
  edumip_frame = edumip_frames[atoi(argv[1]) - 1]; //edumip num
  ROS_ERROR("index num: %d", atoi(argv[1]));

  //create list of other edumips
  edumip_frames.erase(edumip_frames.begin() + atoi(argv[1]) - 1);

  //create the laser_scan
  scan.header.frame_id = edumip_frame; 

  scan.angle_min = -angle_range/2.0;
  scan.angle_max = angle_range/2.0;
  scan.angle_increment = angle_range / (num_readings);
  scan.time_increment = 0; //no time inc, because we collect all readings simultaneously

  scan.range_min = 0.0;
  scan.range_max = 10;

  scan.ranges.resize(num_readings);
  scan.intensities.resize(num_readings);

  ros::Timer timer = n.createTimer(ros::Duration(0.1), timerCallback);

  ros::spin();

  return 0;
}



/*copied from tutorial

  unsigned int num_readings = 100;
  double laser_frequency = 40;
  double ranges[num_readings];
  double intensities[num_readings];

  int count = 0;
  ros::Rate r(1.0);
  while(n.ok()){
    //generate some fake data for our laser scan
    for(unsigned int i = 0; i < num_readings; ++i){
      ranges[i] = count;
      intensities[i] = 100 + count;
    }
    ros::Time scan_time = ros::Time::now();

    //populate the LaserScan message
    sensor_msgs::LaserScan scan;
    scan.header.stamp = scan_time;
    scan.header.frame_id = "laser_frame";


    scan.angle_min = -1.57;
    scan.angle_max = 1.57;
    scan.angle_increment = 3.14 / num_readings;
    scan.time_increment = (1 / laser_frequency) / (num_readings);
    scan.range_min = 0.0;
    scan.range_max = 100.0;

    scan.ranges.resize(num_readings);
    scan.intensities.resize(num_readings);
    for(unsigned int i = 0; i < num_readings; ++i){
      scan.ranges[i] = ranges[i];
      scan.intensities[i] = intensities[i];
    }

    scan_pub.publish(scan);
    ++count;
    r.sleep();
  }

}
*/
