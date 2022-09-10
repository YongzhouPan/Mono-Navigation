// Auto-generated. Do not edit!

// (in-package tello_driver.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class TelloStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.height_m = null;
      this.speed_northing_mps = null;
      this.speed_easting_mps = null;
      this.speed_horizontal_mps = null;
      this.speed_vertical_mps = null;
      this.flight_time_sec = null;
      this.imu_state = null;
      this.pressure_state = null;
      this.down_visual_state = null;
      this.power_state = null;
      this.battery_state = null;
      this.gravity_state = null;
      this.wind_state = null;
      this.imu_calibration_state = null;
      this.battery_percentage = null;
      this.drone_fly_time_left_sec = null;
      this.drone_battery_left_sec = null;
      this.is_flying = null;
      this.is_on_ground = null;
      this.is_em_open = null;
      this.is_drone_hover = null;
      this.is_outage_recording = null;
      this.is_battery_low = null;
      this.is_battery_lower = null;
      this.is_factory_mode = null;
      this.fly_mode = null;
      this.throw_takeoff_timer_sec = null;
      this.camera_state = null;
      this.electrical_machinery_state = null;
      this.front_in = null;
      this.front_out = null;
      this.front_lsc = null;
      this.temperature_height_m = null;
      this.cmd_roll_ratio = null;
      this.cmd_pitch_ratio = null;
      this.cmd_yaw_ratio = null;
      this.cmd_vspeed_ratio = null;
      this.cmd_fast_mode = null;
    }
    else {
      if (initObj.hasOwnProperty('height_m')) {
        this.height_m = initObj.height_m
      }
      else {
        this.height_m = 0.0;
      }
      if (initObj.hasOwnProperty('speed_northing_mps')) {
        this.speed_northing_mps = initObj.speed_northing_mps
      }
      else {
        this.speed_northing_mps = 0.0;
      }
      if (initObj.hasOwnProperty('speed_easting_mps')) {
        this.speed_easting_mps = initObj.speed_easting_mps
      }
      else {
        this.speed_easting_mps = 0.0;
      }
      if (initObj.hasOwnProperty('speed_horizontal_mps')) {
        this.speed_horizontal_mps = initObj.speed_horizontal_mps
      }
      else {
        this.speed_horizontal_mps = 0.0;
      }
      if (initObj.hasOwnProperty('speed_vertical_mps')) {
        this.speed_vertical_mps = initObj.speed_vertical_mps
      }
      else {
        this.speed_vertical_mps = 0.0;
      }
      if (initObj.hasOwnProperty('flight_time_sec')) {
        this.flight_time_sec = initObj.flight_time_sec
      }
      else {
        this.flight_time_sec = 0.0;
      }
      if (initObj.hasOwnProperty('imu_state')) {
        this.imu_state = initObj.imu_state
      }
      else {
        this.imu_state = false;
      }
      if (initObj.hasOwnProperty('pressure_state')) {
        this.pressure_state = initObj.pressure_state
      }
      else {
        this.pressure_state = false;
      }
      if (initObj.hasOwnProperty('down_visual_state')) {
        this.down_visual_state = initObj.down_visual_state
      }
      else {
        this.down_visual_state = false;
      }
      if (initObj.hasOwnProperty('power_state')) {
        this.power_state = initObj.power_state
      }
      else {
        this.power_state = false;
      }
      if (initObj.hasOwnProperty('battery_state')) {
        this.battery_state = initObj.battery_state
      }
      else {
        this.battery_state = false;
      }
      if (initObj.hasOwnProperty('gravity_state')) {
        this.gravity_state = initObj.gravity_state
      }
      else {
        this.gravity_state = false;
      }
      if (initObj.hasOwnProperty('wind_state')) {
        this.wind_state = initObj.wind_state
      }
      else {
        this.wind_state = false;
      }
      if (initObj.hasOwnProperty('imu_calibration_state')) {
        this.imu_calibration_state = initObj.imu_calibration_state
      }
      else {
        this.imu_calibration_state = 0;
      }
      if (initObj.hasOwnProperty('battery_percentage')) {
        this.battery_percentage = initObj.battery_percentage
      }
      else {
        this.battery_percentage = 0;
      }
      if (initObj.hasOwnProperty('drone_fly_time_left_sec')) {
        this.drone_fly_time_left_sec = initObj.drone_fly_time_left_sec
      }
      else {
        this.drone_fly_time_left_sec = 0.0;
      }
      if (initObj.hasOwnProperty('drone_battery_left_sec')) {
        this.drone_battery_left_sec = initObj.drone_battery_left_sec
      }
      else {
        this.drone_battery_left_sec = 0.0;
      }
      if (initObj.hasOwnProperty('is_flying')) {
        this.is_flying = initObj.is_flying
      }
      else {
        this.is_flying = false;
      }
      if (initObj.hasOwnProperty('is_on_ground')) {
        this.is_on_ground = initObj.is_on_ground
      }
      else {
        this.is_on_ground = false;
      }
      if (initObj.hasOwnProperty('is_em_open')) {
        this.is_em_open = initObj.is_em_open
      }
      else {
        this.is_em_open = false;
      }
      if (initObj.hasOwnProperty('is_drone_hover')) {
        this.is_drone_hover = initObj.is_drone_hover
      }
      else {
        this.is_drone_hover = false;
      }
      if (initObj.hasOwnProperty('is_outage_recording')) {
        this.is_outage_recording = initObj.is_outage_recording
      }
      else {
        this.is_outage_recording = false;
      }
      if (initObj.hasOwnProperty('is_battery_low')) {
        this.is_battery_low = initObj.is_battery_low
      }
      else {
        this.is_battery_low = false;
      }
      if (initObj.hasOwnProperty('is_battery_lower')) {
        this.is_battery_lower = initObj.is_battery_lower
      }
      else {
        this.is_battery_lower = false;
      }
      if (initObj.hasOwnProperty('is_factory_mode')) {
        this.is_factory_mode = initObj.is_factory_mode
      }
      else {
        this.is_factory_mode = false;
      }
      if (initObj.hasOwnProperty('fly_mode')) {
        this.fly_mode = initObj.fly_mode
      }
      else {
        this.fly_mode = 0;
      }
      if (initObj.hasOwnProperty('throw_takeoff_timer_sec')) {
        this.throw_takeoff_timer_sec = initObj.throw_takeoff_timer_sec
      }
      else {
        this.throw_takeoff_timer_sec = 0.0;
      }
      if (initObj.hasOwnProperty('camera_state')) {
        this.camera_state = initObj.camera_state
      }
      else {
        this.camera_state = 0;
      }
      if (initObj.hasOwnProperty('electrical_machinery_state')) {
        this.electrical_machinery_state = initObj.electrical_machinery_state
      }
      else {
        this.electrical_machinery_state = 0;
      }
      if (initObj.hasOwnProperty('front_in')) {
        this.front_in = initObj.front_in
      }
      else {
        this.front_in = false;
      }
      if (initObj.hasOwnProperty('front_out')) {
        this.front_out = initObj.front_out
      }
      else {
        this.front_out = false;
      }
      if (initObj.hasOwnProperty('front_lsc')) {
        this.front_lsc = initObj.front_lsc
      }
      else {
        this.front_lsc = false;
      }
      if (initObj.hasOwnProperty('temperature_height_m')) {
        this.temperature_height_m = initObj.temperature_height_m
      }
      else {
        this.temperature_height_m = 0.0;
      }
      if (initObj.hasOwnProperty('cmd_roll_ratio')) {
        this.cmd_roll_ratio = initObj.cmd_roll_ratio
      }
      else {
        this.cmd_roll_ratio = 0.0;
      }
      if (initObj.hasOwnProperty('cmd_pitch_ratio')) {
        this.cmd_pitch_ratio = initObj.cmd_pitch_ratio
      }
      else {
        this.cmd_pitch_ratio = 0.0;
      }
      if (initObj.hasOwnProperty('cmd_yaw_ratio')) {
        this.cmd_yaw_ratio = initObj.cmd_yaw_ratio
      }
      else {
        this.cmd_yaw_ratio = 0.0;
      }
      if (initObj.hasOwnProperty('cmd_vspeed_ratio')) {
        this.cmd_vspeed_ratio = initObj.cmd_vspeed_ratio
      }
      else {
        this.cmd_vspeed_ratio = 0.0;
      }
      if (initObj.hasOwnProperty('cmd_fast_mode')) {
        this.cmd_fast_mode = initObj.cmd_fast_mode
      }
      else {
        this.cmd_fast_mode = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TelloStatus
    // Serialize message field [height_m]
    bufferOffset = _serializer.float32(obj.height_m, buffer, bufferOffset);
    // Serialize message field [speed_northing_mps]
    bufferOffset = _serializer.float32(obj.speed_northing_mps, buffer, bufferOffset);
    // Serialize message field [speed_easting_mps]
    bufferOffset = _serializer.float32(obj.speed_easting_mps, buffer, bufferOffset);
    // Serialize message field [speed_horizontal_mps]
    bufferOffset = _serializer.float32(obj.speed_horizontal_mps, buffer, bufferOffset);
    // Serialize message field [speed_vertical_mps]
    bufferOffset = _serializer.float32(obj.speed_vertical_mps, buffer, bufferOffset);
    // Serialize message field [flight_time_sec]
    bufferOffset = _serializer.float32(obj.flight_time_sec, buffer, bufferOffset);
    // Serialize message field [imu_state]
    bufferOffset = _serializer.bool(obj.imu_state, buffer, bufferOffset);
    // Serialize message field [pressure_state]
    bufferOffset = _serializer.bool(obj.pressure_state, buffer, bufferOffset);
    // Serialize message field [down_visual_state]
    bufferOffset = _serializer.bool(obj.down_visual_state, buffer, bufferOffset);
    // Serialize message field [power_state]
    bufferOffset = _serializer.bool(obj.power_state, buffer, bufferOffset);
    // Serialize message field [battery_state]
    bufferOffset = _serializer.bool(obj.battery_state, buffer, bufferOffset);
    // Serialize message field [gravity_state]
    bufferOffset = _serializer.bool(obj.gravity_state, buffer, bufferOffset);
    // Serialize message field [wind_state]
    bufferOffset = _serializer.bool(obj.wind_state, buffer, bufferOffset);
    // Serialize message field [imu_calibration_state]
    bufferOffset = _serializer.uint8(obj.imu_calibration_state, buffer, bufferOffset);
    // Serialize message field [battery_percentage]
    bufferOffset = _serializer.uint8(obj.battery_percentage, buffer, bufferOffset);
    // Serialize message field [drone_fly_time_left_sec]
    bufferOffset = _serializer.float32(obj.drone_fly_time_left_sec, buffer, bufferOffset);
    // Serialize message field [drone_battery_left_sec]
    bufferOffset = _serializer.float32(obj.drone_battery_left_sec, buffer, bufferOffset);
    // Serialize message field [is_flying]
    bufferOffset = _serializer.bool(obj.is_flying, buffer, bufferOffset);
    // Serialize message field [is_on_ground]
    bufferOffset = _serializer.bool(obj.is_on_ground, buffer, bufferOffset);
    // Serialize message field [is_em_open]
    bufferOffset = _serializer.bool(obj.is_em_open, buffer, bufferOffset);
    // Serialize message field [is_drone_hover]
    bufferOffset = _serializer.bool(obj.is_drone_hover, buffer, bufferOffset);
    // Serialize message field [is_outage_recording]
    bufferOffset = _serializer.bool(obj.is_outage_recording, buffer, bufferOffset);
    // Serialize message field [is_battery_low]
    bufferOffset = _serializer.bool(obj.is_battery_low, buffer, bufferOffset);
    // Serialize message field [is_battery_lower]
    bufferOffset = _serializer.bool(obj.is_battery_lower, buffer, bufferOffset);
    // Serialize message field [is_factory_mode]
    bufferOffset = _serializer.bool(obj.is_factory_mode, buffer, bufferOffset);
    // Serialize message field [fly_mode]
    bufferOffset = _serializer.uint8(obj.fly_mode, buffer, bufferOffset);
    // Serialize message field [throw_takeoff_timer_sec]
    bufferOffset = _serializer.float32(obj.throw_takeoff_timer_sec, buffer, bufferOffset);
    // Serialize message field [camera_state]
    bufferOffset = _serializer.uint8(obj.camera_state, buffer, bufferOffset);
    // Serialize message field [electrical_machinery_state]
    bufferOffset = _serializer.uint8(obj.electrical_machinery_state, buffer, bufferOffset);
    // Serialize message field [front_in]
    bufferOffset = _serializer.bool(obj.front_in, buffer, bufferOffset);
    // Serialize message field [front_out]
    bufferOffset = _serializer.bool(obj.front_out, buffer, bufferOffset);
    // Serialize message field [front_lsc]
    bufferOffset = _serializer.bool(obj.front_lsc, buffer, bufferOffset);
    // Serialize message field [temperature_height_m]
    bufferOffset = _serializer.float32(obj.temperature_height_m, buffer, bufferOffset);
    // Serialize message field [cmd_roll_ratio]
    bufferOffset = _serializer.float32(obj.cmd_roll_ratio, buffer, bufferOffset);
    // Serialize message field [cmd_pitch_ratio]
    bufferOffset = _serializer.float32(obj.cmd_pitch_ratio, buffer, bufferOffset);
    // Serialize message field [cmd_yaw_ratio]
    bufferOffset = _serializer.float32(obj.cmd_yaw_ratio, buffer, bufferOffset);
    // Serialize message field [cmd_vspeed_ratio]
    bufferOffset = _serializer.float32(obj.cmd_vspeed_ratio, buffer, bufferOffset);
    // Serialize message field [cmd_fast_mode]
    bufferOffset = _serializer.bool(obj.cmd_fast_mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TelloStatus
    let len;
    let data = new TelloStatus(null);
    // Deserialize message field [height_m]
    data.height_m = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [speed_northing_mps]
    data.speed_northing_mps = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [speed_easting_mps]
    data.speed_easting_mps = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [speed_horizontal_mps]
    data.speed_horizontal_mps = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [speed_vertical_mps]
    data.speed_vertical_mps = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [flight_time_sec]
    data.flight_time_sec = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [imu_state]
    data.imu_state = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [pressure_state]
    data.pressure_state = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [down_visual_state]
    data.down_visual_state = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [power_state]
    data.power_state = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [battery_state]
    data.battery_state = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [gravity_state]
    data.gravity_state = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [wind_state]
    data.wind_state = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [imu_calibration_state]
    data.imu_calibration_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [battery_percentage]
    data.battery_percentage = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [drone_fly_time_left_sec]
    data.drone_fly_time_left_sec = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [drone_battery_left_sec]
    data.drone_battery_left_sec = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [is_flying]
    data.is_flying = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_on_ground]
    data.is_on_ground = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_em_open]
    data.is_em_open = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_drone_hover]
    data.is_drone_hover = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_outage_recording]
    data.is_outage_recording = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_battery_low]
    data.is_battery_low = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_battery_lower]
    data.is_battery_lower = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_factory_mode]
    data.is_factory_mode = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [fly_mode]
    data.fly_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [throw_takeoff_timer_sec]
    data.throw_takeoff_timer_sec = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [camera_state]
    data.camera_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [electrical_machinery_state]
    data.electrical_machinery_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [front_in]
    data.front_in = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [front_out]
    data.front_out = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [front_lsc]
    data.front_lsc = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [temperature_height_m]
    data.temperature_height_m = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [cmd_roll_ratio]
    data.cmd_roll_ratio = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [cmd_pitch_ratio]
    data.cmd_pitch_ratio = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [cmd_yaw_ratio]
    data.cmd_yaw_ratio = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [cmd_vspeed_ratio]
    data.cmd_vspeed_ratio = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [cmd_fast_mode]
    data.cmd_fast_mode = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 80;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tello_driver/TelloStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e6d1629583c9b3a337a806afc71e19f7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Non-negative; calibrated to takeoff altitude; auto-calib if falls below takeoff height; inaccurate near ground
    float32 height_m
    
    float32 speed_northing_mps
    float32 speed_easting_mps
    float32 speed_horizontal_mps
    float32 speed_vertical_mps
    
    float32 flight_time_sec
    
    bool imu_state
    bool pressure_state
    bool down_visual_state
    bool power_state
    bool battery_state
    bool gravity_state
    bool wind_state
    
    uint8 imu_calibration_state
    uint8 battery_percentage
    float32 drone_fly_time_left_sec
    float32 drone_battery_left_sec
    
    bool is_flying
    bool is_on_ground
    # is_em_open True in flight, False when landed
    bool is_em_open
    bool is_drone_hover
    bool is_outage_recording
    bool is_battery_low
    bool is_battery_lower
    bool is_factory_mode
    
    # flymode=1: landed; =6: flying
    uint8 fly_mode
    float32 throw_takeoff_timer_sec
    uint8 camera_state
    
    uint8 electrical_machinery_state
    
    bool front_in
    bool front_out
    bool front_lsc
    
    float32 temperature_height_m
    
    float32 cmd_roll_ratio
    float32 cmd_pitch_ratio
    float32 cmd_yaw_ratio
    float32 cmd_vspeed_ratio
    bool cmd_fast_mode
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TelloStatus(null);
    if (msg.height_m !== undefined) {
      resolved.height_m = msg.height_m;
    }
    else {
      resolved.height_m = 0.0
    }

    if (msg.speed_northing_mps !== undefined) {
      resolved.speed_northing_mps = msg.speed_northing_mps;
    }
    else {
      resolved.speed_northing_mps = 0.0
    }

    if (msg.speed_easting_mps !== undefined) {
      resolved.speed_easting_mps = msg.speed_easting_mps;
    }
    else {
      resolved.speed_easting_mps = 0.0
    }

    if (msg.speed_horizontal_mps !== undefined) {
      resolved.speed_horizontal_mps = msg.speed_horizontal_mps;
    }
    else {
      resolved.speed_horizontal_mps = 0.0
    }

    if (msg.speed_vertical_mps !== undefined) {
      resolved.speed_vertical_mps = msg.speed_vertical_mps;
    }
    else {
      resolved.speed_vertical_mps = 0.0
    }

    if (msg.flight_time_sec !== undefined) {
      resolved.flight_time_sec = msg.flight_time_sec;
    }
    else {
      resolved.flight_time_sec = 0.0
    }

    if (msg.imu_state !== undefined) {
      resolved.imu_state = msg.imu_state;
    }
    else {
      resolved.imu_state = false
    }

    if (msg.pressure_state !== undefined) {
      resolved.pressure_state = msg.pressure_state;
    }
    else {
      resolved.pressure_state = false
    }

    if (msg.down_visual_state !== undefined) {
      resolved.down_visual_state = msg.down_visual_state;
    }
    else {
      resolved.down_visual_state = false
    }

    if (msg.power_state !== undefined) {
      resolved.power_state = msg.power_state;
    }
    else {
      resolved.power_state = false
    }

    if (msg.battery_state !== undefined) {
      resolved.battery_state = msg.battery_state;
    }
    else {
      resolved.battery_state = false
    }

    if (msg.gravity_state !== undefined) {
      resolved.gravity_state = msg.gravity_state;
    }
    else {
      resolved.gravity_state = false
    }

    if (msg.wind_state !== undefined) {
      resolved.wind_state = msg.wind_state;
    }
    else {
      resolved.wind_state = false
    }

    if (msg.imu_calibration_state !== undefined) {
      resolved.imu_calibration_state = msg.imu_calibration_state;
    }
    else {
      resolved.imu_calibration_state = 0
    }

    if (msg.battery_percentage !== undefined) {
      resolved.battery_percentage = msg.battery_percentage;
    }
    else {
      resolved.battery_percentage = 0
    }

    if (msg.drone_fly_time_left_sec !== undefined) {
      resolved.drone_fly_time_left_sec = msg.drone_fly_time_left_sec;
    }
    else {
      resolved.drone_fly_time_left_sec = 0.0
    }

    if (msg.drone_battery_left_sec !== undefined) {
      resolved.drone_battery_left_sec = msg.drone_battery_left_sec;
    }
    else {
      resolved.drone_battery_left_sec = 0.0
    }

    if (msg.is_flying !== undefined) {
      resolved.is_flying = msg.is_flying;
    }
    else {
      resolved.is_flying = false
    }

    if (msg.is_on_ground !== undefined) {
      resolved.is_on_ground = msg.is_on_ground;
    }
    else {
      resolved.is_on_ground = false
    }

    if (msg.is_em_open !== undefined) {
      resolved.is_em_open = msg.is_em_open;
    }
    else {
      resolved.is_em_open = false
    }

    if (msg.is_drone_hover !== undefined) {
      resolved.is_drone_hover = msg.is_drone_hover;
    }
    else {
      resolved.is_drone_hover = false
    }

    if (msg.is_outage_recording !== undefined) {
      resolved.is_outage_recording = msg.is_outage_recording;
    }
    else {
      resolved.is_outage_recording = false
    }

    if (msg.is_battery_low !== undefined) {
      resolved.is_battery_low = msg.is_battery_low;
    }
    else {
      resolved.is_battery_low = false
    }

    if (msg.is_battery_lower !== undefined) {
      resolved.is_battery_lower = msg.is_battery_lower;
    }
    else {
      resolved.is_battery_lower = false
    }

    if (msg.is_factory_mode !== undefined) {
      resolved.is_factory_mode = msg.is_factory_mode;
    }
    else {
      resolved.is_factory_mode = false
    }

    if (msg.fly_mode !== undefined) {
      resolved.fly_mode = msg.fly_mode;
    }
    else {
      resolved.fly_mode = 0
    }

    if (msg.throw_takeoff_timer_sec !== undefined) {
      resolved.throw_takeoff_timer_sec = msg.throw_takeoff_timer_sec;
    }
    else {
      resolved.throw_takeoff_timer_sec = 0.0
    }

    if (msg.camera_state !== undefined) {
      resolved.camera_state = msg.camera_state;
    }
    else {
      resolved.camera_state = 0
    }

    if (msg.electrical_machinery_state !== undefined) {
      resolved.electrical_machinery_state = msg.electrical_machinery_state;
    }
    else {
      resolved.electrical_machinery_state = 0
    }

    if (msg.front_in !== undefined) {
      resolved.front_in = msg.front_in;
    }
    else {
      resolved.front_in = false
    }

    if (msg.front_out !== undefined) {
      resolved.front_out = msg.front_out;
    }
    else {
      resolved.front_out = false
    }

    if (msg.front_lsc !== undefined) {
      resolved.front_lsc = msg.front_lsc;
    }
    else {
      resolved.front_lsc = false
    }

    if (msg.temperature_height_m !== undefined) {
      resolved.temperature_height_m = msg.temperature_height_m;
    }
    else {
      resolved.temperature_height_m = 0.0
    }

    if (msg.cmd_roll_ratio !== undefined) {
      resolved.cmd_roll_ratio = msg.cmd_roll_ratio;
    }
    else {
      resolved.cmd_roll_ratio = 0.0
    }

    if (msg.cmd_pitch_ratio !== undefined) {
      resolved.cmd_pitch_ratio = msg.cmd_pitch_ratio;
    }
    else {
      resolved.cmd_pitch_ratio = 0.0
    }

    if (msg.cmd_yaw_ratio !== undefined) {
      resolved.cmd_yaw_ratio = msg.cmd_yaw_ratio;
    }
    else {
      resolved.cmd_yaw_ratio = 0.0
    }

    if (msg.cmd_vspeed_ratio !== undefined) {
      resolved.cmd_vspeed_ratio = msg.cmd_vspeed_ratio;
    }
    else {
      resolved.cmd_vspeed_ratio = 0.0
    }

    if (msg.cmd_fast_mode !== undefined) {
      resolved.cmd_fast_mode = msg.cmd_fast_mode;
    }
    else {
      resolved.cmd_fast_mode = false
    }

    return resolved;
    }
};

module.exports = TelloStatus;
