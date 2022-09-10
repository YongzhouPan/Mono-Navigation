;; Auto-generated. Do not edit!


(when (boundp 'tello_driver::TelloStatus)
  (if (not (find-package "TELLO_DRIVER"))
    (make-package "TELLO_DRIVER"))
  (shadow 'TelloStatus (find-package "TELLO_DRIVER")))
(unless (find-package "TELLO_DRIVER::TELLOSTATUS")
  (make-package "TELLO_DRIVER::TELLOSTATUS"))

(in-package "ROS")
;;//! \htmlinclude TelloStatus.msg.html


(defclass tello_driver::TelloStatus
  :super ros::object
  :slots (_height_m _speed_northing_mps _speed_easting_mps _speed_horizontal_mps _speed_vertical_mps _flight_time_sec _imu_state _pressure_state _down_visual_state _power_state _battery_state _gravity_state _wind_state _imu_calibration_state _battery_percentage _drone_fly_time_left_sec _drone_battery_left_sec _is_flying _is_on_ground _is_em_open _is_drone_hover _is_outage_recording _is_battery_low _is_battery_lower _is_factory_mode _fly_mode _throw_takeoff_timer_sec _camera_state _electrical_machinery_state _front_in _front_out _front_lsc _temperature_height_m _cmd_roll_ratio _cmd_pitch_ratio _cmd_yaw_ratio _cmd_vspeed_ratio _cmd_fast_mode ))

(defmethod tello_driver::TelloStatus
  (:init
   (&key
    ((:height_m __height_m) 0.0)
    ((:speed_northing_mps __speed_northing_mps) 0.0)
    ((:speed_easting_mps __speed_easting_mps) 0.0)
    ((:speed_horizontal_mps __speed_horizontal_mps) 0.0)
    ((:speed_vertical_mps __speed_vertical_mps) 0.0)
    ((:flight_time_sec __flight_time_sec) 0.0)
    ((:imu_state __imu_state) nil)
    ((:pressure_state __pressure_state) nil)
    ((:down_visual_state __down_visual_state) nil)
    ((:power_state __power_state) nil)
    ((:battery_state __battery_state) nil)
    ((:gravity_state __gravity_state) nil)
    ((:wind_state __wind_state) nil)
    ((:imu_calibration_state __imu_calibration_state) 0)
    ((:battery_percentage __battery_percentage) 0)
    ((:drone_fly_time_left_sec __drone_fly_time_left_sec) 0.0)
    ((:drone_battery_left_sec __drone_battery_left_sec) 0.0)
    ((:is_flying __is_flying) nil)
    ((:is_on_ground __is_on_ground) nil)
    ((:is_em_open __is_em_open) nil)
    ((:is_drone_hover __is_drone_hover) nil)
    ((:is_outage_recording __is_outage_recording) nil)
    ((:is_battery_low __is_battery_low) nil)
    ((:is_battery_lower __is_battery_lower) nil)
    ((:is_factory_mode __is_factory_mode) nil)
    ((:fly_mode __fly_mode) 0)
    ((:throw_takeoff_timer_sec __throw_takeoff_timer_sec) 0.0)
    ((:camera_state __camera_state) 0)
    ((:electrical_machinery_state __electrical_machinery_state) 0)
    ((:front_in __front_in) nil)
    ((:front_out __front_out) nil)
    ((:front_lsc __front_lsc) nil)
    ((:temperature_height_m __temperature_height_m) 0.0)
    ((:cmd_roll_ratio __cmd_roll_ratio) 0.0)
    ((:cmd_pitch_ratio __cmd_pitch_ratio) 0.0)
    ((:cmd_yaw_ratio __cmd_yaw_ratio) 0.0)
    ((:cmd_vspeed_ratio __cmd_vspeed_ratio) 0.0)
    ((:cmd_fast_mode __cmd_fast_mode) nil)
    )
   (send-super :init)
   (setq _height_m (float __height_m))
   (setq _speed_northing_mps (float __speed_northing_mps))
   (setq _speed_easting_mps (float __speed_easting_mps))
   (setq _speed_horizontal_mps (float __speed_horizontal_mps))
   (setq _speed_vertical_mps (float __speed_vertical_mps))
   (setq _flight_time_sec (float __flight_time_sec))
   (setq _imu_state __imu_state)
   (setq _pressure_state __pressure_state)
   (setq _down_visual_state __down_visual_state)
   (setq _power_state __power_state)
   (setq _battery_state __battery_state)
   (setq _gravity_state __gravity_state)
   (setq _wind_state __wind_state)
   (setq _imu_calibration_state (round __imu_calibration_state))
   (setq _battery_percentage (round __battery_percentage))
   (setq _drone_fly_time_left_sec (float __drone_fly_time_left_sec))
   (setq _drone_battery_left_sec (float __drone_battery_left_sec))
   (setq _is_flying __is_flying)
   (setq _is_on_ground __is_on_ground)
   (setq _is_em_open __is_em_open)
   (setq _is_drone_hover __is_drone_hover)
   (setq _is_outage_recording __is_outage_recording)
   (setq _is_battery_low __is_battery_low)
   (setq _is_battery_lower __is_battery_lower)
   (setq _is_factory_mode __is_factory_mode)
   (setq _fly_mode (round __fly_mode))
   (setq _throw_takeoff_timer_sec (float __throw_takeoff_timer_sec))
   (setq _camera_state (round __camera_state))
   (setq _electrical_machinery_state (round __electrical_machinery_state))
   (setq _front_in __front_in)
   (setq _front_out __front_out)
   (setq _front_lsc __front_lsc)
   (setq _temperature_height_m (float __temperature_height_m))
   (setq _cmd_roll_ratio (float __cmd_roll_ratio))
   (setq _cmd_pitch_ratio (float __cmd_pitch_ratio))
   (setq _cmd_yaw_ratio (float __cmd_yaw_ratio))
   (setq _cmd_vspeed_ratio (float __cmd_vspeed_ratio))
   (setq _cmd_fast_mode __cmd_fast_mode)
   self)
  (:height_m
   (&optional __height_m)
   (if __height_m (setq _height_m __height_m)) _height_m)
  (:speed_northing_mps
   (&optional __speed_northing_mps)
   (if __speed_northing_mps (setq _speed_northing_mps __speed_northing_mps)) _speed_northing_mps)
  (:speed_easting_mps
   (&optional __speed_easting_mps)
   (if __speed_easting_mps (setq _speed_easting_mps __speed_easting_mps)) _speed_easting_mps)
  (:speed_horizontal_mps
   (&optional __speed_horizontal_mps)
   (if __speed_horizontal_mps (setq _speed_horizontal_mps __speed_horizontal_mps)) _speed_horizontal_mps)
  (:speed_vertical_mps
   (&optional __speed_vertical_mps)
   (if __speed_vertical_mps (setq _speed_vertical_mps __speed_vertical_mps)) _speed_vertical_mps)
  (:flight_time_sec
   (&optional __flight_time_sec)
   (if __flight_time_sec (setq _flight_time_sec __flight_time_sec)) _flight_time_sec)
  (:imu_state
   (&optional __imu_state)
   (if __imu_state (setq _imu_state __imu_state)) _imu_state)
  (:pressure_state
   (&optional __pressure_state)
   (if __pressure_state (setq _pressure_state __pressure_state)) _pressure_state)
  (:down_visual_state
   (&optional __down_visual_state)
   (if __down_visual_state (setq _down_visual_state __down_visual_state)) _down_visual_state)
  (:power_state
   (&optional __power_state)
   (if __power_state (setq _power_state __power_state)) _power_state)
  (:battery_state
   (&optional __battery_state)
   (if __battery_state (setq _battery_state __battery_state)) _battery_state)
  (:gravity_state
   (&optional __gravity_state)
   (if __gravity_state (setq _gravity_state __gravity_state)) _gravity_state)
  (:wind_state
   (&optional __wind_state)
   (if __wind_state (setq _wind_state __wind_state)) _wind_state)
  (:imu_calibration_state
   (&optional __imu_calibration_state)
   (if __imu_calibration_state (setq _imu_calibration_state __imu_calibration_state)) _imu_calibration_state)
  (:battery_percentage
   (&optional __battery_percentage)
   (if __battery_percentage (setq _battery_percentage __battery_percentage)) _battery_percentage)
  (:drone_fly_time_left_sec
   (&optional __drone_fly_time_left_sec)
   (if __drone_fly_time_left_sec (setq _drone_fly_time_left_sec __drone_fly_time_left_sec)) _drone_fly_time_left_sec)
  (:drone_battery_left_sec
   (&optional __drone_battery_left_sec)
   (if __drone_battery_left_sec (setq _drone_battery_left_sec __drone_battery_left_sec)) _drone_battery_left_sec)
  (:is_flying
   (&optional __is_flying)
   (if __is_flying (setq _is_flying __is_flying)) _is_flying)
  (:is_on_ground
   (&optional __is_on_ground)
   (if __is_on_ground (setq _is_on_ground __is_on_ground)) _is_on_ground)
  (:is_em_open
   (&optional __is_em_open)
   (if __is_em_open (setq _is_em_open __is_em_open)) _is_em_open)
  (:is_drone_hover
   (&optional __is_drone_hover)
   (if __is_drone_hover (setq _is_drone_hover __is_drone_hover)) _is_drone_hover)
  (:is_outage_recording
   (&optional __is_outage_recording)
   (if __is_outage_recording (setq _is_outage_recording __is_outage_recording)) _is_outage_recording)
  (:is_battery_low
   (&optional __is_battery_low)
   (if __is_battery_low (setq _is_battery_low __is_battery_low)) _is_battery_low)
  (:is_battery_lower
   (&optional __is_battery_lower)
   (if __is_battery_lower (setq _is_battery_lower __is_battery_lower)) _is_battery_lower)
  (:is_factory_mode
   (&optional __is_factory_mode)
   (if __is_factory_mode (setq _is_factory_mode __is_factory_mode)) _is_factory_mode)
  (:fly_mode
   (&optional __fly_mode)
   (if __fly_mode (setq _fly_mode __fly_mode)) _fly_mode)
  (:throw_takeoff_timer_sec
   (&optional __throw_takeoff_timer_sec)
   (if __throw_takeoff_timer_sec (setq _throw_takeoff_timer_sec __throw_takeoff_timer_sec)) _throw_takeoff_timer_sec)
  (:camera_state
   (&optional __camera_state)
   (if __camera_state (setq _camera_state __camera_state)) _camera_state)
  (:electrical_machinery_state
   (&optional __electrical_machinery_state)
   (if __electrical_machinery_state (setq _electrical_machinery_state __electrical_machinery_state)) _electrical_machinery_state)
  (:front_in
   (&optional __front_in)
   (if __front_in (setq _front_in __front_in)) _front_in)
  (:front_out
   (&optional __front_out)
   (if __front_out (setq _front_out __front_out)) _front_out)
  (:front_lsc
   (&optional __front_lsc)
   (if __front_lsc (setq _front_lsc __front_lsc)) _front_lsc)
  (:temperature_height_m
   (&optional __temperature_height_m)
   (if __temperature_height_m (setq _temperature_height_m __temperature_height_m)) _temperature_height_m)
  (:cmd_roll_ratio
   (&optional __cmd_roll_ratio)
   (if __cmd_roll_ratio (setq _cmd_roll_ratio __cmd_roll_ratio)) _cmd_roll_ratio)
  (:cmd_pitch_ratio
   (&optional __cmd_pitch_ratio)
   (if __cmd_pitch_ratio (setq _cmd_pitch_ratio __cmd_pitch_ratio)) _cmd_pitch_ratio)
  (:cmd_yaw_ratio
   (&optional __cmd_yaw_ratio)
   (if __cmd_yaw_ratio (setq _cmd_yaw_ratio __cmd_yaw_ratio)) _cmd_yaw_ratio)
  (:cmd_vspeed_ratio
   (&optional __cmd_vspeed_ratio)
   (if __cmd_vspeed_ratio (setq _cmd_vspeed_ratio __cmd_vspeed_ratio)) _cmd_vspeed_ratio)
  (:cmd_fast_mode
   (&optional __cmd_fast_mode)
   (if __cmd_fast_mode (setq _cmd_fast_mode __cmd_fast_mode)) _cmd_fast_mode)
  (:serialization-length
   ()
   (+
    ;; float32 _height_m
    4
    ;; float32 _speed_northing_mps
    4
    ;; float32 _speed_easting_mps
    4
    ;; float32 _speed_horizontal_mps
    4
    ;; float32 _speed_vertical_mps
    4
    ;; float32 _flight_time_sec
    4
    ;; bool _imu_state
    1
    ;; bool _pressure_state
    1
    ;; bool _down_visual_state
    1
    ;; bool _power_state
    1
    ;; bool _battery_state
    1
    ;; bool _gravity_state
    1
    ;; bool _wind_state
    1
    ;; uint8 _imu_calibration_state
    1
    ;; uint8 _battery_percentage
    1
    ;; float32 _drone_fly_time_left_sec
    4
    ;; float32 _drone_battery_left_sec
    4
    ;; bool _is_flying
    1
    ;; bool _is_on_ground
    1
    ;; bool _is_em_open
    1
    ;; bool _is_drone_hover
    1
    ;; bool _is_outage_recording
    1
    ;; bool _is_battery_low
    1
    ;; bool _is_battery_lower
    1
    ;; bool _is_factory_mode
    1
    ;; uint8 _fly_mode
    1
    ;; float32 _throw_takeoff_timer_sec
    4
    ;; uint8 _camera_state
    1
    ;; uint8 _electrical_machinery_state
    1
    ;; bool _front_in
    1
    ;; bool _front_out
    1
    ;; bool _front_lsc
    1
    ;; float32 _temperature_height_m
    4
    ;; float32 _cmd_roll_ratio
    4
    ;; float32 _cmd_pitch_ratio
    4
    ;; float32 _cmd_yaw_ratio
    4
    ;; float32 _cmd_vspeed_ratio
    4
    ;; bool _cmd_fast_mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _height_m
       (sys::poke _height_m (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _speed_northing_mps
       (sys::poke _speed_northing_mps (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _speed_easting_mps
       (sys::poke _speed_easting_mps (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _speed_horizontal_mps
       (sys::poke _speed_horizontal_mps (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _speed_vertical_mps
       (sys::poke _speed_vertical_mps (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _flight_time_sec
       (sys::poke _flight_time_sec (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _imu_state
       (if _imu_state (write-byte -1 s) (write-byte 0 s))
     ;; bool _pressure_state
       (if _pressure_state (write-byte -1 s) (write-byte 0 s))
     ;; bool _down_visual_state
       (if _down_visual_state (write-byte -1 s) (write-byte 0 s))
     ;; bool _power_state
       (if _power_state (write-byte -1 s) (write-byte 0 s))
     ;; bool _battery_state
       (if _battery_state (write-byte -1 s) (write-byte 0 s))
     ;; bool _gravity_state
       (if _gravity_state (write-byte -1 s) (write-byte 0 s))
     ;; bool _wind_state
       (if _wind_state (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _imu_calibration_state
       (write-byte _imu_calibration_state s)
     ;; uint8 _battery_percentage
       (write-byte _battery_percentage s)
     ;; float32 _drone_fly_time_left_sec
       (sys::poke _drone_fly_time_left_sec (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _drone_battery_left_sec
       (sys::poke _drone_battery_left_sec (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _is_flying
       (if _is_flying (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_on_ground
       (if _is_on_ground (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_em_open
       (if _is_em_open (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_drone_hover
       (if _is_drone_hover (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_outage_recording
       (if _is_outage_recording (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_battery_low
       (if _is_battery_low (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_battery_lower
       (if _is_battery_lower (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_factory_mode
       (if _is_factory_mode (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _fly_mode
       (write-byte _fly_mode s)
     ;; float32 _throw_takeoff_timer_sec
       (sys::poke _throw_takeoff_timer_sec (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _camera_state
       (write-byte _camera_state s)
     ;; uint8 _electrical_machinery_state
       (write-byte _electrical_machinery_state s)
     ;; bool _front_in
       (if _front_in (write-byte -1 s) (write-byte 0 s))
     ;; bool _front_out
       (if _front_out (write-byte -1 s) (write-byte 0 s))
     ;; bool _front_lsc
       (if _front_lsc (write-byte -1 s) (write-byte 0 s))
     ;; float32 _temperature_height_m
       (sys::poke _temperature_height_m (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _cmd_roll_ratio
       (sys::poke _cmd_roll_ratio (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _cmd_pitch_ratio
       (sys::poke _cmd_pitch_ratio (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _cmd_yaw_ratio
       (sys::poke _cmd_yaw_ratio (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _cmd_vspeed_ratio
       (sys::poke _cmd_vspeed_ratio (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _cmd_fast_mode
       (if _cmd_fast_mode (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _height_m
     (setq _height_m (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _speed_northing_mps
     (setq _speed_northing_mps (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _speed_easting_mps
     (setq _speed_easting_mps (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _speed_horizontal_mps
     (setq _speed_horizontal_mps (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _speed_vertical_mps
     (setq _speed_vertical_mps (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _flight_time_sec
     (setq _flight_time_sec (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _imu_state
     (setq _imu_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _pressure_state
     (setq _pressure_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _down_visual_state
     (setq _down_visual_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _power_state
     (setq _power_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _battery_state
     (setq _battery_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _gravity_state
     (setq _gravity_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _wind_state
     (setq _wind_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _imu_calibration_state
     (setq _imu_calibration_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _battery_percentage
     (setq _battery_percentage (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _drone_fly_time_left_sec
     (setq _drone_fly_time_left_sec (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _drone_battery_left_sec
     (setq _drone_battery_left_sec (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _is_flying
     (setq _is_flying (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_on_ground
     (setq _is_on_ground (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_em_open
     (setq _is_em_open (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_drone_hover
     (setq _is_drone_hover (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_outage_recording
     (setq _is_outage_recording (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_battery_low
     (setq _is_battery_low (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_battery_lower
     (setq _is_battery_lower (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_factory_mode
     (setq _is_factory_mode (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _fly_mode
     (setq _fly_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _throw_takeoff_timer_sec
     (setq _throw_takeoff_timer_sec (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _camera_state
     (setq _camera_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _electrical_machinery_state
     (setq _electrical_machinery_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _front_in
     (setq _front_in (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _front_out
     (setq _front_out (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _front_lsc
     (setq _front_lsc (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _temperature_height_m
     (setq _temperature_height_m (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _cmd_roll_ratio
     (setq _cmd_roll_ratio (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _cmd_pitch_ratio
     (setq _cmd_pitch_ratio (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _cmd_yaw_ratio
     (setq _cmd_yaw_ratio (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _cmd_vspeed_ratio
     (setq _cmd_vspeed_ratio (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _cmd_fast_mode
     (setq _cmd_fast_mode (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get tello_driver::TelloStatus :md5sum-) "e6d1629583c9b3a337a806afc71e19f7")
(setf (get tello_driver::TelloStatus :datatype-) "tello_driver/TelloStatus")
(setf (get tello_driver::TelloStatus :definition-)
      "# Non-negative; calibrated to takeoff altitude; auto-calib if falls below takeoff height; inaccurate near ground
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
")



(provide :tello_driver/TelloStatus "e6d1629583c9b3a337a806afc71e19f7")


