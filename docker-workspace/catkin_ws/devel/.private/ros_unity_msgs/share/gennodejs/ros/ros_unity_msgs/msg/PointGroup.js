// Auto-generated. Do not edit!

// (in-package ros_unity_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PointGroup {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.map_pos = null;
      this.group_id = null;
      this.map_origin = null;
      this.map_dims = null;
      this.map_resolution = null;
      this.associated_file = null;
    }
    else {
      if (initObj.hasOwnProperty('map_pos')) {
        this.map_pos = initObj.map_pos
      }
      else {
        this.map_pos = [];
      }
      if (initObj.hasOwnProperty('group_id')) {
        this.group_id = initObj.group_id
      }
      else {
        this.group_id = 0;
      }
      if (initObj.hasOwnProperty('map_origin')) {
        this.map_origin = initObj.map_origin
      }
      else {
        this.map_origin = [];
      }
      if (initObj.hasOwnProperty('map_dims')) {
        this.map_dims = initObj.map_dims
      }
      else {
        this.map_dims = [];
      }
      if (initObj.hasOwnProperty('map_resolution')) {
        this.map_resolution = initObj.map_resolution
      }
      else {
        this.map_resolution = 0.0;
      }
      if (initObj.hasOwnProperty('associated_file')) {
        this.associated_file = initObj.associated_file
      }
      else {
        this.associated_file = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PointGroup
    // Serialize message field [map_pos]
    bufferOffset = _arraySerializer.float32(obj.map_pos, buffer, bufferOffset, null);
    // Serialize message field [group_id]
    bufferOffset = _serializer.int32(obj.group_id, buffer, bufferOffset);
    // Serialize message field [map_origin]
    bufferOffset = _arraySerializer.float32(obj.map_origin, buffer, bufferOffset, null);
    // Serialize message field [map_dims]
    bufferOffset = _arraySerializer.float32(obj.map_dims, buffer, bufferOffset, null);
    // Serialize message field [map_resolution]
    bufferOffset = _serializer.float32(obj.map_resolution, buffer, bufferOffset);
    // Serialize message field [associated_file]
    bufferOffset = _serializer.string(obj.associated_file, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PointGroup
    let len;
    let data = new PointGroup(null);
    // Deserialize message field [map_pos]
    data.map_pos = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [group_id]
    data.group_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [map_origin]
    data.map_origin = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [map_dims]
    data.map_dims = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [map_resolution]
    data.map_resolution = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [associated_file]
    data.associated_file = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.map_pos.length;
    length += 4 * object.map_origin.length;
    length += 4 * object.map_dims.length;
    length += _getByteLength(object.associated_file);
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_unity_msgs/PointGroup';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1260362be9abca30f61b84d7c4b3dc52';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new PointGroup(null);
    if (msg.map_pos !== undefined) {
      resolved.map_pos = msg.map_pos;
    }
    else {
      resolved.map_pos = []
    }

    if (msg.group_id !== undefined) {
      resolved.group_id = msg.group_id;
    }
    else {
      resolved.group_id = 0
    }

    if (msg.map_origin !== undefined) {
      resolved.map_origin = msg.map_origin;
    }
    else {
      resolved.map_origin = []
    }

    if (msg.map_dims !== undefined) {
      resolved.map_dims = msg.map_dims;
    }
    else {
      resolved.map_dims = []
    }

    if (msg.map_resolution !== undefined) {
      resolved.map_resolution = msg.map_resolution;
    }
    else {
      resolved.map_resolution = 0.0
    }

    if (msg.associated_file !== undefined) {
      resolved.associated_file = msg.associated_file;
    }
    else {
      resolved.associated_file = ''
    }

    return resolved;
    }
};

module.exports = PointGroup;
