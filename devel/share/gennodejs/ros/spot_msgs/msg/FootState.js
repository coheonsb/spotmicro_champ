// Auto-generated. Do not edit!

// (in-package spot_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class FootState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.foot_position_rt_body = null;
      this.contact = null;
    }
    else {
      if (initObj.hasOwnProperty('foot_position_rt_body')) {
        this.foot_position_rt_body = initObj.foot_position_rt_body
      }
      else {
        this.foot_position_rt_body = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('contact')) {
        this.contact = initObj.contact
      }
      else {
        this.contact = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FootState
    // Serialize message field [foot_position_rt_body]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.foot_position_rt_body, buffer, bufferOffset);
    // Serialize message field [contact]
    bufferOffset = _serializer.uint8(obj.contact, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FootState
    let len;
    let data = new FootState(null);
    // Deserialize message field [foot_position_rt_body]
    data.foot_position_rt_body = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [contact]
    data.contact = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'spot_msgs/FootState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '524cf45b9d66134675b586174885a624';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new FootState(null);
    if (msg.foot_position_rt_body !== undefined) {
      resolved.foot_position_rt_body = geometry_msgs.msg.Point.Resolve(msg.foot_position_rt_body)
    }
    else {
      resolved.foot_position_rt_body = new geometry_msgs.msg.Point()
    }

    if (msg.contact !== undefined) {
      resolved.contact = msg.contact;
    }
    else {
      resolved.contact = 0
    }

    return resolved;
    }
};

// Constants for message
FootState.Constants = {
  CONTACT_UNKNOWN: 0,
  CONTACT_MADE: 1,
  CONTACT_LOST: 2,
}

module.exports = FootState;
