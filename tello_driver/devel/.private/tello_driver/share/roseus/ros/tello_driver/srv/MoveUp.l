;; Auto-generated. Do not edit!


(when (boundp 'tello_driver::MoveUp)
  (if (not (find-package "TELLO_DRIVER"))
    (make-package "TELLO_DRIVER"))
  (shadow 'MoveUp (find-package "TELLO_DRIVER")))
(unless (find-package "TELLO_DRIVER::MOVEUP")
  (make-package "TELLO_DRIVER::MOVEUP"))
(unless (find-package "TELLO_DRIVER::MOVEUPREQUEST")
  (make-package "TELLO_DRIVER::MOVEUPREQUEST"))
(unless (find-package "TELLO_DRIVER::MOVEUPRESPONSE")
  (make-package "TELLO_DRIVER::MOVEUPRESPONSE"))

(in-package "ROS")





(defclass tello_driver::MoveUpRequest
  :super ros::object
  :slots (_cm ))

(defmethod tello_driver::MoveUpRequest
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

(defclass tello_driver::MoveUpResponse
  :super ros::object
  :slots (_command_status ))

(defmethod tello_driver::MoveUpResponse
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

(defclass tello_driver::MoveUp
  :super ros::object
  :slots ())

(setf (get tello_driver::MoveUp :md5sum-) "93e098705f3e00df20d27935dc5efafa")
(setf (get tello_driver::MoveUp :datatype-) "tello_driver/MoveUp")
(setf (get tello_driver::MoveUp :request) tello_driver::MoveUpRequest)
(setf (get tello_driver::MoveUp :response) tello_driver::MoveUpResponse)

(defmethod tello_driver::MoveUpRequest
  (:response () (instance tello_driver::MoveUpResponse :init)))

(setf (get tello_driver::MoveUpRequest :md5sum-) "93e098705f3e00df20d27935dc5efafa")
(setf (get tello_driver::MoveUpRequest :datatype-) "tello_driver/MoveUpRequest")
(setf (get tello_driver::MoveUpRequest :definition-)
      "uint8   cm
---
bool    command_status
")

(setf (get tello_driver::MoveUpResponse :md5sum-) "93e098705f3e00df20d27935dc5efafa")
(setf (get tello_driver::MoveUpResponse :datatype-) "tello_driver/MoveUpResponse")
(setf (get tello_driver::MoveUpResponse :definition-)
      "uint8   cm
---
bool    command_status
")



(provide :tello_driver/MoveUp "93e098705f3e00df20d27935dc5efafa")


