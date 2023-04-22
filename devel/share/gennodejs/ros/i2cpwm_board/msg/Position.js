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

class Position {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.servo = null;
      this.position = null;
    }
    else {
      if (initObj.hasOwnProperty('servo')) {
        this.servo = initObj.servo
      }
      else {
        this.servo = 0;
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Position
    // Serialize message field [servo]
    bufferOffset = _serializer.int16(obj.servo, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = _serializer.int16(obj.position, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Position
    let len;
    let data = new Position(null);
    // Deserialize message field [servo]
    data.servo = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'i2cpwm_board/Position';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '46d1769fd9d3e30e5c4274bd2f84d885';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Position(null);
    if (msg.servo !== undefined) {
      resolved.servo = msg.servo;
    }
    else {
      resolved.servo = 0
    }

    if (msg.position !== undefined) {
      resolved.position = msg.position;
    }
    else {
      resolved.position = 0
    }

    return resolved;
    }
};

module.exports = Position;
