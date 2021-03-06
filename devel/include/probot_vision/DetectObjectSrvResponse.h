// Generated by gencpp from file probot_vision/DetectObjectSrvResponse.msg
// DO NOT EDIT!


#ifndef PROBOT_VISION_MESSAGE_DETECTOBJECTSRVRESPONSE_H
#define PROBOT_VISION_MESSAGE_DETECTOBJECTSRVRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Pose.h>
#include <geometry_msgs/Pose.h>
#include <geometry_msgs/Pose.h>
#include <geometry_msgs/Pose.h>

namespace probot_vision
{
template <class ContainerAllocator>
struct DetectObjectSrvResponse_
{
  typedef DetectObjectSrvResponse_<ContainerAllocator> Type;

  DetectObjectSrvResponse_()
    : result(0)
    , redObjList()
    , greenObjList()
    , blueObjList()
    , blackObjList()  {
    }
  DetectObjectSrvResponse_(const ContainerAllocator& _alloc)
    : result(0)
    , redObjList(_alloc)
    , greenObjList(_alloc)
    , blueObjList(_alloc)
    , blackObjList(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _result_type;
  _result_type result;

   typedef std::vector< ::geometry_msgs::Pose_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::geometry_msgs::Pose_<ContainerAllocator> >::other >  _redObjList_type;
  _redObjList_type redObjList;

   typedef std::vector< ::geometry_msgs::Pose_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::geometry_msgs::Pose_<ContainerAllocator> >::other >  _greenObjList_type;
  _greenObjList_type greenObjList;

   typedef std::vector< ::geometry_msgs::Pose_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::geometry_msgs::Pose_<ContainerAllocator> >::other >  _blueObjList_type;
  _blueObjList_type blueObjList;

   typedef std::vector< ::geometry_msgs::Pose_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::geometry_msgs::Pose_<ContainerAllocator> >::other >  _blackObjList_type;
  _blackObjList_type blackObjList;



  enum {
    SUCCESS = 0,
    ERROR = 1,
    TIMEOUT = 2,
    NOT_DETECTED = 3,
    NOT_SUPPORT = 4,
  };


  typedef boost::shared_ptr< ::probot_vision::DetectObjectSrvResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::probot_vision::DetectObjectSrvResponse_<ContainerAllocator> const> ConstPtr;

}; // struct DetectObjectSrvResponse_

typedef ::probot_vision::DetectObjectSrvResponse_<std::allocator<void> > DetectObjectSrvResponse;

typedef boost::shared_ptr< ::probot_vision::DetectObjectSrvResponse > DetectObjectSrvResponsePtr;
typedef boost::shared_ptr< ::probot_vision::DetectObjectSrvResponse const> DetectObjectSrvResponseConstPtr;

// constants requiring out of line definition

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::probot_vision::DetectObjectSrvResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::probot_vision::DetectObjectSrvResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace probot_vision

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'probot_vision': ['/home/li/ROS/probot_ws/src/PROBOT_Anno/probot_vision_pick/probot_vision/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::probot_vision::DetectObjectSrvResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::probot_vision::DetectObjectSrvResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::probot_vision::DetectObjectSrvResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::probot_vision::DetectObjectSrvResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::probot_vision::DetectObjectSrvResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::probot_vision::DetectObjectSrvResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::probot_vision::DetectObjectSrvResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8b76b8b08551484b32bd1afa1a16fcbc";
  }

  static const char* value(const ::probot_vision::DetectObjectSrvResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8b76b8b08551484bULL;
  static const uint64_t static_value2 = 0x32bd1afa1a16fcbcULL;
};

template<class ContainerAllocator>
struct DataType< ::probot_vision::DetectObjectSrvResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "probot_vision/DetectObjectSrvResponse";
  }

  static const char* value(const ::probot_vision::DetectObjectSrvResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::probot_vision::DetectObjectSrvResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
\n\
int32 SUCCESS        = 0\n\
int32 ERROR          = 1\n\
int32 TIMEOUT        = 2\n\
int32 NOT_DETECTED   = 3\n\
int32 NOT_SUPPORT    = 4\n\
\n\
\n\
int32 result\n\
geometry_msgs/Pose[] redObjList\n\
geometry_msgs/Pose[] greenObjList\n\
geometry_msgs/Pose[] blueObjList\n\
geometry_msgs/Pose[] blackObjList\n\
\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Pose\n\
# A representation of pose in free space, composed of position and orientation. \n\
Point position\n\
Quaternion orientation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
";
  }

  static const char* value(const ::probot_vision::DetectObjectSrvResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::probot_vision::DetectObjectSrvResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.result);
      stream.next(m.redObjList);
      stream.next(m.greenObjList);
      stream.next(m.blueObjList);
      stream.next(m.blackObjList);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DetectObjectSrvResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::probot_vision::DetectObjectSrvResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::probot_vision::DetectObjectSrvResponse_<ContainerAllocator>& v)
  {
    s << indent << "result: ";
    Printer<int32_t>::stream(s, indent + "  ", v.result);
    s << indent << "redObjList[]" << std::endl;
    for (size_t i = 0; i < v.redObjList.size(); ++i)
    {
      s << indent << "  redObjList[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "    ", v.redObjList[i]);
    }
    s << indent << "greenObjList[]" << std::endl;
    for (size_t i = 0; i < v.greenObjList.size(); ++i)
    {
      s << indent << "  greenObjList[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "    ", v.greenObjList[i]);
    }
    s << indent << "blueObjList[]" << std::endl;
    for (size_t i = 0; i < v.blueObjList.size(); ++i)
    {
      s << indent << "  blueObjList[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "    ", v.blueObjList[i]);
    }
    s << indent << "blackObjList[]" << std::endl;
    for (size_t i = 0; i < v.blackObjList.size(); ++i)
    {
      s << indent << "  blackObjList[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "    ", v.blackObjList[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // PROBOT_VISION_MESSAGE_DETECTOBJECTSRVRESPONSE_H
