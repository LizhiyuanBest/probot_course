// Auto-generated. Do not edit!

// (in-package probot_demo.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Pt2D = require('./Pt2D.js');

//-----------------------------------------------------------

class Process_Result {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.color = null;
      this.type = null;
      this.region = null;
      this.center = null;
      this.theta = null;
    }
    else {
      if (initObj.hasOwnProperty('color')) {
        this.color = initObj.color
      }
      else {
        this.color = '';
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = '';
      }
      if (initObj.hasOwnProperty('region')) {
        this.region = initObj.region
      }
      else {
        this.region = new Array(4).fill(new Pt2D());
      }
      if (initObj.hasOwnProperty('center')) {
        this.center = initObj.center
      }
      else {
        this.center = new Array(2).fill(0);
      }
      if (initObj.hasOwnProperty('theta')) {
        this.theta = initObj.theta
      }
      else {
        this.theta = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Process_Result
    // Serialize message field [color]
    bufferOffset = _serializer.string(obj.color, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Check that the constant length array field [region] has the right length
    if (obj.region.length !== 4) {
      throw new Error('Unable to serialize array field region - length must be 4')
    }
    // Serialize message field [region]
    obj.region.forEach((val) => {
      bufferOffset = Pt2D.serialize(val, buffer, bufferOffset);
    });
    // Check that the constant length array field [center] has the right length
    if (obj.center.length !== 2) {
      throw new Error('Unable to serialize array field center - length must be 2')
    }
    // Serialize message field [center]
    bufferOffset = _arraySerializer.float32(obj.center, buffer, bufferOffset, 2);
    // Serialize message field [theta]
    bufferOffset = _serializer.float32(obj.theta, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Process_Result
    let len;
    let data = new Process_Result(null);
    // Deserialize message field [color]
    data.color = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [region]
    len = 4;
    data.region = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.region[i] = Pt2D.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [center]
    data.center = _arrayDeserializer.float32(buffer, bufferOffset, 2)
    // Deserialize message field [theta]
    data.theta = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.color.length;
    length += object.type.length;
    return length + 52;
  }

  static datatype() {
    // Returns string type for a message object
    return 'probot_demo/Process_Result';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7a9940e9234e2c5b8c9ee3af165e3aef';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string color
    string type
    Pt2D[4] region
    float32[2] center
    float32 theta
    
    ================================================================================
    MSG: probot_demo/Pt2D
    int32 x
    int32 y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Process_Result(null);
    if (msg.color !== undefined) {
      resolved.color = msg.color;
    }
    else {
      resolved.color = ''
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = ''
    }

    if (msg.region !== undefined) {
      resolved.region = new Array(4)
      for (let i = 0; i < resolved.region.length; ++i) {
        if (msg.region.length > i) {
          resolved.region[i] = Pt2D.Resolve(msg.region[i]);
        }
        else {
          resolved.region[i] = new Pt2D();
        }
      }
    }
    else {
      resolved.region = new Array(4).fill(new Pt2D())
    }

    if (msg.center !== undefined) {
      resolved.center = msg.center;
    }
    else {
      resolved.center = new Array(2).fill(0)
    }

    if (msg.theta !== undefined) {
      resolved.theta = msg.theta;
    }
    else {
      resolved.theta = 0.0
    }

    return resolved;
    }
};

module.exports = Process_Result;
