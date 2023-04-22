// Generated by gencpp from file spot_msgs/EStopState.msg
// DO NOT EDIT!


#ifndef SPOT_MSGS_MESSAGE_ESTOPSTATE_H
#define SPOT_MSGS_MESSAGE_ESTOPSTATE_H


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
struct EStopState_
{
  typedef EStopState_<ContainerAllocator> Type;

  EStopState_()
    : header()
    , name()
    , type(0)
    , state(0)
    , state_description()  {
    }
  EStopState_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , name(_alloc)
    , type(0)
    , state(0)
    , state_description(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _name_type;
  _name_type name;

   typedef uint8_t _type_type;
  _type_type type;

   typedef uint8_t _state_type;
  _state_type state;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _state_description_type;
  _state_description_type state_description;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(TYPE_UNKNOWN)
  #undef TYPE_UNKNOWN
#endif
#if defined(_WIN32) && defined(TYPE_HARDWARE)
  #undef TYPE_HARDWARE
#endif
#if defined(_WIN32) && defined(TYPE_SOFTWARE)
  #undef TYPE_SOFTWARE
#endif
#if defined(_WIN32) && defined(STATE_UNKNOWN)
  #undef STATE_UNKNOWN
#endif
#if defined(_WIN32) && defined(STATE_ESTOPPED)
  #undef STATE_ESTOPPED
#endif
#if defined(_WIN32) && defined(STATE_NOT_ESTOPPED)
  #undef STATE_NOT_ESTOPPED
#endif

  enum {
    TYPE_UNKNOWN = 0u,
    TYPE_HARDWARE = 1u,
    TYPE_SOFTWARE = 2u,
    STATE_UNKNOWN = 0u,
    STATE_ESTOPPED = 1u,
    STATE_NOT_ESTOPPED = 2u,
  };


  typedef boost::shared_ptr< ::spot_msgs::EStopState_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::spot_msgs::EStopState_<ContainerAllocator> const> ConstPtr;

}; // struct EStopState_

typedef ::spot_msgs::EStopState_<std::allocator<void> > EStopState;

typedef boost::shared_ptr< ::spot_msgs::EStopState > EStopStatePtr;
typedef boost::shared_ptr< ::spot_msgs::EStopState const> EStopStateConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::spot_msgs::EStopState_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::spot_msgs::EStopState_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::spot_msgs::EStopState_<ContainerAllocator1> & lhs, const ::spot_msgs::EStopState_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.name == rhs.name &&
    lhs.type == rhs.type &&
    lhs.state == rhs.state &&
    lhs.state_description == rhs.state_description;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::spot_msgs::EStopState_<ContainerAllocator1> & lhs, const ::spot_msgs::EStopState_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace spot_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::spot_msgs::EStopState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::spot_msgs::EStopState_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::spot_msgs::EStopState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::spot_msgs::EStopState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::spot_msgs::EStopState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::spot_msgs::EStopState_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::spot_msgs::EStopState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4e1a419eb9800cdac35ecfe372fcc725";
  }

  static const char* value(const ::spot_msgs::EStopState_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4e1a419eb9800cdaULL;
  static const uint64_t static_value2 = 0xc35ecfe372fcc725ULL;
};

template<class ContainerAllocator>
struct DataType< ::spot_msgs::EStopState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "spot_msgs/EStopState";
  }

  static const char* value(const ::spot_msgs::EStopState_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::spot_msgs::EStopState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Type\n"
"uint8 TYPE_UNKNOWN = 0\n"
"uint8 TYPE_HARDWARE = 1\n"
"uint8 TYPE_SOFTWARE = 2\n"
"\n"
"# State\n"
"uint8 STATE_UNKNOWN = 0\n"
"uint8 STATE_ESTOPPED = 1\n"
"uint8 STATE_NOT_ESTOPPED = 2\n"
"\n"
"Header header\n"
"string name\n"
"uint8 type\n"
"uint8 state\n"
"string state_description\n"
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

  static const char* value(const ::spot_msgs::EStopState_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::spot_msgs::EStopState_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.name);
      stream.next(m.type);
      stream.next(m.state);
      stream.next(m.state_description);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct EStopState_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::spot_msgs::EStopState_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::spot_msgs::EStopState_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.name);
    s << indent << "type: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.type);
    s << indent << "state: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.state);
    s << indent << "state_description: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.state_description);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SPOT_MSGS_MESSAGE_ESTOPSTATE_H
