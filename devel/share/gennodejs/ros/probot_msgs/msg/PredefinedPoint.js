// Auto-generated. Do not edit!

// (in-package probot_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class PredefinedPoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.pose = null;
      this.joints = null;
      this.digitalOutput = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('joints')) {
        this.joints = initObj.joints
      }
      else {
        this.joints = [];
      }
      if (initObj.hasOwnProperty('digitalOutput')) {
        this.digitalOutput = initObj.digitalOutput
      }
      else {
        this.digitalOutput = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PredefinedPoint
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [joints]
    bufferOffset = _arraySerializer.float64(obj.joints, buffer, bufferOffset, null);
    // Serialize message field [digitalOutput]
    bufferOffset = _serializer.uint8(obj.digitalOutput, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PredefinedPoint
    let len;
    let data = new PredefinedPoint(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [joints]
    data.joints = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [digitalOutput]
    data.digitalOutput = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    length += 8 * object.joints.length;
    return length + 65;
  }

  static datatype() {
    // Returns string type for a message object
    return 'probot_msgs/PredefinedPoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '752776cd56e5a32192f73d2b055339cc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # The Predefined message contains the information of a pre-defined point on rviz
    
    string name
    geometry_msgs/Pose pose
    float64[] joints
    uint8 digitalOutput
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PredefinedPoint(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    if (msg.joints !== undefined) {
      resolved.joints = msg.joints;
    }
    else {
      resolved.joints = []
    }

    if (msg.digitalOutput !== undefined) {
      resolved.digitalOutput = msg.digitalOutput;
    }
    else {
      resolved.digitalOutput = 0
    }

    return resolved;
    }
};

module.exports = PredefinedPoint;
