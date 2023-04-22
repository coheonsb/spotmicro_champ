// Generated by gencpp from file spot_msgs/Metrics.msg
// DO NOT EDIT!


#ifndef SPOT_MSGS_MESSAGE_METRICS_H
#define SPOT_MSGS_MESSAGE_METRICS_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace spot_msgs
{
template <class ContainerAllocator>
struct Metrics_
{
  typedef Metrics_<ContainerAllocator> Type;

  Metrics_()
    : header()
    , distance(0.0)
    , gait_cycles(0)
    , time_moving()
    , electric_power()  {
    }
  Metrics_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , distance(0.0)
    , gait_cycles(0)
    , time_moving()
    , electric_power()  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef float _distance_type;
  _distance_type distance;

   typedef int32_t _gait_cycles_type;
  _gait_cycles_type gait_cycles;

   typedef ros::Duration _time_moving_type;
  _time_moving_type time_moving;

   typedef ros::Duration _electric_power_type;
  _electric_power_type electric_power;





  typedef boost::shared_ptr< ::spot_msgs::Metrics_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::spot_msgs::Metrics_<ContainerAllocator> const> ConstPtr;

}; // struct Metrics_

typedef ::spot_msgs::Metrics_<std::allocator<void> > Metrics;

typedef boost::shared_ptr< ::spot_msgs::Metrics > MetricsPtr;
typedef boost::shared_ptr< ::spot_msgs::Metrics const> MetricsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::spot_msgs::Metrics_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::spot_msgs::Metrics_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::spot_msgs::Metrics_<ContainerAllocator1> & lhs, const ::spot_msgs::Metrics_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.distance == rhs.distance &&
    lhs.gait_cycles == rhs.gait_cycles &&
    lhs.time_moving == rhs.time_moving &&
    lhs.electric_power == rhs.electric_power;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::spot_msgs::Metrics_<ContainerAllocator1> & lhs, const ::spot_msgs::Metrics_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace spot_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::spot_msgs::Metrics_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::spot_msgs::Metrics_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::spot_msgs::Metrics_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::spot_msgs::Metrics_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::spot_msgs::Metrics_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::spot_msgs::Metrics_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::spot_msgs::Metrics_<ContainerAllocator> >
{
  static const char* value()
  {
    return "493e599307ab2a6dbe49405e7b5a9b6d";
  }

  static const char* value(const ::spot_msgs::Metrics_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x493e599307ab2a6dULL;
  static const uint64_t static_value2 = 0xbe49405e7b5a9b6dULL;
};

template<class ContainerAllocator>
struct DataType< ::spot_msgs::Metrics_<ContainerAllocator> >
{
  static const char* value()
  {
    return "spot_msgs/Metrics";
  }

  static const char* value(const ::spot_msgs::Metrics_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::spot_msgs::Metrics_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"float32 distance\n"
"int32 gait_cycles\n"
"duration time_moving\n"
"duration electric_power\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::spot_msgs::Metrics_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::spot_msgs::Metrics_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.distance);
      stream.next(m.gait_cycles);
      stream.next(m.time_moving);
      stream.next(m.electric_power);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Metrics_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::spot_msgs::Metrics_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::spot_msgs::Metrics_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "distance: ";
    Printer<float>::stream(s, indent + "  ", v.distance);
    s << indent << "gait_cycles: ";
    Printer<int32_t>::stream(s, indent + "  ", v.gait_cycles);
    s << indent << "time_moving: ";
    Printer<ros::Duration>::stream(s, indent + "  ", v.time_moving);
    s << indent << "electric_power: ";
    Printer<ros::Duration>::stream(s, indent + "  ", v.electric_power);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SPOT_MSGS_MESSAGE_METRICS_H
