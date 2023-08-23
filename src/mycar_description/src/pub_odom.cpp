#include "ros/ros.h"
#include "nav_msgs/Odometry.h"
#include "tf/transform_broadcaster.h"
#include <geometry_msgs/Pose2D.h>
static int i = 0;
geometry_msgs::Pose2D position;
tf::Quaternion q;
void poseCallback(geometry_msgs::Pose2DConstPtr msg)
{
    position.x = msg->x;
    position.y = msg->y;
    position.theta = msg->theta;
    q = tf::createQuaternionFromYaw(position.theta);
}
int main(int argc, char *argv[])
{
    setlocale(LC_ALL,"");
    ros::init(argc,argv,"pub_odom");
    ros::NodeHandle nh;
    ros::Publisher pub = nh.advertise<nav_msgs::Odometry>("odom",10);
    ros::Subscriber sub = nh.subscribe<geometry_msgs::Pose2D>("pose2D",10,poseCallback);
    nav_msgs::Odometry odom_;
    tf::TransformBroadcaster odom_broadcaster;
    geometry_msgs::TransformStamped odom_trans;
    odom_.header.frame_id = "/odom";
    odom_.header.seq = 0;
    odom_.child_frame_id = "base_footprint";
    
    odom_trans.header.frame_id = "/odom";
    odom_trans.header.seq = 0;
    odom_trans.child_frame_id = "base_footprint";

    ROS_INFO("start pub_odom");
    while(1)
    {
        odom_.header.seq++;
        odom_trans.header.seq++;
        odom_.header.stamp = ros::Time::now();
        odom_trans.header.stamp = ros::Time::now();
        //
        odom_.pose.pose.position.x = position.x;
        odom_.pose.pose.position.y = position.y;
        odom_.pose.pose.position.z = 0;
        odom_.pose.pose.orientation.x = q.x();
        odom_.pose.pose.orientation.y = q.y();
        odom_.pose.pose.orientation.z = q.z();
        odom_.pose.pose.orientation.w = q.w();
        //
        odom_.twist.twist.linear.x = 0;
        odom_.twist.twist.linear.y = 0;
        odom_.twist.twist.linear.z = 0;
        odom_.twist.twist.angular.x = 0;
        odom_.twist.twist.angular.y = 0;
        odom_.twist.twist.angular.z = 0;
        //
        odom_trans.transform.translation.x = position.x;
        odom_trans.transform.translation.y = position.y;
        odom_trans.transform.translation.z = 0;
        odom_trans.transform.rotation.x = 0;
        odom_trans.transform.rotation.y = 0;
        odom_trans.transform.rotation.z = 0;
        odom_trans.transform.rotation.w = 1;

        pub.publish(odom_);
        odom_broadcaster.sendTransform(odom_trans);
        ros::Rate(100).sleep();
    }
    return 0;
}
