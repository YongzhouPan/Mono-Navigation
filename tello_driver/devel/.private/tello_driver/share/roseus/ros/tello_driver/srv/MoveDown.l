;; Auto-generated. Do not edit!


(when (boundp 'tello_driver::MoveDown)
  (if (not (find-package "TELLO_DRIVER"))
    (make-package "TELLO_DRIVER"))
  (shadow 'MoveDown (find-package "TELLO_DRIVER")))
(unless (find-package "TELLO_DRIVER::MOVEDOWN")
  (make-package "TELLO_DRIVER::MOVEDOWN"))
(unless (find-package "TELLO_DRIVER::MOVEDOWNREQUEST")
  (make-package "TELLO_DRIVER::MOVEDOWNREQUEST"))
(unless (find-package "TELLO_DRIVER::MOVEDOWNRESPONSE")
  (make-package "TELLO_DRIVER::MOVEDOWNRESPONSE"))

(in-package "ROS")





(defclass tello_driver::MoveDownRequest
  :super ros::object
  :slots (_cm ))

(defmethod tello_driver::MoveDownRequest
  (:init
   (&key
    ((:cm __cm) 0)
    )
   (send-super :init)
   (setq _cm (round __cm))
   self)
  (:cm
   (&optional __cm)
   (if __cm (setq _cm __cm)) _cm)
  (:serialization-length
   ()
   (+
    ;; uint8 _cm
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _cm
       (write-byte _cm s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _cm
     (setq _cm (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass tello_driver::MoveDownResponse
  :super ros::object
  :slots (_command_status ))

(defmethod tello_driver::MoveDownResponse
  (:init
   (&key
    ((:command_status __command_status) nil)
    )
   (send-super :init)
   (setq _command_status __command_status)
   self)
  (:command_status
   (&optional __command_status)
   (if __command_status (setq _command_status __command_status)) _command_status)
  (:serialization-length
   ()
   (+
    ;; bool _command_status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _command_status
       (if _command_status (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _command_status
     (setq _command_status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass tello_driver::MoveDown
  :super ros::object
  :slots ())

(setf (get tello_driver::MoveDown :md5sum-) "93e098705f3e00df20d27935dc5efafa")
(setf (get tello_driver::MoveDown :datatype-) "tello_driver/MoveDown")
(setf (get tello_driver::MoveDown :request) tello_driver::MoveDownRequest)
(setf (get tello_driver::MoveDown :response) tello_driver::MoveDownResponse)

(defmethod tello_driver::MoveDownRequest
  (:response () (instance tello_driver::MoveDownResponse :init)))

(setf (get tello_driver::MoveDownRequest :md5sum-) "93e098705f3e00df20d27935dc5efafa")
(setf (get tello_driver::MoveDownRequest :datatype-) "tello_driver/MoveDownRequest")
(setf (get tello_driver::MoveDownRequest :definition-)
      "uint8   cm
---
bool    command_status
")

(setf (get tello_driver::MoveDownResponse :md5sum-) "93e098705f3e00df20d27935dc5efafa")
(setf (get tello_driver::MoveDownResponse :datatype-) "tello_driver/MoveDownResponse")
(setf (get tello_driver::MoveDownResponse :definition-)
      "uint8   cm
---
bool    command_status
")



(provide :tello_driver/MoveDown "93e098705f3e00df20d27935dc5efafa")


