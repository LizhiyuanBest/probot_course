// Generated by gencpp from file probot_vision/DetectObjectSrvRequest.msg
// DO NOT EDIT!


#ifndef PROBOT_VISION_MESSAGE_DETECTOBJECTSRVREQUEST_H
#define PROBOT_VISION_MESSAGE_DETECTOBJECTSRVREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace probot_vision
{
template <class ContainerAllocator>
struct DetectObjectSrvRequest_
{
  typedef DetectObjectSrvRequest_<ContainerAllocator> Type;

  DetectObjectSrvRequest_()
    : objectType(0)  {
    }
  DetectObjectSrvRequest_(const ContainerAllocator& _alloc)
    : objectType(0)  {
  (void)_alloc;
    }



   typedef int32_t _objectType_type;
  _objectType_type objectType;



  enum {
    ALL_OBJECT = 1,
    RED_OBJECT = 2,
    GREEN_OBJECT = 3,
    BLUE_OBJECT = 4,
    BLACK_OBJECT = 5,
  };


  typedef boost::shared_ptr< ::probot_vision::DetectObjectSrvRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::probot_vision::DetectObjectSrvRequest_<ContainerAllocator> const> ConstPtr;

}; // struct DetectObjectSrvRequest_

typedef ::probot_vision::DetectObjectSrvRequest_<std::allocator<void> > DetectObjectSrvRequest;

typedef boost::shared_ptr< ::probot_vision::DetectObjectSrvRequest > DetectObjectSrvRequestPtr;
typedef boost::shared_ptr< ::probot_vision::DetectObjectSrvRequest const> DetectObjectSrvRequestConstPtr;

// constants requiring out of line definition

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::probot_vision::DetectObjectSrvRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::probot_vision::DetectObjectSrvRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace probot_vision

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'probot_vision': ['/home/li/ROS/probot_ws/src/PROBOT_Anno/probot_vision_pick/probot_vision/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::probot_vision::DetectObjectSrvRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::probot_vision::DetectObjectSrvRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::probot_vision::DetectObjectSrvRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::probot_vision::DetectObjectSrvRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::probot_vision::DetectObjectSrvRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::probot_vision::DetectObjectSrvRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::probot_vision::DetectObjectSrvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b109a11e3c474b2fb2712644ac40f94c";
  }

  static const char* value(const ::probot_vision::DetectObjectSrvRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb109a11e3c474b2fULL;
  static const uint64_t static_value2 = 0xb2712644ac40f94cULL;
};

template<class ContainerAllocator>
struct DataType< ::probot_vision::DetectObjectSrvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "probot_vision/DetectObjectSrvRequest";
  }

  static const char* value(const ::probot_vision::DetectObjectSrvRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::probot_vision::DetectObjectSrvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
\n\
\n\
int32 ALL_OBJECT    = 1\n\
int32 RED_OBJECT    = 2\n\
int32 GREEN_OBJECT  = 3\n\
int32 BLUE_OBJECT   = 4\n\
int32 BLACK_OBJECT  = 5\n\
\n\
\n\
int32 objectType\n\
\n\
";
  }

  static const char* value(const ::probot_vision::DetectObjectSrvRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::probot_vision::DetectObjectSrvRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.objectType);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DetectObjectSrvRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::probot_vision::DetectObjectSrvRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::probot_vision::DetectObjectSrvRequest_<ContainerAllocator>& v)
  {
    s << indent << "objectType: ";
    Printer<int32_t>::stream(s, indent + "  ", v.objectType);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PROBOT_VISION_MESSAGE_DETECTOBJECTSRVREQUEST_H