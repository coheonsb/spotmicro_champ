; Auto-generated. Do not edit!


(cl:in-package i2cpwm_board-srv)


;//! \htmlinclude IntValue-request.msg.html

(cl:defclass <IntValue-request> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass IntValue-request (<IntValue-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IntValue-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IntValue-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name i2cpwm_board-srv:<IntValue-request> is deprecated: use i2cpwm_board-srv:IntValue-request instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <IntValue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader i2cpwm_board-srv:value-val is deprecated.  Use i2cpwm_board-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IntValue-request>) ostream)
  "Serializes a message object of type '<IntValue-request>"
  (cl:let* ((signed (cl:slot-value msg 'value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IntValue-request>) istream)
  "Deserializes a message object of type '<IntValue-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IntValue-request>)))
  "Returns string type for a service object of type '<IntValue-request>"
  "i2cpwm_board/IntValueRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IntValue-request)))
  "Returns string type for a service object of type 'IntValue-request"
  "i2cpwm_board/IntValueRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IntValue-request>)))
  "Returns md5sum for a message object of type '<IntValue-request>"
  "0f0a503a6dfd41f41ab6b6db4044064a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IntValue-request)))
  "Returns md5sum for a message object of type 'IntValue-request"
  "0f0a503a6dfd41f41ab6b6db4044064a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IntValue-request>)))
  "Returns full string definition for message of type '<IntValue-request>"
  (cl:format cl:nil "# there are a few services whic take a single integer as input~%# these services share the IntValue service definition~%~%int16 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IntValue-request)))
  "Returns full string definition for message of type 'IntValue-request"
  (cl:format cl:nil "# there are a few services whic take a single integer as input~%# these services share the IntValue service definition~%~%int16 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IntValue-request>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IntValue-request>))
  "Converts a ROS message object to a list"
  (cl:list 'IntValue-request
    (cl:cons ':value (value msg))
))
;//! \htmlinclude IntValue-response.msg.html

(cl:defclass <IntValue-response> (roslisp-msg-protocol:ros-message)
  ((error
    :reader error
    :initarg :error
    :type cl:fixnum
    :initform 0))
)

(cl:defclass IntValue-response (<IntValue-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IntValue-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IntValue-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name i2cpwm_board-srv:<IntValue-response> is deprecated: use i2cpwm_board-srv:IntValue-response instead.")))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <IntValue-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader i2cpwm_board-srv:error-val is deprecated.  Use i2cpwm_board-srv:error instead.")
  (error m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IntValue-response>) ostream)
  "Serializes a message object of type '<IntValue-response>"
  (cl:let* ((signed (cl:slot-value msg 'error)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IntValue-response>) istream)
  "Deserializes a message object of type '<IntValue-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IntValue-response>)))
  "Returns string type for a service object of type '<IntValue-response>"
  "i2cpwm_board/IntValueResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IntValue-response)))
  "Returns string type for a service object of type 'IntValue-response"
  "i2cpwm_board/IntValueResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IntValue-response>)))
  "Returns md5sum for a message object of type '<IntValue-response>"
  "0f0a503a6dfd41f41ab6b6db4044064a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IntValue-response)))
  "Returns md5sum for a message object of type 'IntValue-response"
  "0f0a503a6dfd41f41ab6b6db4044064a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IntValue-response>)))
  "Returns full string definition for message of type '<IntValue-response>"
  (cl:format cl:nil "int16 error~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IntValue-response)))
  "Returns full string definition for message of type 'IntValue-response"
  (cl:format cl:nil "int16 error~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IntValue-response>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IntValue-response>))
  "Converts a ROS message object to a list"
  (cl:list 'IntValue-response
    (cl:cons ':error (error msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'IntValue)))
  'IntValue-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'IntValue)))
  'IntValue-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IntValue)))
  "Returns string type for a service object of type '<IntValue>"
  "i2cpwm_board/IntValue")