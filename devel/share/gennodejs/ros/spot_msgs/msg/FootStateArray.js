// Auto-generated. Do not edit!

// (in-package spot_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let FootState = require('./FootState.js');

//-----------------------------------------------------------

class FootStateArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.states = null;
    }
    else {
      if (initObj.hasOwnProperty('states')) {
        this.states = initObj.states
      }
      else {
        this.states = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FootStateArray
    // Serialize message field [states]
    // Serialize the length for message field [states]
    bufferOffset = _serializer.uint32(obj.states.length, buffer, bufferOffset);
    obj.states.forEach((val) => {
      bufferOffset = FootState.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FootStateArray
    let len;
    let data = new FootStateArray(null);
    // Deserialize message field [states]
    // Deserialize array length for message field [states]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.states = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.states[i] = FootState.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 25 * object.states.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'spot_msgs/FootStateArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6bad9df4582060c21e7bde863865e1cb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    FootState[] states
    
    ================================================================================
    MSG: spot_msgs/FootState
    # Contact
    uint8 CONTACT_UNKNOWN = 0
    uint8 CONTACT_MADE = 1
    uint8 CONTACT_LOST = 2
    
    geometry_msgs/Point foot_position_rt_body
    uint8 contact
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FootStateArray(null);
    if (msg.states !== undefined) {
      resolved.states = new Array(msg.states.length);
      for (let i = 0; i < resolved.states.length; ++i) {
        resolved.states[i] = FootState.Resolve(msg.states[i]);
      }
    }
    else {
      resolved.states = []
    }

    return resolved;
    }
};

module.exports = FootStateArray;
