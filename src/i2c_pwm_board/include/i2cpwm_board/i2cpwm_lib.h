#ifndef _I2CPWMLIB_H_
#define _I2CPWMLIB_H_

#include <ros/ros.h>
#include <std_srvs/Empty.h>

#include <i2cpwm_board/IntValue.h>
#include <i2cpwm_board/ServosConfig.h>
#include <i2cpwm_board/ServoArray.h>


class I2cPWMLib
{
private:
    // Servo array message for servo proportional command
    i2cpwm_board::ServoArray servo_array_;
    float servo_max_angle_deg;

    std::map<std::string, std::map<std::string, float>> servo_config;

    ros::ServiceClient freq_srv;
    ros::ServiceClient config_srv;
    ros::ServiceClient stop_srv;

    ros::Publisher servos_proportional_pub;

    ros::NodeHandle nh;

    // Map to hold servo command values in radians
    std::map<std::string, float> servo_cmds_rad_ = { {"RF_3", 0.0f}, {"RF_2", 0.0f}, {"RF_1", 0.0f},
                                                {"RB_3", 0.0f}, {"RB_2", 0.0f}, {"RB_1", 0.0f},
                                                {"LB_3", 0.0f}, {"LB_2", 0.0f}, {"LB_1", 0.0f},
                                                {"LF_3", 0.0f}, {"LF_2", 0.0f}, {"LF_1", 0.0f} };
    // TODO: Construct this from hardware.yaml
    std::map<std::string, std::string> servo_names_ = { {"front_right_foot", "RF_3"}, {"front_right_leg", "RF_2"}, {"front_right_shoulder", "RF_1"},
                                                {"rear_right_foot", "RB_3"}, {"rear_right_leg", "RB_2"}, {"rear_right_shoulder", "RB_1"},
                                                {"rear_left_foot", "LB_3"}, {"rear_left_leg", "LB_2"}, {"rear_left_shoulder", "LB_1"},
                                                {"front_left_foot", "LF_3"}, {"front_left_leg", "LF_2"}, {"front_left_shoulder", "LF_1"} };
public:
    I2cPWMLib(ros::NodeHandle *_nh);
    ~I2cPWMLib();

    bool publishServoConfiguration();
    void setServoCommand(std::string name, float angle);
    void publishServoProportionalCommand();
};

#endif
