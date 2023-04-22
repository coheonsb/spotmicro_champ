// Auto-generated. Do not edit!

// (in-package i2cpwm_board.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ServoConfig = require('./ServoConfig.js');

//-----------------------------------------------------------

class ServoConfigArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.servos = null;
    }
    else {
      if (initObj.hasOwnProperty('servos')) {
        this.servos = initObj.servos
      }
      else {
        this.servos = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ServoConfigArray
    // Serialize message field [servos]
    // Serialize the length for message field [servos]
    bufferOffset = _serializer.uint32(obj.servos.length, buffer, bufferOffset);
    obj.servos.forEach((val) => {
      bufferOffset = ServoConfig.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ServoConfigArray
    let len;
    let data = new ServoConfigArray(null);
    // Deserialize message field [servos]
    // Deserialize array length for message field [servos]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.servos = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.servos[i] = ServoConfig.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.servos.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'i2cpwm_board/ServoConfigArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8f9c43713b493f265aec1e926dd292b8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # the ServoConfigArray message is used to handle multiple assignments
    # of config data to servos. the data is needed to normalize servos to
    # common values to isolate variations from the rest of the user's
    # robot motion code. 
    
    ServoConfig[] servos
    
    ================================================================================
    MSG: i2cpwm_board/ServoConfig
    # the ServoConfig message is used to assign specific configuration
    # data to a servo. the data is needed to normalize servos to
    # common values to isolate variations from the rest of the user's
    # robot motion code. 
    
    int16 servo
    int16 center
    int16 range
    int16 direction
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ServoConfigArray(null);
    if (msg.servos !== undefined) {
      resolved.servos = new Array(msg.servos.length);
      for (let i = 0; i < resolved.servos.length; ++i) {
        resolved.servos[i] = ServoConfig.Resolve(msg.servos[i]);
      }
    }
    else {
      resolved.servos = []
    }

    return resolved;
    }
};

module.exports = ServoConfigArray;
