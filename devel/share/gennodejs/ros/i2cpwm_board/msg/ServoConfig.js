// Auto-generated. Do not edit!

// (in-package i2cpwm_board.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ServoConfig {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.servo = null;
      this.center = null;
      this.range = null;
      this.direction = null;
    }
    else {
      if (initObj.hasOwnProperty('servo')) {
        this.servo = initObj.servo
      }
      else {
        this.servo = 0;
      }
      if (initObj.hasOwnProperty('center')) {
        this.center = initObj.center
      }
      else {
        this.center = 0;
      }
      if (initObj.hasOwnProperty('range')) {
        this.range = initObj.range
      }
      else {
        this.range = 0;
      }
      if (initObj.hasOwnProperty('direction')) {
        this.direction = initObj.direction
      }
      else {
        this.direction = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ServoConfig
    // Serialize message field [servo]
    bufferOffset = _serializer.int16(obj.servo, buffer, bufferOffset);
    // Serialize message field [center]
    bufferOffset = _serializer.int16(obj.center, buffer, bufferOffset);
    // Serialize message field [range]
    bufferOffset = _serializer.int16(obj.range, buffer, bufferOffset);
    // Serialize message field [direction]
    bufferOffset = _serializer.int16(obj.direction, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ServoConfig
    let len;
    let data = new ServoConfig(null);
    // Deserialize message field [servo]
    data.servo = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [center]
    data.center = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [range]
    data.range = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [direction]
    data.direction = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'i2cpwm_board/ServoConfig';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd258bdc7108a9660981de680cfa4372d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new ServoConfig(null);
    if (msg.servo !== undefined) {
      resolved.servo = msg.servo;
    }
    else {
      resolved.servo = 0
    }

    if (msg.center !== undefined) {
      resolved.center = msg.center;
    }
    else {
      resolved.center = 0
    }

    if (msg.range !== undefined) {
      resolved.range = msg.range;
    }
    else {
      resolved.range = 0
    }

    if (msg.direction !== undefined) {
      resolved.direction = msg.direction;
    }
    else {
      resolved.direction = 0
    }

    return resolved;
    }
};

module.exports = ServoConfig;
