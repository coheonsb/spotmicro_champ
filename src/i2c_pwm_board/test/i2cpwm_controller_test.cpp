#include <ros/ros.h>
#include <std_srvs/Empty.h>
#include <geometry_msgs/Twist.h>

#include <i2cpwm_board/IntValue.h>
#include <i2cpwm_board/ServosConfig.h>
#include <i2cpwm_board/DriveMode.h>
#include <i2cpwm_board/ServoArray.h>

class I2cPWMControllerTest
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

    // Map to hold servo command values in radians
    std::map<std::string, float> servo_cmds_rad_ = { {"RF_3", 0.0f}, {"RF_2", 0.0f}, {"RF_1", 0.0f},
                                                {"RB_3", 0.0f}, {"RB_2", 0.0f}, {"RB_1", 0.0f},
                                                {"LB_3", 0.0f}, {"LB_2", 0.0f}, {"LB_1", 0.0f},
                                                {"LF_3", 0.0f}, {"LF_2", 0.0f}, {"LF_1", 0.0f} };

    double angleToDutyCycle(double x, double in_min, double in_max, double out_min=600, double out_max=2400);
public:
    I2cPWMControllerTest(int argc, char **argv);
    ~I2cPWMControllerTest();

    bool publishServoConfiguration();
    void setServoCommand(std::string name, float angle);
    void publishServoProportionalCommand();
};

I2cPWMControllerTest::I2cPWMControllerTest(int argc, char **argv)
{
    ros::init (argc, argv, "i2cpwm_controller_test");

    ros::NodeHandle nh;
    ros::NodeHandle pnh("~");

    int num_servos;
    pnh.getParam("num_servos", num_servos);
    pnh.getParam("servo_max_angle_deg", servo_max_angle_deg);

    // Initialize servo array message with 12 servo objects
    for (int i = 1; i <= num_servos; i++) {
        i2cpwm_board::Servo temp_servo;
        temp_servo.servo = i;
        temp_servo.value = 0;
        servo_array_.servos.push_back(temp_servo);
    }

    // Temporary map for populating map in smnc_
    std::map<std::string, float> temp_map;

    // Iterate over servo names, as defined in the map servo_cmds_rad, to populate
    // the servo config map in smnc_
    for(std::map<std::string, float>::iterator 
        iter = servo_cmds_rad_.begin();
        iter != servo_cmds_rad_.end();
        ++iter) {

        std::string servo_name = iter->first; // Get key, string of the servo name
        
        pnh.getParam(servo_name, temp_map); // Read the parameter. Parameter name must match servo name
        servo_config[servo_name] = temp_map; // Assing in servo config to map in the struct
    }

    freq_srv = nh.serviceClient<i2cpwm_board::IntValue> ("set_pwm_frequency");
    config_srv = nh.serviceClient<i2cpwm_board::ServosConfig> ("config_servos"); // 'config' will setup the necessary properties of continuous servos and is helpful for standard servos
    stop_srv = nh.serviceClient<std_srvs::Empty> ("stop_servos");			     // the 'stop' service can be used at any time

    servos_proportional_pub = nh.advertise<i2cpwm_board::ServoArray> ("servos_proportional", 10);
}

I2cPWMControllerTest::~I2cPWMControllerTest()
{
    // TODO: Check why this doesn't work
    // Frequency
    std_srvs::Empty msg;
    if (!stop_srv.call(msg)) {
        ROS_ERROR("Failed to call service stop_servos");
        return;
    }
}

void I2cPWMControllerTest::setServoCommand(std::string name, float angle)
{
    servo_cmds_rad_[name] = angle;
}

