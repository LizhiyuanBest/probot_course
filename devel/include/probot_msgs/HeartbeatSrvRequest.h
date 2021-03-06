// Generated by gencpp from file probot_msgs/HeartbeatSrvRequest.msg
// DO NOT EDIT!


#ifndef PROBOT_MSGS_MESSAGE_HEARTBEATSRVREQUEST_H
#define PROBOT_MSGS_MESSAGE_HEARTBEATSRVREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace probot_msgs
{
template <class ContainerAllocator>
struct HeartbeatSrvRequest_
{
  typedef HeartbeatSrvRequest_<ContainerAllocator> Type;

  HeartbeatSrvRequest_()
    : countRequest(0)  {
    }
  HeartbeatSrvRequest_(const ContainerAllocator& _alloc)
    : countRequest(0)  {
  (void)_alloc;
    }



   typedef int32_t _countRequest_type;
  _countRequest_type countRequest;





  typedef boost::shared_ptr< ::probot_msgs::HeartbeatSrvRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::probot_msgs::HeartbeatSrvRequest_<ContainerAllocator> const> ConstPtr;

}; // struct HeartbeatSrvRequest_

typedef ::probot_msgs::HeartbeatSrvRequest_<std::allocator<void> > HeartbeatSrvRequest;

typedef boost::shared_ptr< ::probot_msgs::HeartbeatSrvRequest > HeartbeatSrvRequestPtr;
typedef boost::shared_ptr< ::probot_msgs::HeartbeatSrvRequest const> HeartbeatSrvRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::probot_msgs::HeartbeatSrvRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::probot_msgs::HeartbeatSrvRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace probot_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'probot_msgs': ['/home/li/ROS/probot_ws/src/PROBOT_Anno/probot_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::probot_msgs::HeartbeatSrvRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::probot_msgs::HeartbeatSrvRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::probot_msgs::HeartbeatSrvRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::probot_msgs::HeartbeatSrvRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::probot_msgs::HeartbeatSrvRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::probot_msgs::HeartbeatSrvRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::probot_msgs::HeartbeatSrvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b6a833a94dfff474954f461420badd1a";
  }

  static const char* value(const ::probot_msgs::HeartbeatSrvRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb6a833a94dfff474ULL;
  static const uint64_t static_value2 = 0x954f461420badd1aULL;
};

template<class ContainerAllocator>
struct DataType< ::probot_msgs::HeartbeatSrvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "probot_msgs/HeartbeatSrvRequest";
  }

  static const char* value(const ::probot_msgs::HeartbeatSrvRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::probot_msgs::HeartbeatSrvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 countRequest\n\
";
  }

  static const char* value(const ::probot_msgs::HeartbeatSrvRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::probot_msgs::HeartbeatSrvRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.countRequest);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct HeartbeatSrvRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::probot_msgs::HeartbeatSrvRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::probot_msgs::HeartbeatSrvRequest_<ContainerAllocator>& v)
  {
    s << indent << "countRequest: ";
    Printer<int32_t>::stream(s, indent + "  ", v.countRequest);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PROBOT_MSGS_MESSAGE_HEARTBEATSRVREQUEST_H
