// Auto-generated. Do not edit!

// (in-package edumip_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class EduMipState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.setpoint_phi_dot = null;
      this.setpoint_gamma_dot = null;
      this.setpoint_phi = null;
      this.phi = null;
      this.setpoint_gamma = null;
      this.gamma = null;
      this.setpoint_theta = null;
      this.theta = null;
      this.d1_u = null;
      this.d3_u = null;
      this.dutyL = null;
      this.dutyR = null;
      this.wheel_angle_L = null;
      this.wheel_angle_R = null;
      this.body_frame_easting = null;
      this.body_frame_northing = null;
      this.body_frame_heading = null;
      this.vBatt = null;
      this.armed = null;
      this.running = null;
    }
    else {
      if (initObj.hasOwnProperty('setpoint_phi_dot')) {
        this.setpoint_phi_dot = initObj.setpoint_phi_dot
      }
      else {
        this.setpoint_phi_dot = 0.0;
      }
      if (initObj.hasOwnProperty('setpoint_gamma_dot')) {
        this.setpoint_gamma_dot = initObj.setpoint_gamma_dot
      }
      else {
        this.setpoint_gamma_dot = 0.0;
      }
      if (initObj.hasOwnProperty('setpoint_phi')) {
        this.setpoint_phi = initObj.setpoint_phi
      }
      else {
        this.setpoint_phi = 0.0;
      }
      if (initObj.hasOwnProperty('phi')) {
        this.phi = initObj.phi
      }
      else {
        this.phi = 0.0;
      }
      if (initObj.hasOwnProperty('setpoint_gamma')) {
        this.setpoint_gamma = initObj.setpoint_gamma
      }
      else {
        this.setpoint_gamma = 0.0;
      }
      if (initObj.hasOwnProperty('gamma')) {
        this.gamma = initObj.gamma
      }
      else {
        this.gamma = 0.0;
      }
      if (initObj.hasOwnProperty('setpoint_theta')) {
        this.setpoint_theta = initObj.setpoint_theta
      }
      else {
        this.setpoint_theta = 0.0;
      }
      if (initObj.hasOwnProperty('theta')) {
        this.theta = initObj.theta
      }
      else {
        this.theta = 0.0;
      }
      if (initObj.hasOwnProperty('d1_u')) {
        this.d1_u = initObj.d1_u
      }
      else {
        this.d1_u = 0.0;
      }
      if (initObj.hasOwnProperty('d3_u')) {
        this.d3_u = initObj.d3_u
      }
      else {
        this.d3_u = 0.0;
      }
      if (initObj.hasOwnProperty('dutyL')) {
        this.dutyL = initObj.dutyL
      }
      else {
        this.dutyL = 0.0;
      }
      if (initObj.hasOwnProperty('dutyR')) {
        this.dutyR = initObj.dutyR
      }
      else {
        this.dutyR = 0.0;
      }
      if (initObj.hasOwnProperty('wheel_angle_L')) {
        this.wheel_angle_L = initObj.wheel_angle_L
      }
      else {
        this.wheel_angle_L = 0.0;
      }
      if (initObj.hasOwnProperty('wheel_angle_R')) {
        this.wheel_angle_R = initObj.wheel_angle_R
      }
      else {
        this.wheel_angle_R = 0.0;
      }
      if (initObj.hasOwnProperty('body_frame_easting')) {
        this.body_frame_easting = initObj.body_frame_easting
      }
      else {
        this.body_frame_easting = 0.0;
      }
      if (initObj.hasOwnProperty('body_frame_northing')) {
        this.body_frame_northing = initObj.body_frame_northing
      }
      else {
        this.body_frame_northing = 0.0;
      }
      if (initObj.hasOwnProperty('body_frame_heading')) {
        this.body_frame_heading = initObj.body_frame_heading
      }
      else {
        this.body_frame_heading = 0.0;
      }
      if (initObj.hasOwnProperty('vBatt')) {
        this.vBatt = initObj.vBatt
      }
      else {
        this.vBatt = 0.0;
      }
      if (initObj.hasOwnProperty('armed')) {
        this.armed = initObj.armed
      }
      else {
        this.armed = false;
      }
      if (initObj.hasOwnProperty('running')) {
        this.running = initObj.running
      }
      else {
        this.running = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EduMipState
    // Serialize message field [setpoint_phi_dot]
    bufferOffset = _serializer.float32(obj.setpoint_phi_dot, buffer, bufferOffset);
    // Serialize message field [setpoint_gamma_dot]
    bufferOffset = _serializer.float32(obj.setpoint_gamma_dot, buffer, bufferOffset);
    // Serialize message field [setpoint_phi]
    bufferOffset = _serializer.float32(obj.setpoint_phi, buffer, bufferOffset);
    // Serialize message field [phi]
    bufferOffset = _serializer.float32(obj.phi, buffer, bufferOffset);
    // Serialize message field [setpoint_gamma]
    bufferOffset = _serializer.float32(obj.setpoint_gamma, buffer, bufferOffset);
    // Serialize message field [gamma]
    bufferOffset = _serializer.float32(obj.gamma, buffer, bufferOffset);
    // Serialize message field [setpoint_theta]
    bufferOffset = _serializer.float32(obj.setpoint_theta, buffer, bufferOffset);
    // Serialize message field [theta]
    bufferOffset = _serializer.float32(obj.theta, buffer, bufferOffset);
    // Serialize message field [d1_u]
    bufferOffset = _serializer.float32(obj.d1_u, buffer, bufferOffset);
    // Serialize message field [d3_u]
    bufferOffset = _serializer.float32(obj.d3_u, buffer, bufferOffset);
    // Serialize message field [dutyL]
    bufferOffset = _serializer.float32(obj.dutyL, buffer, bufferOffset);
    // Serialize message field [dutyR]
    bufferOffset = _serializer.float32(obj.dutyR, buffer, bufferOffset);
    // Serialize message field [wheel_angle_L]
    bufferOffset = _serializer.float32(obj.wheel_angle_L, buffer, bufferOffset);
    // Serialize message field [wheel_angle_R]
    bufferOffset = _serializer.float32(obj.wheel_angle_R, buffer, bufferOffset);
    // Serialize message field [body_frame_easting]
    bufferOffset = _serializer.float32(obj.body_frame_easting, buffer, bufferOffset);
    // Serialize message field [body_frame_northing]
    bufferOffset = _serializer.float32(obj.body_frame_northing, buffer, bufferOffset);
    // Serialize message field [body_frame_heading]
    bufferOffset = _serializer.float32(obj.body_frame_heading, buffer, bufferOffset);
    // Serialize message field [vBatt]
    bufferOffset = _serializer.float32(obj.vBatt, buffer, bufferOffset);
    // Serialize message field [armed]
    bufferOffset = _serializer.bool(obj.armed, buffer, bufferOffset);
    // Serialize message field [running]
    bufferOffset = _serializer.bool(obj.running, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EduMipState
    let len;
    let data = new EduMipState(null);
    // Deserialize message field [setpoint_phi_dot]
    data.setpoint_phi_dot = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [setpoint_gamma_dot]
    data.setpoint_gamma_dot = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [setpoint_phi]
    data.setpoint_phi = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [phi]
    data.phi = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [setpoint_gamma]
    data.setpoint_gamma = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gamma]
    data.gamma = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [setpoint_theta]
    data.setpoint_theta = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [theta]
    data.theta = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [d1_u]
    data.d1_u = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [d3_u]
    data.d3_u = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [dutyL]
    data.dutyL = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [dutyR]
    data.dutyR = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [wheel_angle_L]
    data.wheel_angle_L = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [wheel_angle_R]
    data.wheel_angle_R = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [body_frame_easting]
    data.body_frame_easting = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [body_frame_northing]
    data.body_frame_northing = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [body_frame_heading]
    data.body_frame_heading = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vBatt]
    data.vBatt = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [armed]
    data.armed = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [running]
    data.running = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 74;
  }

  static datatype() {
    // Returns string type for a message object
    return 'edumip_msgs/EduMipState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd8a26db22626d6362109a0c1a1de3a6a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 setpoint_phi_dot    # commanded average  wheel vel ~ trans vel
    float32 setpoint_gamma_dot  # commanded steering angle vel ~ angualr vel
    float32 setpoint_phi        # commanded average wheel pos
    float32 phi                 # average wheel pos
    float32 setpoint_gamma      # commanded steering angle
    float32 gamma               # steering angle
    float32 setpoint_theta      # commanded body tilt
    float32 theta               # body tilt
    float32 d1_u                # control command for balnce loop
    float32 d3_u                # control command for steering loop
    float32 dutyL               # left  motor duty cycle
    float32 dutyR               # right motor duty cycle
    
    # 2017-02-22 LLW Added odometry data 
    float32 wheel_angle_L       # total rotation of left  wheel (radians) (+ is forward)
    float32 wheel_angle_R       # total rotation of right wheel (radians) (+ is forward)
    float32 body_frame_easting  # displacemnt of body frame (m) (+ is East )
    float32 body_frame_northing # displacemnt of body frame (m) (+ is North)
    float32 body_frame_heading  # compass heading (radians) 
    
    float32 vBatt               # battery voltage in volts
    bool    armed               # controllers are active
    bool    running             # balance program is running
    
     
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EduMipState(null);
    if (msg.setpoint_phi_dot !== undefined) {
      resolved.setpoint_phi_dot = msg.setpoint_phi_dot;
    }
    else {
      resolved.setpoint_phi_dot = 0.0
    }

    if (msg.setpoint_gamma_dot !== undefined) {
      resolved.setpoint_gamma_dot = msg.setpoint_gamma_dot;
    }
    else {
      resolved.setpoint_gamma_dot = 0.0
    }

    if (msg.setpoint_phi !== undefined) {
      resolved.setpoint_phi = msg.setpoint_phi;
    }
    else {
      resolved.setpoint_phi = 0.0
    }

    if (msg.phi !== undefined) {
      resolved.phi = msg.phi;
    }
    else {
      resolved.phi = 0.0
    }

    if (msg.setpoint_gamma !== undefined) {
      resolved.setpoint_gamma = msg.setpoint_gamma;
    }
    else {
      resolved.setpoint_gamma = 0.0
    }

    if (msg.gamma !== undefined) {
      resolved.gamma = msg.gamma;
    }
    else {
      resolved.gamma = 0.0
    }

    if (msg.setpoint_theta !== undefined) {
      resolved.setpoint_theta = msg.setpoint_theta;
    }
    else {
      resolved.setpoint_theta = 0.0
    }

    if (msg.theta !== undefined) {
      resolved.theta = msg.theta;
    }
    else {
      resolved.theta = 0.0
    }

    if (msg.d1_u !== undefined) {
      resolved.d1_u = msg.d1_u;
    }
    else {
      resolved.d1_u = 0.0
    }

    if (msg.d3_u !== undefined) {
      resolved.d3_u = msg.d3_u;
    }
    else {
      resolved.d3_u = 0.0
    }

    if (msg.dutyL !== undefined) {
      resolved.dutyL = msg.dutyL;
    }
    else {
      resolved.dutyL = 0.0
    }

    if (msg.dutyR !== undefined) {
      resolved.dutyR = msg.dutyR;
    }
    else {
      resolved.dutyR = 0.0
    }

    if (msg.wheel_angle_L !== undefined) {
      resolved.wheel_angle_L = msg.wheel_angle_L;
    }
    else {
      resolved.wheel_angle_L = 0.0
    }

    if (msg.wheel_angle_R !== undefined) {
      resolved.wheel_angle_R = msg.wheel_angle_R;
    }
    else {
      resolved.wheel_angle_R = 0.0
    }

    if (msg.body_frame_easting !== undefined) {
      resolved.body_frame_easting = msg.body_frame_easting;
    }
    else {
      resolved.body_frame_easting = 0.0
    }

    if (msg.body_frame_northing !== undefined) {
      resolved.body_frame_northing = msg.body_frame_northing;
    }
    else {
      resolved.body_frame_northing = 0.0
    }

    if (msg.body_frame_heading !== undefined) {
      resolved.body_frame_heading = msg.body_frame_heading;
    }
    else {
      resolved.body_frame_heading = 0.0
    }

    if (msg.vBatt !== undefined) {
      resolved.vBatt = msg.vBatt;
    }
    else {
      resolved.vBatt = 0.0
    }

    if (msg.armed !== undefined) {
      resolved.armed = msg.armed;
    }
    else {
      resolved.armed = false
    }

    if (msg.running !== undefined) {
      resolved.running = msg.running;
    }
    else {
      resolved.running = false
    }

    return resolved;
    }
};

module.exports = EduMipState;
