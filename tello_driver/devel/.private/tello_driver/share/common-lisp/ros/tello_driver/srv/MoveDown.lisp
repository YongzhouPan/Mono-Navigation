; Auto-generated. Do not edit!


(cl:in-package tello_driver-srv)


;//! \htmlinclude MoveDown-request.msg.html

(cl:defclass <MoveDown-request> (roslisp-msg-protocol:ros-message)
  ((cm
    :reader cm
    :initarg :cm
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MoveDown-request (<MoveDown-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveDown-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveDown-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tello_driver-srv:<MoveDown-request> is deprecated: use tello_driver-srv:MoveDown-request instead.")))

(cl:ensure-generic-function 'cm-val :lambda-list '(m))
(cl:defmethod cm-val ((m <MoveDown-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tello_driver-srv:cm-val is deprecated.  Use tello_driver-srv:cm instead.")
  (cm m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveDown-request>) ostream)
  "Serializes a message object of type '<MoveDown-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cm)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveDown-request>) istream)
  "Deserializes a message object of type '<MoveDown-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cm)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveDown-request>)))
  "Returns string type for a service object of type '<MoveDown-request>"
  "tello_driver/MoveDownRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveDown-request)))
  "Returns string type for a service object of type 'MoveDown-request"
  "tello_driver/MoveDownRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveDown-request>)))
  "Returns md5sum for a message object of type '<MoveDown-request>"
  "93e098705f3e00df20d27935dc5efafa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveDown-request)))
  "Returns md5sum for a message object of type 'MoveDown-request"
  "93e098705f3e00df20d27935dc5efafa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveDown-request>)))
  "Returns full string definition for message of type '<MoveDown-request>"
  (cl:format cl:nil "uint8   cm~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveDown-request)))
  "Returns full string definition for message of type 'MoveDown-request"
  (cl:format cl:nil "uint8   cm~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveDown-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveDown-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveDown-request
    (cl:cons ':cm (cm msg))
))
;//! \htmlinclude MoveDown-response.msg.html

(cl:defclass <MoveDown-response> (roslisp-msg-protocol:ros-message)
  ((command_status
    :reader command_status
    :initarg :command_status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MoveDown-response (<MoveDown-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveDown-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveDown-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tello_driver-srv:<MoveDown-response> is deprecated: use tello_driver-srv:MoveDown-response instead.")))

(cl:ensure-generic-function 'command_status-val :lambda-list '(m))
(cl:defmethod command_status-val ((m <MoveDown-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tello_driver-srv:command_status-val is deprecated.  Use tello_driver-srv:command_status instead.")
  (command_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveDown-response>) ostream)
  "Serializes a message object of type '<MoveDown-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'command_status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveDown-response>) istream)
  "Deserializes a message object of type '<MoveDown-response>"
    (cl:setf (cl:slot-value msg 'command_status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveDown-response>)))
  "Returns string type for a service object of type '<MoveDown-response>"
  "tello_driver/MoveDownResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveDown-response)))
  "Returns string type for a service object of type 'MoveDown-response"
  "tello_driver/MoveDownResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveDown-response>)))
  "Returns md5sum for a message object of type '<MoveDown-response>"
  "93e098705f3e00df20d27935dc5efafa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveDown-response)))
  "Returns md5sum for a message object of type 'MoveDown-response"
  "93e098705f3e00df20d27935dc5efafa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveDown-response>)))
  "Returns full string definition for message of type '<MoveDown-response>"
  (cl:format cl:nil "bool    command_status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveDown-response)))
  "Returns full string definition for message of type 'MoveDown-response"
  (cl:format cl:nil "bool    command_status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveDown-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveDown-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveDown-response
    (cl:cons ':command_status (command_status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MoveDown)))
  'MoveDown-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MoveDown)))
  'MoveDown-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveDown)))
  "Returns string type for a service object of type '<MoveDown>"
  "tello_driver/MoveDown")