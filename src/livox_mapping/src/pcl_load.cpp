#include<ros/ros.h>
#include<pcl/point_cloud.h>
#include<pcl_conversions/pcl_conversions.h>
#include<sensor_msgs/PointCloud2.h>
#include<pcl/io/pcd_io.h>

int main(int argc, char *argv[])
{
    ros::init(argc, argv, "pcl_load");
    ros::NodeHandle nh;
    ros::Publisher pcl_pub = nh.advertise<sensor_msgs::PointCloud2>("/pcl_output",10);
    pcl::PointCloud<pcl::PointXYZ> cloud;
    sensor_msgs::PointCloud2 output;
    pcl::io::loadPCDFile ("/home/chenshuo/Documents/surf.pcd", cloud);
    pcl::toROSMsg(cloud, output);
    output.header.frame_id = "/livox_frame";
    output.header.stamp = ros::Time::now();
    ros::Rate loop_rate(5);
    while(ros::ok())
    {
        pcl_pub.publish(output);
        ROS_INFO("123");
        ros::spinOnce();
        loop_rate.sleep();
    }
    return 0;
}