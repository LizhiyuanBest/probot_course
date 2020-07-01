// Generated by gencpp from file probot_msgs/InterfaceReturnCode.msg
// DO NOT EDIT!


#ifndef PROBOT_MSGS_MESSAGE_INTERFACERETURNCODE_H
#define PROBOT_MSGS_MESSAGE_INTERFACERETURNCODE_H


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
struct InterfaceReturnCode_
{
  typedef InterfaceReturnCode_<ContainerAllocator> Type;

  InterfaceReturnCode_()
    : val(0)  {
    }
  InterfaceReturnCode_(const ContainerAllocator& _alloc)
    : val(0)  {
  (void)_alloc;
    }



   typedef int8_t _val_type;
  _val_type val;



  enum {
    SUCCESS = 1,
    FAILURE = -1,
  };


  typedef boost::shared_ptr< ::probot_msgs::InterfaceReturnCode_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::probot_msgs::InterfaceReturnCode_<ContainerAllocator> const> ConstPtr;

}; // struct InterfaceReturnCode_

typedef ::probot_msgs::InterfaceReturnCode_<std::allocator<void> > InterfaceReturnCode;

typedef boost::shared_ptr< ::probot_msgs::InterfaceReturnCode > InterfaceReturnCodePtr;
typedef boost::shared_ptr< ::probot_msgs::InterfaceReturnCode const> InterfaceReturnCodeConstPtr;

// constants requiring out of line definition

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::probot_msgs::InterfaceReturnCode_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::probot_msgs::InterfaceReturnCode_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::probot_msgs::InterfaceReturnCode_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::probot_msgs::InterfaceReturnCode_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::probot_msgs::InterfaceReturnCode_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::probot_msgs::InterfaceReturnCode_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::probot_msgs::InterfaceReturnCode_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::probot_msgs::InterfaceReturnCode_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::probot_msgs::InterfaceReturnCode_<ContainerAllocator> >
{
  static const char* value()
  {
    return "85a4e241266be66b1e1426b03083a412";
  }

  static const char* value(const ::probot_msgs::InterfaceReturnCode_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x85a4e241266be66bULL;
  static const uint64_t static_value2 = 0x1e1426b03083a412ULL;
};

template<class ContainerAllocator>
struct DataType< ::probot_msgs::InterfaceReturnCode_<ContainerAllocator> >
{
  static const char* value()
  {
    return "probot_msgs/InterfaceReturnCode";
  }

  static const char* value(const ::probot_msgs::InterfaceReturnCode_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::probot_msgs::InterfaceReturnCode_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# App Interface return codes for requests.  All App Interface service\n\
# replies are required to have a return code indicating success or failure\n\
# Specific return codes for different failure should be negative.\n\
int8 val\n\
\n\
int8 SUCCESS = 1\n\
int8 FAILURE = -1\n\
";
  }

  static const char* value(const ::probot_msgs::InterfaceReturnCode_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::probot_msgs::InterfaceReturnCode_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.val);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct InterfaceReturnCode_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::probot_msgs::InterfaceReturnCode_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::probot_msgs::InterfaceReturnCode_<ContainerAllocator>& v)
  {
    s << indent << "val: ";
    Printer<int8_t>::stream(s, indent + "  ", v.val);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PROBOT_MSGS_MESSAGE_INTERFACERETURNCODE_H