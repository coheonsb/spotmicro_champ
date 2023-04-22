// Auto-generated. Do not edit!

// (in-package i2cpwm_board.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class IntValueRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IntValueRequest
    // Serialize message field [value]
    bufferOffset = _serializer.int16(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IntValueRequest
    let len;
    let data = new IntValueRequest(null);
    // Deserialize message field [value]
    data.value = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'i2cpwm_board/IntValueRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '55daaea9ec64e37c8a6144d42a7265e2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # there are a few services whic take a single integer as input
    # these services share the IntValue service definition
    
    int16 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IntValueRequest(null);
    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0
    }

    return resolved;
    }
};

class IntValueResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.error = null;
    }
    else {
      if (initObj.hasOwnProperty('error')) {
        this.error = initObj.error
      }
      else {
        this.error = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IntValueResponse
    // Serialize message field [error]
    bufferOffset = _serializer.int16(obj.error, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IntValueResponse
    let len;
    let data = new IntValueResponse(null);
    // Deserialize message field [error]
    data.error = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'i2cpwm_board/IntValueResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '62df06fbed46eb687891e363579eb0f0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 error
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IntValueResponse(null);
    if (msg.error !== undefined) {
      resolved.error = msg.error;
    }
    else {
      resolved.error = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: IntValueRequest,
  Response: IntValueResponse,
  md5sum() { return '0f0a503a6dfd41f41ab6b6db4044064a'; },
  datatype() { return 'i2cpwm_board/IntValue'; }
};
