// Auto-generated. Do not edit!

// (in-package ros_unity_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PointGroup = require('./PointGroup.js');

//-----------------------------------------------------------

class PointGroups {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.groups = null;
    }
    else {
      if (initObj.hasOwnProperty('groups')) {
        this.groups = initObj.groups
      }
      else {
        this.groups = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PointGroups
    // Serialize message field [groups]
    // Serialize the length for message field [groups]
    bufferOffset = _serializer.uint32(obj.groups.length, buffer, bufferOffset);
    obj.groups.forEach((val) => {
      bufferOffset = PointGroup.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PointGroups
    let len;
    let data = new PointGroups(null);
    // Deserialize message field [groups]
    // Deserialize array length for message field [groups]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.groups = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.groups[i] = PointGroup.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.groups.forEach((val) => {
      length += PointGroup.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_unity_msgs/PointGroups';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a2c4e3a8563a46ea18da5c6f66021358';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    PointGroup[] groups
    ================================================================================
    MSG: ros_unity_msgs/PointGroup
    float32[] map_pos
    int32 group_id
    float32[] map_origin
    float32[] map_dims
    float32 map_resolution
    string associated_file 
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PointGroups(null);
    if (msg.groups !== undefined) {
      resolved.groups = new Array(msg.groups.length);
      for (let i = 0; i < resolved.groups.length; ++i) {
        resolved.groups[i] = PointGroup.Resolve(msg.groups[i]);
      }
    }
    else {
      resolved.groups = []
    }

    return resolved;
    }
};

module.exports = PointGroups;
