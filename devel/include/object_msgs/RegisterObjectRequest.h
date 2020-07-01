// Generated by gencpp from file object_msgs/RegisterObjectRequest.msg
// DO NOT EDIT!


#ifndef OBJECT_MSGS_MESSAGE_REGISTEROBJECTREQUEST_H
#define OBJECT_MSGS_MESSAGE_REGISTEROBJECTREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace object_msgs
{
template <class ContainerAllocator>
struct RegisterObjectRequest_
{
  typedef RegisterObjectRequest_<ContainerAllocator> Type;

  RegisterObjectRequest_()
    : name()  {
    }
  RegisterObjectRequest_(const ContainerAllocator& _alloc)
    : name(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _name_type;
  _name_type name;





  typedef boost::shared_ptr< ::object_msgs::RegisterObjectRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::object_msgs::RegisterObjectRequest_<ContainerAllocator> const> ConstPtr;

}; // struct RegisterObjectRequest_

typedef ::object_msgs::RegisterObjectRequest_<std::allocator<void> > RegisterObjectRequest;

typedef boost::shared_ptr< ::object_msgs::RegisterObjectRequest > RegisterObjectRequestPtr;
typedef boost::shared_ptr< ::object_msgs::RegisterObjectRequest const> RegisterObjectRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::object_msgs::RegisterObjectRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::object_msgs::RegisterObjectRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace object_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'object_msgs': ['/home/li/ROS/probot_ws/src/general-message-pkgs/object_msgs/msg'], 'shape_msgs': ['/opt/ros/kinetic/share/shape_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'object_recognition_msgs': ['/opt/ros/kinetic/share/object_recognition_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::object_msgs::RegisterObjectRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::object_msgs::RegisterObjectRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::object_msgs::RegisterObjectRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::object_msgs::RegisterObjectRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::object_msgs::RegisterObjectRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::object_msgs::RegisterObjectRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::object_msgs::RegisterObjectRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c1f3d28f1b044c871e6eff2e9fc3c667";
  }

  static const char* value(const ::object_msgs::RegisterObjectRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc1f3d28f1b044c87ULL;
  static const uint64_t static_value2 = 0x1e6eff2e9fc3c667ULL;
};

template<class ContainerAllocator>
struct DataType< ::object_msgs::RegisterObjectRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "object_msgs/RegisterObjectRequest";
  }

  static const char* value(const ::object_msgs::RegisterObjectRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::object_msgs::RegisterObjectRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
string name\n\
\n\
";
  }

  static const char* value(const ::object_msgs::RegisterObjectRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::object_msgs::RegisterObjectRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RegisterObjectRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::object_msgs::RegisterObjectRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::object_msgs::RegisterObjectRequest_<ContainerAllocator>& v)
  {
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name);
  }
};

} // namespace message_operations
} // namespace ros

#endif // OBJECT_MSGS_MESSAGE_REGISTEROBJECTREQUEST_H