bool I2cPWMControllerTest::publishServoConfiguration() {  
  // Create a temporary servo config
  i2cpwm_board::ServoConfig temp_servo_config;
  i2cpwm_board::ServosConfig temp_servo_config_array;

  // Loop through servo configuration dictionary in smnc_, append servo to
  for (std::map<std::string, std::map<std::string, float>>::iterator
       iter = servo_config.begin();
       iter != servo_config.end();
       ++iter) {

    std::map<std::string, float> servo_config_params = iter->second;
    temp_servo_config.center = servo_config_params["center"];
    temp_servo_config.range = servo_config_params["range"];
    temp_servo_config.servo = servo_config_params["num"];
    temp_servo_config.direction = servo_config_params["direction"];

    // Append to temp_servo_config_array
    temp_servo_config_array.request.servos.push_back(temp_servo_config);
  }

  // call the client service, return true if succesfull, false if not
  if (!config_srv.call(temp_servo_config_array)) {
    ROS_ERROR("Failed to call service servo_config");
    return false;
  }

  return true;
}

/// To map the value from a range to another
double I2cPWMControllerTest::angleToDutyCycle(double x, double in_min, double in_max, double out_min, double out_max)
{
    return (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min;
}

void I2cPWMControllerTest::publishServoProportionalCommand() {
    for (std::map<std::string, std::map<std::string, float>>::iterator
        iter = servo_config.begin();
        iter != servo_config.end();
        ++iter) {
    
        std::string servo_name = iter->first;
        std::map<std::string, float> servo_config_params = iter->second;
        
        int servo_num = servo_config_params["num"];
        float cmd_ang_rad = servo_cmds_rad_[servo_name];
        float center_ang_rad = servo_config_params["center_angle_deg"]*M_PI/180.0f;
        float servo_proportional_cmd = (cmd_ang_rad - center_ang_rad) /
                                        (servo_max_angle_deg*M_PI/180.0f);
    
        if (servo_proportional_cmd > 1.0001f) {
            ROS_WARN("Proportional Command above +1.0 was computed (%1.4f), clipped to 1.0", servo_proportional_cmd);
            ROS_WARN("Joint %s, Angle: %1.2f", servo_name.c_str(), cmd_ang_rad*180.0/M_PI);
            servo_proportional_cmd = 1.0f;
        
        } else if (servo_proportional_cmd < -1.0001f) {
            ROS_WARN("Proportional Command below -1.0 was computed (%1.4f), clipped to -1.0", servo_proportional_cmd);
            ROS_WARN("Joint %s, Angle: %1.2f", servo_name.c_str(), cmd_ang_rad*180.0/M_PI);
            servo_proportional_cmd = -1.0f;
        }

        servo_array_.servos[servo_num-1].servo = servo_num;
        servo_array_.servos[servo_num-1].value = servo_proportional_cmd; 
    }

    // Publish message
    servos_proportional_pub.publish(servo_array_);
}

int main (int argc, char **argv)
{
    I2cPWMControllerTest test = I2cPWMControllerTest(argc, argv);
    test.publishServoConfiguration();
    test.publishServoProportionalCommand();

    test.setServoCommand("RF_1", 45.0f*M_PI/180.0f);
    test.setServoCommand("RF_2", 45.0f*M_PI/180.0f);
    test.setServoCommand("RF_3", 45.0f*M_PI/180.0f);
    test.publishServoProportionalCommand();
    ros::Duration(2.0).sleep();

    // servo_cmds_rad_["RB_1"] = value;
    // servo_cmds_rad_["RB_2"] = value;
    // servo_cmds_rad_["RB_3"] = value;
    
    test.setServoCommand("LF_1", -45.0f*M_PI/180.0f);
    test.setServoCommand("LF_2", -45.0f*M_PI/180.0f);
    test.setServoCommand("LF_3", -45.0f*M_PI/180.0f);
    test.publishServoProportionalCommand();
    ros::Duration(2.0).sleep();

    // servo_cmds_rad_["LB_1"] = value;
    // servo_cmds_rad_["LB_2"] = value;
    // servo_cmds_rad_["LB_3"] = value;

    ros::spin();

    return 0;
}
