// Auto-generated. Do not edit!

// (in-package mycar_description.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class odom {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.child_frame_id = null;
      this.x = null;
      this.y = null;
      this.z = null;
      this.qx = null;
      this.qy = null;
      this.qz = null;
      this.linear_x = null;
      this.linear_y = null;
      this.linear_z = null;
      this.angular_x = null;
      this.angular_y = null;
      this.angular_z = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('child_frame_id')) {
        this.child_frame_id = initObj.child_frame_id
      }
      else {
        this.child_frame_id = '';
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = 0.0;
      }
      if (initObj.hasOwnProperty('qx')) {
        this.qx = initObj.qx
      }
      else {
        this.qx = 0.0;
      }
      if (initObj.hasOwnProperty('qy')) {
        this.qy = initObj.qy
      }
      else {
        this.qy = 0.0;
      }
      if (initObj.hasOwnProperty('qz')) {
        this.qz = initObj.qz
      }
      else {
        this.qz = 0.0;
      }
      if (initObj.hasOwnProperty('linear_x')) {
        this.linear_x = initObj.linear_x
      }
      else {
        this.linear_x = 0.0;
      }
      if (initObj.hasOwnProperty('linear_y')) {
        this.linear_y = initObj.linear_y
      }
      else {
        this.linear_y = 0.0;
      }
      if (initObj.hasOwnProperty('linear_z')) {
        this.linear_z = initObj.linear_z
      }
      else {
        this.linear_z = 0.0;
      }
      if (initObj.hasOwnProperty('angular_x')) {
        this.angular_x = initObj.angular_x
      }
      else {
        this.angular_x = 0.0;
      }
      if (initObj.hasOwnProperty('angular_y')) {
        this.angular_y = initObj.angular_y
      }
      else {
        this.angular_y = 0.0;
      }
      if (initObj.hasOwnProperty('angular_z')) {
        this.angular_z = initObj.angular_z
      }
      else {
        this.angular_z = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type odom
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [child_frame_id]
    bufferOffset = _serializer.string(obj.child_frame_id, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _serializer.float64(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float64(obj.y, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = _serializer.float64(obj.z, buffer, bufferOffset);
    // Serialize message field [qx]
    bufferOffset = _serializer.float64(obj.qx, buffer, bufferOffset);
    // Serialize message field [qy]
    bufferOffset = _serializer.float64(obj.qy, buffer, bufferOffset);
    // Serialize message field [qz]
    bufferOffset = _serializer.float64(obj.qz, buffer, bufferOffset);
    // Serialize message field [linear_x]
    bufferOffset = _serializer.float64(obj.linear_x, buffer, bufferOffset);
    // Serialize message field [linear_y]
    bufferOffset = _serializer.float64(obj.linear_y, buffer, bufferOffset);
    // Serialize message field [linear_z]
    bufferOffset = _serializer.float64(obj.linear_z, buffer, bufferOffset);
    // Serialize message field [angular_x]
    bufferOffset = _serializer.float64(obj.angular_x, buffer, bufferOffset);
    // Serialize message field [angular_y]
    bufferOffset = _serializer.float64(obj.angular_y, buffer, bufferOffset);
    // Serialize message field [angular_z]
    bufferOffset = _serializer.float64(obj.angular_z, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type odom
    let len;
    let data = new odom(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [child_frame_id]
    data.child_frame_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [qx]
    data.qx = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [qy]
    data.qy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [qz]
    data.qz = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [linear_x]
    data.linear_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [linear_y]
    data.linear_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [linear_z]
    data.linear_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [angular_x]
    data.angular_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [angular_y]
    data.angular_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [angular_z]
    data.angular_z = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.child_frame_id);
    return length + 100;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mycar_description/odom';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '25cda7db278c70bdd54043a3be01ed45';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    string child_frame_id
    float64 x
    float64 y
    float64 z
    float64 qx
    float64 qy
    float64 qz
    float64 linear_x
    float64 linear_y
    float64 linear_z
    float64 angular_x
    float64 angular_y
    float64 angular_z
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new odom(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.child_frame_id !== undefined) {
      resolved.child_frame_id = msg.child_frame_id;
    }
    else {
      resolved.child_frame_id = ''
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.z !== undefined) {
      resolved.z = msg.z;
    }
    else {
      resolved.z = 0.0
    }

    if (msg.qx !== undefined) {
      resolved.qx = msg.qx;
    }
    else {
      resolved.qx = 0.0
    }

    if (msg.qy !== undefined) {
      resolved.qy = msg.qy;
    }
    else {
      resolved.qy = 0.0
    }

    if (msg.qz !== undefined) {
      resolved.qz = msg.qz;
    }
    else {
      resolved.qz = 0.0
    }

    if (msg.linear_x !== undefined) {
      resolved.linear_x = msg.linear_x;
    }
    else {
      resolved.linear_x = 0.0
    }

    if (msg.linear_y !== undefined) {
      resolved.linear_y = msg.linear_y;
    }
    else {
      resolved.linear_y = 0.0
    }

    if (msg.linear_z !== undefined) {
      resolved.linear_z = msg.linear_z;
    }
    else {
      resolved.linear_z = 0.0
    }

    if (msg.angular_x !== undefined) {
      resolved.angular_x = msg.angular_x;
    }
    else {
      resolved.angular_x = 0.0
    }

    if (msg.angular_y !== undefined) {
      resolved.angular_y = msg.angular_y;
    }
    else {
      resolved.angular_y = 0.0
    }

    if (msg.angular_z !== undefined) {
      resolved.angular_z = msg.angular_z;
    }
    else {
      resolved.angular_z = 0.0
    }

    return resolved;
    }
};

module.exports = odom;
