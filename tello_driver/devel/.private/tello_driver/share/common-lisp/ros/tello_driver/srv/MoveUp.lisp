; Auto-generated. Do not edit!


(cl:in-package tello_driver-srv)


;//! \htmlinclude MoveUp-request.msg.html

(cl:defclass <MoveUp-request> (roslisp-msg-protocol:ros-message)
  ((cm
    :reader cm
    :initarg :cm
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MoveUp-request (<MoveUp-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveUp-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveUp-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tello_driver-srv:<MoveUp-request> is deprecated: use tello_driver-srv:MoveUp-request instead.")))

(cl:ensure-generic-function 'cm-val :lambda-list '(m))
(cl:defmethod cm-val ((m <MoveUp-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tello_driver-srv:cm-val is deprecated.  Use tello_driver-srv:cm instead.")
  (cm m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveUp-request>) ostream)
  "Serializes a message object of type '<MoveUp-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cm)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveUp-request>) istream)
  "Deserializes a message object of type '<MoveUp-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cm)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveUp-request>)))
  "Returns string type for a service object of type '<MoveUp-request>"
  "tello_driver/MoveUpRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveUp-request)))
  "Returns string type for a service object of type 'MoveUp-request"
  "tello_driver/MoveUpRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveUp-request>)))
  "Returns md5sum for a message object of type '<MoveUp-request>"
  "93e098705f3e00df20d27935dc5efafa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveUp-request)))
  "Returns md5sum for a message object of type 'MoveUp-request"
  "93e098705f3e00df20d27935dc5efafa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveUp-request>)))
  "Returns full string definition for message of type '<MoveUp-request>"
  (cl:format cl:nil "uint8   cm~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveUp-request)))
  "Returns full string definition for message of type 'MoveUp-request"
  (cl:format cl:nil "uint8   cm~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveUp-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveUp-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveUp-request
    (cl:cons ':cm (cm msg))
))
;//! \htmlinclude MoveUp-response.msg.html

(cl:defclass <MoveUp-response> (roslisp-msg-protocol:ros-message)
  ((command_status
    :reader command_status
    :initarg :command_status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MoveUp-response (<MoveUp-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveUp-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveUp-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tello_driver-srv:<MoveUp-response> is deprecated: use tello_driver-srv:MoveUp-response instead.")))

(cl:ensure-generic-function 'command_status-val :lambda-list '(m))
(cl:defmethod command_status-val ((m <MoveUp-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tello_driver-srv:command_status-val is deprecated.  Use tello_driver-srv:command_status instead.")
  (command_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveUp-response>) ostream)
  "Serializes a message object of type '<MoveUp-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'command_status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveUp-response>) istream)
  "Deserializes a message object of type '<MoveUp-response>"
    (cl:setf (cl:slot-value msg 'command_status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveUp-response>)))
  "Returns string type for a service object of type '<MoveUp-response>"
  "tello_driver/MoveUpResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveUp-response)))
  "Returns string type for a service object of type 'MoveUp-response"
  "tello_driver/MoveUpResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveUp-response>)))
  "Returns md5sum for a message object of type '<MoveUp-response>"
  "93e098705f3e00df20d27935dc5efafa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveUp-response)))
  "Returns md5sum for a message object of type 'MoveUp-response"
  "93e098705f3e00df20d27935dc5efafa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveUp-response>)))
  "Returns full string definition for message of type '<MoveUp-response>"
  (cl:format cl:nil "bool    command_status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveUp-response)))
  "Returns full string definition for message of type 'MoveUp-response"
  (cl:format cl:nil "bool    command_status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveUp-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveUp-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveUp-response
    (cl:cons ':command_status (command_status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MoveUp)))
  'MoveUp-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MoveUp)))
  'MoveUp-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveUp)))
  "Returns string type for a service object of type '<MoveUp>"
  "tello_driver/MoveUp")