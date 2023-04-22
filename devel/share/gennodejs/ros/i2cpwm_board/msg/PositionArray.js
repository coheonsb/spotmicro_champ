// Auto-generated. Do not edit!

// (in-package i2cpwm_board.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Position = require('./Position.js');

//-----------------------------------------------------------

class PositionArray {
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
    // Serializes a message object of type PositionArray
    // Serialize message field [servos]
    // Serialize the length for message field [servos]
    bufferOffset = _serializer.uint32(obj.servos.length, buffer, bufferOffset);
    obj.servos.forEach((val) => {
      bufferOffset = Position.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PositionArray
    let len;
    let data = new PositionArray(null);
    // Deserialize message field [servos]
    // Deserialize array length for message field [servos]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.servos = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.servos[i] = Position.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.servos.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'i2cpwm_board/PositionArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '06b5be802f78af7b5ec929fe386952bb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # the PositionArray message handles multiple position assignments
    # of servos.
    
    Position[] servos
    
    ================================================================================
    MSG: i2cpwm_board/Position
    # the position message is used when configuring drive mode to
    # assign a  servo to a specific wheel positon in the drive system
    # postions are specific toe the desired drive mode
    # ackerman has only one position
    # 1 = drive
    # differential has two positons
    # 1 = left, 2 = right
    # mecanum has four positions
    # 1 = front left, 2 = front right, 3 = rear left, 4 = rear right
    # multiple servos/motors may be used for each positon
    
    int16 servo
    int16 position
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PositionArray(null);
    if (msg.servos !== undefined) {
      resolved.servos = new Array(msg.servos.length);
      for (let i = 0; i < resolved.servos.length; ++i) {
        resolved.servos[i] = Position.Resolve(msg.servos[i]);
      }
    }
    else {
      resolved.servos = []
    }

    return resolved;
    }
};

module.exports = PositionArray;
