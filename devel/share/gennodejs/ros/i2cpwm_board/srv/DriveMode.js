// Auto-generated. Do not edit!

// (in-package i2cpwm_board.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Position = require('../msg/Position.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class DriveModeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mode = null;
      this.rpm = null;
      this.radius = null;
      this.track = null;
      this.scale = null;
      this.servos = null;
    }
    else {
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = '';
      }
      if (initObj.hasOwnProperty('rpm')) {
        this.rpm = initObj.rpm
      }
      else {
        this.rpm = 0.0;
      }
      if (initObj.hasOwnProperty('radius')) {
        this.radius = initObj.radius
      }
      else {
        this.radius = 0.0;
      }
      if (initObj.hasOwnProperty('track')) {
        this.track = initObj.track
      }
      else {
        this.track = 0.0;
      }
      if (initObj.hasOwnProperty('scale')) {
        this.scale = initObj.scale
      }
      else {
        this.scale = 0.0;
      }
      if (initObj.hasOwnProperty('servos')) {
        this.servos = initObj.servos
      }
      else {
        this.servos = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DriveModeRequest
    // Serialize message field [mode]
    bufferOffset = _serializer.string(obj.mode, buffer, bufferOffset);
    // Serialize message field [rpm]
    bufferOffset = _serializer.float32(obj.rpm, buffer, bufferOffset);
    // Serialize message field [radius]
    bufferOffset = _serializer.float32(obj.radius, buffer, bufferOffset);
    // Serialize message field [track]
    bufferOffset = _serializer.float32(obj.track, buffer, bufferOffset);
    // Serialize message field [scale]
    bufferOffset = _serializer.float32(obj.scale, buffer, bufferOffset);
    // Serialize message field [servos]
    // Serialize the length for message field [servos]
    bufferOffset = _serializer.uint32(obj.servos.length, buffer, bufferOffset);
    obj.servos.forEach((val) => {
      bufferOffset = Position.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DriveModeRequest
    let len;
    let data = new DriveModeRequest(null);
    // Deserialize message field [mode]
    data.mode = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [rpm]
    data.rpm = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [radius]
    data.radius = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [track]
    data.track = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [scale]
    data.scale = _deserializer.float32(buffer, bufferOffset);
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
    length += object.mode.length;
    length += 4 * object.servos.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'i2cpwm_board/DriveModeRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8696ff83760d5f4079edcd8ccb545ea0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # the drive_mode service is used to assigned servos to various drive modes
    # the drive modes determine how the assigned servos respond to geometry_msgs::Twist messages
    # drive modes are one of: ackerman, differential, or mecanum
    # to accurately convert velocity in m/s the controller needs to know three values:
    #   the RPM    - the maximum output speed available from the drive motors
    #   the radius - the drive wheel radius in meters
    #   the track  - the distance between the left and right wheels in meters
    # use the scale value to adjust incoming Twist values as needed to match the servo/motor capability
    
    
    string mode
    float32 rpm
    float32 radius
    float32 track
    float32 scale
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
    const resolved = new DriveModeRequest(null);
    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = ''
    }

    if (msg.rpm !== undefined) {
      resolved.rpm = msg.rpm;
    }
    else {
      resolved.rpm = 0.0
    }

    if (msg.radius !== undefined) {
      resolved.radius = msg.radius;
    }
    else {
      resolved.radius = 0.0
    }

    if (msg.track !== undefined) {
      resolved.track = msg.track;
    }
    else {
      resolved.track = 0.0
    }

    if (msg.scale !== undefined) {
      resolved.scale = msg.scale;
    }
    else {
      resolved.scale = 0.0
    }

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

class DriveModeResponse {
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
    // Serializes a message object of type DriveModeResponse
    // Serialize message field [error]
    bufferOffset = _serializer.int16(obj.error, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DriveModeResponse
    let len;
    let data = new DriveModeResponse(null);
    // Deserialize message field [error]
    data.error = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'i2cpwm_board/DriveModeResponse';
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
    const resolved = new DriveModeResponse(null);
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
  Request: DriveModeRequest,
  Response: DriveModeResponse,
  md5sum() { return 'e4da47a0d835738660a86a1db5528f89'; },
  datatype() { return 'i2cpwm_board/DriveMode'; }
};
