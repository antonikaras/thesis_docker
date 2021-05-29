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

class MapData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.width = null;
      this.height = null;
      this.map = null;
      this.resolution = null;
      this.origin = null;
    }
    else {
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0;
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0;
      }
      if (initObj.hasOwnProperty('map')) {
        this.map = initObj.map
      }
      else {
        this.map = [];
      }
      if (initObj.hasOwnProperty('resolution')) {
        this.resolution = initObj.resolution
      }
      else {
        this.resolution = 0.0;
      }
      if (initObj.hasOwnProperty('origin')) {
        this.origin = initObj.origin
      }
      else {
        this.origin = new Array(7).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MapData
    // Serialize message field [width]
    bufferOffset = _serializer.uint32(obj.width, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.uint32(obj.height, buffer, bufferOffset);
    // Serialize message field [map]
    bufferOffset = _arraySerializer.int32(obj.map, buffer, bufferOffset, null);
    // Serialize message field [resolution]
    bufferOffset = _serializer.float32(obj.resolution, buffer, bufferOffset);
    // Check that the constant length array field [origin] has the right length
    if (obj.origin.length !== 7) {
      throw new Error('Unable to serialize array field origin - length must be 7')
    }
    // Serialize message field [origin]
    bufferOffset = _arraySerializer.float32(obj.origin, buffer, bufferOffset, 7);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MapData
    let len;
    let data = new MapData(null);
    // Deserialize message field [width]
    data.width = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [map]
    data.map = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [resolution]
    data.resolution = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [origin]
    data.origin = _arrayDeserializer.float32(buffer, bufferOffset, 7)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.map.length;
    return length + 44;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_unity_msgs/MapData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '56aa2e0b034c9d2334b16995b3576454';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 width
    uint32 height
    int32[] map
    float32 resolution
    float32[7] origin 
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MapData(null);
    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0
    }

    if (msg.map !== undefined) {
      resolved.map = msg.map;
    }
    else {
      resolved.map = []
    }

    if (msg.resolution !== undefined) {
      resolved.resolution = msg.resolution;
    }
    else {
      resolved.resolution = 0.0
    }

    if (msg.origin !== undefined) {
      resolved.origin = msg.origin;
    }
    else {
      resolved.origin = new Array(7).fill(0)
    }

    return resolved;
    }
};

module.exports = MapData;
