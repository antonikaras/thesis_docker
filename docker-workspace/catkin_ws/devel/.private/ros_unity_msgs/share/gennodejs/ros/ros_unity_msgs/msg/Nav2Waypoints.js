// Auto-generated. Do not edit!

// (in-package ros_unity_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PosData = require('./PosData.js');

//-----------------------------------------------------------

class Nav2Waypoints {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.waypoints = null;
    }
    else {
      if (initObj.hasOwnProperty('waypoints')) {
        this.waypoints = initObj.waypoints
      }
      else {
        this.waypoints = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Nav2Waypoints
    // Serialize message field [waypoints]
    // Serialize the length for message field [waypoints]
    bufferOffset = _serializer.uint32(obj.waypoints.length, buffer, bufferOffset);
    obj.waypoints.forEach((val) => {
      bufferOffset = PosData.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Nav2Waypoints
    let len;
    let data = new Nav2Waypoints(null);
    // Deserialize message field [waypoints]
    // Deserialize array length for message field [waypoints]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.waypoints = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.waypoints[i] = PosData.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 12 * object.waypoints.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_unity_msgs/Nav2Waypoints';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e7484fc48f37a4ca6f72abe1a6fb5de4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    PosData[] waypoints
    ================================================================================
    MSG: ros_unity_msgs/PosData
    float32 x
    float32 y
    float32 yaw
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Nav2Waypoints(null);
    if (msg.waypoints !== undefined) {
      resolved.waypoints = new Array(msg.waypoints.length);
      for (let i = 0; i < resolved.waypoints.length; ++i) {
        resolved.waypoints[i] = PosData.Resolve(msg.waypoints[i]);
      }
    }
    else {
      resolved.waypoints = []
    }

    return resolved;
    }
};

module.exports = Nav2Waypoints;
