// Auto-generated. Do not edit!

// (in-package i2cpwm_board.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Servo = require('./Servo.js');

//-----------------------------------------------------------

class ServoArray {
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
    // Serializes a message object of type ServoArray
    // Serialize message field [servos]
    // Serialize the length for message field [servos]
    bufferOffset = _serializer.uint32(obj.servos.length, buffer, bufferOffset);
    obj.servos.forEach((val) => {
      bufferOffset = Servo.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ServoArray
    let len;
    let data = new ServoArray(null);
    // Deserialize message field [servos]
    // Deserialize array length for message field [servos]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.servos = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.servos[i] = Servo.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 6 * object.servos.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'i2cpwm_board/ServoArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7dcfd407a2095ba27997610e5008ca84';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # the ServoArray message is commonly used message in this package to
    # handle multiple assignments of values to servos. the purpose of
    # the value is dependent on the topic or service being called
    
    Servo[] servos
    
    ================================================================================
    MSG: i2cpwm_board/Servo
    # the Servo message is commonly used message in this package to
    # assign a value to a specific servo. the purpose of the value is
    # dependent on the topic or service being called
    
    int16 servo
    float32 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ServoArray(null);
    if (msg.servos !== undefined) {
      resolved.servos = new Array(msg.servos.length);
      for (let i = 0; i < resolved.servos.length; ++i) {
        resolved.servos[i] = Servo.Resolve(msg.servos[i]);
      }
    }
    else {
      resolved.servos = []
    }

    return resolved;
    }
};

module.exports = ServoArray;
