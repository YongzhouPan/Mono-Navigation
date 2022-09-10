// Auto-generated. Do not edit!

// (in-package tello_driver.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class MoveUpRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cm = null;
    }
    else {
      if (initObj.hasOwnProperty('cm')) {
        this.cm = initObj.cm
      }
      else {
        this.cm = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MoveUpRequest
    // Serialize message field [cm]
    bufferOffset = _serializer.uint8(obj.cm, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoveUpRequest
    let len;
    let data = new MoveUpRequest(null);
    // Deserialize message field [cm]
    data.cm = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tello_driver/MoveUpRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c312fc33b3f97db71360144ffc9717f8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8   cm
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MoveUpRequest(null);
    if (msg.cm !== undefined) {
      resolved.cm = msg.cm;
    }
    else {
      resolved.cm = 0
    }

    return resolved;
    }
};

class MoveUpResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.command_status = null;
    }
    else {
      if (initObj.hasOwnProperty('command_status')) {
        this.command_status = initObj.command_status
      }
      else {
        this.command_status = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MoveUpResponse
    // Serialize message field [command_status]
    bufferOffset = _serializer.bool(obj.command_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoveUpResponse
    let len;
    let data = new MoveUpResponse(null);
    // Deserialize message field [command_status]
    data.command_status = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tello_driver/MoveUpResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '943f51d9faa4a44a232934ed3bd1b114';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool    command_status
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MoveUpResponse(null);
    if (msg.command_status !== undefined) {
      resolved.command_status = msg.command_status;
    }
    else {
      resolved.command_status = false
    }

    return resolved;
    }
};

module.exports = {
  Request: MoveUpRequest,
  Response: MoveUpResponse,
  md5sum() { return '93e098705f3e00df20d27935dc5efafa'; },
  datatype() { return 'tello_driver/MoveUp'; }
};
