#include "ros/ros.h"
#include "serial/serial.h"
#include "std_msgs/String.h"
#include "std_msgs/Int8.h"
#include "geometry_msgs/Twist.h"
#include <vector>

geometry_msgs::Twist cmd_vel;
int v_x,v_y;
double w_z;
char DATA_TX_BUFF[100];
void cmd_velCallback(geometry_msgs::TwistConstPtr msg)
{
    cmd_vel.linear.x = msg->linear.x;
    cmd_vel.linear.y = msg->linear.y;
    cmd_vel.linear.z = msg->linear.z;
    cmd_vel.angular.x = msg->angular.x;
    cmd_vel.angular.y = msg->angular.y;
    cmd_vel.angular.z = msg->angular.z;
    v_x = int(cmd_vel.linear.x * 100);
    v_y = int(cmd_vel.linear.y * 100);
    w_z = cmd_vel.angular.z;
    snprintf(DATA_TX_BUFF, 100, "vel|0|% .3d|% .3d|% .2f|", v_x, v_y, w_z);
}
int main(int argc, char *argv[])
{
    setlocale(LC_ALL,"");
    ros::init(argc,argv,"cmd_com");
    ros::NodeHandle nh;
    ros::Subscriber cmd_vel_sub = nh.subscribe("cmd_vel",10,cmd_velCallback);
    serial::Serial com_gimbal;
    serial::Timeout to = serial::Timeout::simpleTimeout(1000);
    com_gimbal.setPort("/dev/ttyUSB0");
    com_gimbal.setBaudrate(115200);
    com_gimbal.setTimeout(to);
    com_gimbal.open();
    if(com_gimbal.isOpen())
    {
        ROS_INFO("com_gimbal is open");
    }
    else
    {
        ROS_INFO("com_gimbal is close");
    }
    ros::Rate loop_rate(50);
    while(ros::ok())
    {
        com_gimbal.write(DATA_TX_BUFF);
        loop_rate.sleep();
    }
    return 0;
}