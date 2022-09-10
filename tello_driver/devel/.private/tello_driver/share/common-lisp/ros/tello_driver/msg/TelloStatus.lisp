; Auto-generated. Do not edit!


(cl:in-package tello_driver-msg)


;//! \htmlinclude TelloStatus.msg.html

(cl:defclass <TelloStatus> (roslisp-msg-protocol:ros-message)
  ((height_m
    :reader height_m
    :initarg :height_m
    :type cl:float
    :initform 0.0)
   (speed_northing_mps
    :reader speed_northing_mps
    :initarg :speed_northing_mps
    :type cl:float
    :initform 0.0)
   (speed_easting_mps
    :reader speed_easting_mps
    :initarg :speed_easting_mps
    :type cl:float
    :initform 0.0)
   (speed_horizontal_mps
    :reader speed_horizontal_mps
    :initarg :speed_horizontal_mps
    :type cl:float
    :initform 0.0)
   (speed_vertical_mps
    :reader speed_vertical_mps
    :initarg :speed_vertical_mps
    :type cl:float
    :initform 0.0)
   (flight_time_sec
    :reader flight_time_sec
    :initarg :flight_time_sec
    :type cl:float
    :initform 0.0)
   (imu_state
    :reader imu_state
    :initarg :imu_state
    :type cl:boolean
    :initform cl:nil)
   (pressure_state
    :reader pressure_state
    :initarg :pressure_state
    :type cl:boolean
    :initform cl:nil)
   (down_visual_state
    :reader down_visual_state
    :initarg :down_visual_state
    :type cl:boolean
    :initform cl:nil)
   (power_state
    :reader power_state
    :initarg :power_state
    :type cl:boolean
    :initform cl:nil)
   (battery_state
    :reader battery_state
    :initarg :battery_state
    :type cl:boolean
    :initform cl:nil)
   (gravity_state
    :reader gravity_state
    :initarg :gravity_state
    :type cl:boolean
    :initform cl:nil)
   (wind_state
    :reader wind_state
    :initarg :wind_state
    :type cl:boolean
    :initform cl:nil)
   (imu_calibration_state
    :reader imu_calibration_state
    :initarg :imu_calibration_state
    :type cl:fixnum
    :initform 0)
   (battery_percentage
    :reader battery_percentage
    :initarg :battery_percentage
    :type cl:fixnum
    :initform 0)
   (drone_fly_time_left_sec
    :reader drone_fly_time_left_sec
    :initarg :drone_fly_time_left_sec
    :type cl:float
    :initform 0.0)
   (drone_battery_left_sec
    :reader drone_battery_left_sec
    :initarg :drone_battery_left_sec
    :type cl:float
    :initform 0.0)
   (is_flying
    :reader is_flying
    :initarg :is_flying
    :type cl:boolean
    :initform cl:nil)
   (is_on_ground
    :reader is_on_ground
    :initarg :is_on_ground
    :type cl:boolean
    :initform cl:nil)
   (is_em_open
    :reader is_em_open
    :initarg :is_em_open
    :type cl:boolean
    :initform cl:nil)
   (is_drone_hover
    :reader is_drone_hover
    :initarg :is_drone_hover
    :type cl:boolean
    :initform cl:nil)
   (is_outage_recording
    :reader is_outage_recording
    :initarg :is_outage_recording
    :type cl:boolean
    :initform cl:nil)
   (is_battery_low
    :reader is_battery_low
    :initarg :is_battery_low
    :type cl:boolean
    :initform cl:nil)
   (is_battery_lower
    :reader is_battery_lower
    :initarg :is_battery_lower
    :type cl:boolean
    :initform cl:nil)
   (is_factory_mode
    :reader is_factory_mode
    :initarg :is_factory_mode
    :type cl:boolean
    :initform cl:nil)
   (fly_mode
    :reader fly_mode
    :initarg :fly_mode
    :type cl:fixnum
    :initform 0)
   (throw_takeoff_timer_sec
    :reader throw_takeoff_timer_sec
    :initarg :throw_takeoff_timer_sec
    :type cl:float
    :initform 0.0)
   (camera_state
    :reader camera_state
    :initarg :camera_state
    :type cl:fixnum
    :initform 0)
   (electrical_machinery_state
    :reader electrical_machinery_state
    :initarg :electrical_machinery_state
    :type cl:fixnum
    :initform 0)
   (front_in
    :reader front_in
    :initarg :front_in
    :type cl:boolean
    :initform cl:nil)
   (front_out
    :reader front_out
    :initarg :front_out
    :type cl:boolean
    :initform cl:nil)
   (front_lsc
    :reader front_lsc
    :initarg :front_lsc
    :type cl:boolean
    :initform cl:nil)
   (temperature_height_m
    :reader temperature_height_m
    :initarg :temperature_height_m
    :type cl:float
    :initform 0.0)
   (cmd_roll_ratio
    :reader cmd_roll_ratio
    :initarg :cmd_roll_ratio
    :type cl:float
    :initform 0.0)
   (cmd_pitch_ratio
    :reader cmd_pitch_ratio
    :initarg :cmd_pitch_ratio
    :type cl:float
    :initform 0.0)
   (cmd_yaw_ratio
    :reader cmd_yaw_ratio
    :initarg :cmd_yaw_ratio
    :type cl:float
    :initform 0.0)
   (cmd_vspeed_ratio
    :reader cmd_vspeed_ratio
    :initarg :cmd_vspeed_ratio
    :type cl:float
    :initform 0.0)
   (cmd_fast_mode
    :reader cmd_fast_mode
    :initarg :cmd_fast_mode
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass TelloStatus (<TelloStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TelloStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TelloStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tello_driver-msg:<TelloStatus> is deprecated: use tello_driver-msg:TelloStatus instead.")))

(cl:ensure-generic-function 'height_m-val :lambda-list '(m))
(cl:defmethod height_m-val ((m <TelloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tello_driver-msg:height_m-val is deprecated.  Use tello_driver-msg:height_m instead.")
  (height_m m))

(cl:ensure-generic-function 'speed_northing_mps-val :lambda-list '(m))
(cl:defmethod speed_northing_mps-val ((m <TelloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tello_driver-msg:speed_northing_mps-val is deprecated.  Use tello_driver-msg:speed_northing_mps instead.")
  (speed_northing_mps m))

(cl:ensure-generic-function 'speed_easting_mps-val :lambda-list '(m))
(cl:defmethod speed_easting_mps-val ((m <TelloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tello_driver-msg:speed_easting_mps-val is deprecated.  Use tello_driver-msg:speed_easting_mps instead.")
  (speed_easting_mps m))

(cl:ensure-generic-function 'speed_horizontal_mps-val :lambda-list '(m))
(cl:defmethod speed_horizontal_mps-val ((m <TelloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tello_driver-msg:speed_horizontal_mps-val is deprecated.  Use tello_driver-msg:speed_horizontal_mps instead.")
  (speed_horizontal_mps m))

(cl:ensure-generic-function 'speed_vertical_mps-val :lambda-list '(m))
(cl:defmethod speed_vertical_mps-val ((m <TelloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tello_driver-msg:speed_vertical_mps-val is deprecated.  Use tello_driver-msg:speed_vertical_mps instead.")
  (speed_vertical_mps m))

(cl:ensure-generic-function 'flight_time_sec-val :lambda-list '(m))
(cl:defmethod flight_time_sec-val ((m <TelloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tello_driver-msg:flight_time_sec-val is deprecated.  Use tello_driver-msg:flight_time_sec instead.")
  (flight_time_sec m))

(cl:ensure-generic-function 'imu_state-val :lambda-list '(m))
(cl:defmethod imu_state-val ((m <TelloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tello_driver-msg:imu_state-val is deprecated.  Use tello_driver-msg:imu_state instead.")
  (imu_state m))

(cl:ensure-generic-function 'pressure_state-val :lambda-list '(m))
(cl:defmethod pressure_state-val ((m <TelloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tello_driver-msg:pressure_state-val is deprecated.  Use tello_driver-msg:pressure_state instead.")
  (pressure_state m))

(cl:ensure-generic-function 'down_visual_state-val :lambda-list '(m))
(cl:defmethod down_visual_state-val ((m <TelloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tello_driver-msg:down_visual_state-val is deprecated.  Use tello_driver-msg:down_visual_state instead.")
  (down_visual_state m))

(cl:ensure-generic-function 'power_state-val :lambda-list '(m))
(cl:defmethod power_state-val ((m <TelloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tello_driver-msg:power_state-val is deprecated.  Use tello_driver-msg:power_state instead.")
  (power_state m))

(cl:ensure-generic-function 'battery_state-val :lambda-list '(m))
(cl:defmethod battery_state-val ((m <TelloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tello_driver-msg:battery_state-val is deprecated.  Use tello_driver-msg:battery_state instead.")
  (battery_state m))

(cl:ensure-generic-function 'gravity_state-val :lambda-list '(m))
(cl:defmethod gravity_state-val ((m <TelloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tello_driver-msg:gravity_state-val is deprecated.  Use tello_driver-msg:gravity_state instead.")
  (gravity_state m))

(cl:ensure-generic-function 'wind_state-val :lambda-list '(m))
(cl:defmethod wind_state-val ((m <TelloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tello_driver-msg:wind_state-val is deprecated.  Use tello_driver-msg:wind_state instead.")
  (wind_state m))

(cl:ensure-generic-function 'imu_calibration_state-val :lambda-list '(m))
(cl:defmethod imu_calibration_state-val ((m <TelloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tello_driver-msg:imu_calibration_state-val is deprecated.  Use tello_driver-msg:imu_calibration_state instead.")
  (imu_calibration_state m))

(cl:ensure-generic-function 'battery_percentage-val :lambda-list '(m))
(cl:defmethod battery_percentage-val ((m <TelloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tello_driver-msg:battery_percentage-val is deprecated.  Use tello_driver-msg:battery_percentage instead.")
  (battery_percentage m))

(cl:ensure-generic-function 'drone_fly_time_left_sec-val :lambda-list '(m))
(cl:defmethod drone_fly_time_left_sec-val ((m <TelloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tello_driver-msg:drone_fly_time_left_sec-val is deprecated.  Use tello_driver-msg:drone_fly_time_left_sec instead.")
  (drone_fly_time_left_sec m))

(cl:ensure-generic-function 'drone_battery_left_sec-val :lambda-list '(m))
(cl:defmethod drone_battery_left_sec-val ((m <TelloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tello_driver-msg:drone_battery_left_sec-val is deprecated.  Use tello_driver-msg:drone_battery_left_sec instead.")
  (drone_battery_left_sec m))

(cl:ensure-generic-function 'is_flying-val :lambda-list '(m))
(cl:defmethod is_flying-val ((m <TelloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tello_driver-msg:is_flying-val is deprecated.  Use tello_driver-msg:is_flying instead.")
  (is_flying m))

(cl:ensure-generic-function 'is_on_ground-val :lambda-list '(m))
(cl:defmethod is_on_ground-val ((m <TelloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tello_driver-msg:is_on_ground-val is deprecated.  Use tello_driver-msg:is_on_ground instead.")
  (is_on_ground m))

(cl:ensure-generic-function 'is_em_open-val :lambda-list '(m))
(cl:defmethod is_em_open-val ((m <TelloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tello_driver-msg:is_em_open-val is deprecated.  Use tello_driver-msg:is_em_open instead.")
  (is_em_open m))

(cl:ensure-generic-function 'is_drone_hover-val :lambda-list '(m))
(cl:defmethod is_drone_hover-val ((m <TelloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tello_driver-msg:is_drone_hover-val is deprecated.  Use tello_driver-msg:is_drone_hover instead.")
  (is_drone_hover m))

(cl:ensure-generic-function 'is_outage_recording-val :lambda-list '(m))
(cl:defmethod is_outage_recording-val ((m <TelloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tello_driver-msg:is_outage_recording-val is deprecated.  Use tello_driver-msg:is_outage_recording instead.")
  (is_outage_recording m))

(cl:ensure-generic-function 'is_battery_low-val :lambda-list '(m))
(cl:defmethod is_battery_low-val ((m <TelloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tello_driver-msg:is_battery_low-val is deprecated.  Use tello_driver-msg:is_battery_low instead.")
  (is_battery_low m))

(cl:ensure-generic-function 'is_battery_lower-val :lambda-list '(m))
(cl:defmethod is_battery_lower-val ((m <TelloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tello_driver-msg:is_battery_lower-val is deprecated.  Use tello_driver-msg:is_battery_lower instead.")
  (is_battery_lower m))

(cl:ensure-generic-function 'is_factory_mode-val :lambda-list '(m))
(cl:defmethod is_factory_mode-val ((m <TelloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tello_driver-msg:is_factory_mode-val is deprecated.  Use tello_driver-msg:is_factory_mode instead.")
  (is_factory_mode m))

(cl:ensure-generic-function 'fly_mode-val :lambda-list '(m))
(cl:defmethod fly_mode-val ((m <TelloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tello_driver-msg:fly_mode-val is deprecated.  Use tello_driver-msg:fly_mode instead.")
  (fly_mode m))

(cl:ensure-generic-function 'throw_takeoff_timer_sec-val :lambda-list '(m))
(cl:defmethod throw_takeoff_timer_sec-val ((m <TelloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tello_driver-msg:throw_takeoff_timer_sec-val is deprecated.  Use tello_driver-msg:throw_takeoff_timer_sec instead.")
  (throw_takeoff_timer_sec m))

(cl:ensure-generic-function 'camera_state-val :lambda-list '(m))
(cl:defmethod camera_state-val ((m <TelloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tello_driver-msg:camera_state-val is deprecated.  Use tello_driver-msg:camera_state instead.")
  (camera_state m))

(cl:ensure-generic-function 'electrical_machinery_state-val :lambda-list '(m))
(cl:defmethod electrical_machinery_state-val ((m <TelloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tello_driver-msg:electrical_machinery_state-val is deprecated.  Use tello_driver-msg:electrical_machinery_state instead.")
  (electrical_machinery_state m))

(cl:ensure-generic-function 'front_in-val :lambda-list '(m))
(cl:defmethod front_in-val ((m <TelloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tello_driver-msg:front_in-val is deprecated.  Use tello_driver-msg:front_in instead.")
  (front_in m))

(cl:ensure-generic-function 'front_out-val :lambda-list '(m))
(cl:defmethod front_out-val ((m <TelloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tello_driver-msg:front_out-val is deprecated.  Use tello_driver-msg:front_out instead.")
  (front_out m))

(cl:ensure-generic-function 'front_lsc-val :lambda-list '(m))
(cl:defmethod front_lsc-val ((m <TelloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tello_driver-msg:front_lsc-val is deprecated.  Use tello_driver-msg:front_lsc instead.")
  (front_lsc m))

(cl:ensure-generic-function 'temperature_height_m-val :lambda-list '(m))
(cl:defmethod temperature_height_m-val ((m <TelloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tello_driver-msg:temperature_height_m-val is deprecated.  Use tello_driver-msg:temperature_height_m instead.")
  (temperature_height_m m))

(cl:ensure-generic-function 'cmd_roll_ratio-val :lambda-list '(m))
(cl:defmethod cmd_roll_ratio-val ((m <TelloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tello_driver-msg:cmd_roll_ratio-val is deprecated.  Use tello_driver-msg:cmd_roll_ratio instead.")
  (cmd_roll_ratio m))

(cl:ensure-generic-function 'cmd_pitch_ratio-val :lambda-list '(m))
(cl:defmethod cmd_pitch_ratio-val ((m <TelloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tello_driver-msg:cmd_pitch_ratio-val is deprecated.  Use tello_driver-msg:cmd_pitch_ratio instead.")
  (cmd_pitch_ratio m))

(cl:ensure-generic-function 'cmd_yaw_ratio-val :lambda-list '(m))
(cl:defmethod cmd_yaw_ratio-val ((m <TelloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tello_driver-msg:cmd_yaw_ratio-val is deprecated.  Use tello_driver-msg:cmd_yaw_ratio instead.")
  (cmd_yaw_ratio m))

(cl:ensure-generic-function 'cmd_vspeed_ratio-val :lambda-list '(m))
(cl:defmethod cmd_vspeed_ratio-val ((m <TelloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tello_driver-msg:cmd_vspeed_ratio-val is deprecated.  Use tello_driver-msg:cmd_vspeed_ratio instead.")
  (cmd_vspeed_ratio m))

(cl:ensure-generic-function 'cmd_fast_mode-val :lambda-list '(m))
(cl:defmethod cmd_fast_mode-val ((m <TelloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tello_driver-msg:cmd_fast_mode-val is deprecated.  Use tello_driver-msg:cmd_fast_mode instead.")
  (cmd_fast_mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TelloStatus>) ostream)
  "Serializes a message object of type '<TelloStatus>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'height_m))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed_northing_mps))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed_easting_mps))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed_horizontal_mps))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed_vertical_mps))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'flight_time_sec))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'imu_state) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'pressure_state) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'down_visual_state) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'power_state) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'battery_state) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'gravity_state) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'wind_state) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'imu_calibration_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'battery_percentage)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'drone_fly_time_left_sec))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'drone_battery_left_sec))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_flying) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_on_ground) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_em_open) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_drone_hover) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_outage_recording) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_battery_low) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_battery_lower) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_factory_mode) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fly_mode)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'throw_takeoff_timer_sec))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'camera_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'electrical_machinery_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'front_in) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'front_out) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'front_lsc) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'temperature_height_m))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cmd_roll_ratio))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cmd_pitch_ratio))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cmd_yaw_ratio))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cmd_vspeed_ratio))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'cmd_fast_mode) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TelloStatus>) istream)
  "Deserializes a message object of type '<TelloStatus>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'height_m) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed_northing_mps) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed_easting_mps) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed_horizontal_mps) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed_vertical_mps) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'flight_time_sec) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'imu_state) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'pressure_state) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'down_visual_state) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'power_state) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'battery_state) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'gravity_state) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'wind_state) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'imu_calibration_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'battery_percentage)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'drone_fly_time_left_sec) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'drone_battery_left_sec) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'is_flying) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_on_ground) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_em_open) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_drone_hover) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_outage_recording) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_battery_low) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_battery_lower) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_factory_mode) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fly_mode)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'throw_takeoff_timer_sec) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'camera_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'electrical_machinery_state)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'front_in) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'front_out) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'front_lsc) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temperature_height_m) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cmd_roll_ratio) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cmd_pitch_ratio) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cmd_yaw_ratio) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cmd_vspeed_ratio) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'cmd_fast_mode) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TelloStatus>)))
  "Returns string type for a message object of type '<TelloStatus>"
  "tello_driver/TelloStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TelloStatus)))
  "Returns string type for a message object of type 'TelloStatus"
  "tello_driver/TelloStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TelloStatus>)))
  "Returns md5sum for a message object of type '<TelloStatus>"
  "e6d1629583c9b3a337a806afc71e19f7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TelloStatus)))
  "Returns md5sum for a message object of type 'TelloStatus"
  "e6d1629583c9b3a337a806afc71e19f7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TelloStatus>)))
  "Returns full string definition for message of type '<TelloStatus>"
  (cl:format cl:nil "# Non-negative; calibrated to takeoff altitude; auto-calib if falls below takeoff height; inaccurate near ground~%float32 height_m~%~%float32 speed_northing_mps~%float32 speed_easting_mps~%float32 speed_horizontal_mps~%float32 speed_vertical_mps~%~%float32 flight_time_sec~%~%bool imu_state~%bool pressure_state~%bool down_visual_state~%bool power_state~%bool battery_state~%bool gravity_state~%bool wind_state~%~%uint8 imu_calibration_state~%uint8 battery_percentage~%float32 drone_fly_time_left_sec~%float32 drone_battery_left_sec~%~%bool is_flying~%bool is_on_ground~%# is_em_open True in flight, False when landed~%bool is_em_open~%bool is_drone_hover~%bool is_outage_recording~%bool is_battery_low~%bool is_battery_lower~%bool is_factory_mode~%~%# flymode=1: landed; =6: flying~%uint8 fly_mode~%float32 throw_takeoff_timer_sec~%uint8 camera_state~%~%uint8 electrical_machinery_state~%~%bool front_in~%bool front_out~%bool front_lsc~%~%float32 temperature_height_m~%~%float32 cmd_roll_ratio~%float32 cmd_pitch_ratio~%float32 cmd_yaw_ratio~%float32 cmd_vspeed_ratio~%bool cmd_fast_mode~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TelloStatus)))
  "Returns full string definition for message of type 'TelloStatus"
  (cl:format cl:nil "# Non-negative; calibrated to takeoff altitude; auto-calib if falls below takeoff height; inaccurate near ground~%float32 height_m~%~%float32 speed_northing_mps~%float32 speed_easting_mps~%float32 speed_horizontal_mps~%float32 speed_vertical_mps~%~%float32 flight_time_sec~%~%bool imu_state~%bool pressure_state~%bool down_visual_state~%bool power_state~%bool battery_state~%bool gravity_state~%bool wind_state~%~%uint8 imu_calibration_state~%uint8 battery_percentage~%float32 drone_fly_time_left_sec~%float32 drone_battery_left_sec~%~%bool is_flying~%bool is_on_ground~%# is_em_open True in flight, False when landed~%bool is_em_open~%bool is_drone_hover~%bool is_outage_recording~%bool is_battery_low~%bool is_battery_lower~%bool is_factory_mode~%~%# flymode=1: landed; =6: flying~%uint8 fly_mode~%float32 throw_takeoff_timer_sec~%uint8 camera_state~%~%uint8 electrical_machinery_state~%~%bool front_in~%bool front_out~%bool front_lsc~%~%float32 temperature_height_m~%~%float32 cmd_roll_ratio~%float32 cmd_pitch_ratio~%float32 cmd_yaw_ratio~%float32 cmd_vspeed_ratio~%bool cmd_fast_mode~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TelloStatus>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     1
     1
     1
     1
     1
     1
     1
     1
     1
     4
     4
     1
     1
     1
     1
     1
     1
     1
     1
     1
     4
     1
     1
     1
     1
     1
     4
     4
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TelloStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'TelloStatus
    (cl:cons ':height_m (height_m msg))
    (cl:cons ':speed_northing_mps (speed_northing_mps msg))
    (cl:cons ':speed_easting_mps (speed_easting_mps msg))
    (cl:cons ':speed_horizontal_mps (speed_horizontal_mps msg))
    (cl:cons ':speed_vertical_mps (speed_vertical_mps msg))
    (cl:cons ':flight_time_sec (flight_time_sec msg))
    (cl:cons ':imu_state (imu_state msg))
    (cl:cons ':pressure_state (pressure_state msg))
    (cl:cons ':down_visual_state (down_visual_state msg))
    (cl:cons ':power_state (power_state msg))
    (cl:cons ':battery_state (battery_state msg))
    (cl:cons ':gravity_state (gravity_state msg))
    (cl:cons ':wind_state (wind_state msg))
    (cl:cons ':imu_calibration_state (imu_calibration_state msg))
    (cl:cons ':battery_percentage (battery_percentage msg))
    (cl:cons ':drone_fly_time_left_sec (drone_fly_time_left_sec msg))
    (cl:cons ':drone_battery_left_sec (drone_battery_left_sec msg))
    (cl:cons ':is_flying (is_flying msg))
    (cl:cons ':is_on_ground (is_on_ground msg))
    (cl:cons ':is_em_open (is_em_open msg))
    (cl:cons ':is_drone_hover (is_drone_hover msg))
    (cl:cons ':is_outage_recording (is_outage_recording msg))
    (cl:cons ':is_battery_low (is_battery_low msg))
    (cl:cons ':is_battery_lower (is_battery_lower msg))
    (cl:cons ':is_factory_mode (is_factory_mode msg))
    (cl:cons ':fly_mode (fly_mode msg))
    (cl:cons ':throw_takeoff_timer_sec (throw_takeoff_timer_sec msg))
    (cl:cons ':camera_state (camera_state msg))
    (cl:cons ':electrical_machinery_state (electrical_machinery_state msg))
    (cl:cons ':front_in (front_in msg))
    (cl:cons ':front_out (front_out msg))
    (cl:cons ':front_lsc (front_lsc msg))
    (cl:cons ':temperature_height_m (temperature_height_m msg))
    (cl:cons ':cmd_roll_ratio (cmd_roll_ratio msg))
    (cl:cons ':cmd_pitch_ratio (cmd_pitch_ratio msg))
    (cl:cons ':cmd_yaw_ratio (cmd_yaw_ratio msg))
    (cl:cons ':cmd_vspeed_ratio (cmd_vspeed_ratio msg))
    (cl:cons ':cmd_fast_mode (cmd_fast_mode msg))
))
