// Auto-generated. Do not edit!

// (in-package ros_tcp_endpoint.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class UnityHandshakeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ip = null;
      this.port = null;
    }
    else {
      if (initObj.hasOwnProperty('ip')) {
        this.ip = initObj.ip
      }
      else {
        this.ip = '';
      }
      if (initObj.hasOwnProperty('port')) {
        this.port = initObj.port
      }
      else {
        this.port = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UnityHandshakeRequest
    // Serialize message field [ip]
    bufferOffset = _serializer.string(obj.ip, buffer, bufferOffset);
    // Serialize message field [port]
    bufferOffset = _serializer.uint16(obj.port, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UnityHandshakeRequest
    let len;
    let data = new UnityHandshakeRequest(null);
    // Deserialize message field [ip]
    data.ip = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [port]
    data.port = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.ip);
    return length + 6;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_tcp_endpoint/UnityHandshakeRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0d7108a8353c437472bddab9a8d6708e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string ip
    uint16 port
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UnityHandshakeRequest(null);
    if (msg.ip !== undefined) {
      resolved.ip = msg.ip;
    }
    else {
      resolved.ip = ''
    }

    if (msg.port !== undefined) {
      resolved.port = msg.port;
    }
    else {
      resolved.port = 0
    }

    return resolved;
    }
};

class UnityHandshakeResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ip = null;
    }
    else {
      if (initObj.hasOwnProperty('ip')) {
        this.ip = initObj.ip
      }
      else {
        this.ip = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UnityHandshakeResponse
    // Serialize message field [ip]
    bufferOffset = _serializer.string(obj.ip, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UnityHandshakeResponse
    let len;
    let data = new UnityHandshakeResponse(null);
    // Deserialize message field [ip]
    data.ip = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.ip);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_tcp_endpoint/UnityHandshakeResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9e9f1bacbbf36194990498b0461c2f3b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string ip
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UnityHandshakeResponse(null);
    if (msg.ip !== undefined) {
      resolved.ip = msg.ip;
    }
    else {
      resolved.ip = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: UnityHandshakeRequest,
  Response: UnityHandshakeResponse,
  md5sum() { return 'd618401021d6663c32eb0d5da40be68e'; },
  datatype() { return 'ros_tcp_endpoint/UnityHandshake'; }
};
