; Auto-generated. Do not edit!


(cl:in-package i2cpwm_board-srv)


;//! \htmlinclude ServosConfig-request.msg.html

(cl:defclass <ServosConfig-request> (roslisp-msg-protocol:ros-message)
  ((servos
    :reader servos
    :initarg :servos
    :type (cl:vector i2cpwm_board-msg:ServoConfig)
   :initform (cl:make-array 0 :element-type 'i2cpwm_board-msg:ServoConfig :initial-element (cl:make-instance 'i2cpwm_board-msg:ServoConfig))))
)

(cl:defclass ServosConfig-request (<ServosConfig-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServosConfig-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServosConfig-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name i2cpwm_board-srv:<ServosConfig-request> is deprecated: use i2cpwm_board-srv:ServosConfig-request instead.")))

(cl:ensure-generic-function 'servos-val :lambda-list '(m))
(cl:defmethod servos-val ((m <ServosConfig-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader i2cpwm_board-srv:servos-val is deprecated.  Use i2cpwm_board-srv:servos instead.")
  (servos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServosConfig-request>) ostream)
  "Serializes a message object of type '<ServosConfig-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'servos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'servos))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServosConfig-request>) istream)
  "Deserializes a message object of type '<ServosConfig-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'servos) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'servos)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'i2cpwm_board-msg:ServoConfig))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServosConfig-request>)))
  "Returns string type for a service object of type '<ServosConfig-request>"
  "i2cpwm_board/ServosConfigRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServosConfig-request)))
  "Returns string type for a service object of type 'ServosConfig-request"
  "i2cpwm_board/ServosConfigRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServosConfig-request>)))
  "Returns md5sum for a message object of type '<ServosConfig-request>"
  "29a8ed89c4fc7505dd84e9625c298b65")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServosConfig-request)))
  "Returns md5sum for a message object of type 'ServosConfig-request"
  "29a8ed89c4fc7505dd84e9625c298b65")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServosConfig-request>)))
  "Returns full string definition for message of type '<ServosConfig-request>"
  (cl:format cl:nil "# the servos_config service is used to assign useful configuration data to servos~%# the tollerance of electronis varies in RC servos so it is important to calibate~%# each servo, indicating its PWM value for direction of rotation, centering, and~%# range which is used to scale servo motion a standard ±1000 scale~%~%ServoConfig[] servos~%~%================================================================================~%MSG: i2cpwm_board/ServoConfig~%# the ServoConfig message is used to assign specific configuration~%# data to a servo. the data is needed to normalize servos to~%# common values to isolate variations from the rest of the user's~%# robot motion code. ~%~%int16 servo~%int16 center~%int16 range~%int16 direction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServosConfig-request)))
  "Returns full string definition for message of type 'ServosConfig-request"
  (cl:format cl:nil "# the servos_config service is used to assign useful configuration data to servos~%# the tollerance of electronis varies in RC servos so it is important to calibate~%# each servo, indicating its PWM value for direction of rotation, centering, and~%# range which is used to scale servo motion a standard ±1000 scale~%~%ServoConfig[] servos~%~%================================================================================~%MSG: i2cpwm_board/ServoConfig~%# the ServoConfig message is used to assign specific configuration~%# data to a servo. the data is needed to normalize servos to~%# common values to isolate variations from the rest of the user's~%# robot motion code. ~%~%int16 servo~%int16 center~%int16 range~%int16 direction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServosConfig-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'servos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServosConfig-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ServosConfig-request
    (cl:cons ':servos (servos msg))
))
;//! \htmlinclude ServosConfig-response.msg.html

(cl:defclass <ServosConfig-response> (roslisp-msg-protocol:ros-message)
  ((error
    :reader error
    :initarg :error
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ServosConfig-response (<ServosConfig-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServosConfig-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServosConfig-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name i2cpwm_board-srv:<ServosConfig-response> is deprecated: use i2cpwm_board-srv:ServosConfig-response instead.")))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <ServosConfig-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader i2cpwm_board-srv:error-val is deprecated.  Use i2cpwm_board-srv:error instead.")
  (error m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServosConfig-response>) ostream)
  "Serializes a message object of type '<ServosConfig-response>"
  (cl:let* ((signed (cl:slot-value msg 'error)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServosConfig-response>) istream)
  "Deserializes a message object of type '<ServosConfig-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServosConfig-response>)))
  "Returns string type for a service object of type '<ServosConfig-response>"
  "i2cpwm_board/ServosConfigResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServosConfig-response)))
  "Returns string type for a service object of type 'ServosConfig-response"
  "i2cpwm_board/ServosConfigResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServosConfig-response>)))
  "Returns md5sum for a message object of type '<ServosConfig-response>"
  "29a8ed89c4fc7505dd84e9625c298b65")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServosConfig-response)))
  "Returns md5sum for a message object of type 'ServosConfig-response"
  "29a8ed89c4fc7505dd84e9625c298b65")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServosConfig-response>)))
  "Returns full string definition for message of type '<ServosConfig-response>"
  (cl:format cl:nil "int16 error~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServosConfig-response)))
  "Returns full string definition for message of type 'ServosConfig-response"
  (cl:format cl:nil "int16 error~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServosConfig-response>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServosConfig-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ServosConfig-response
    (cl:cons ':error (error msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ServosConfig)))
  'ServosConfig-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ServosConfig)))
  'ServosConfig-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServosConfig)))
  "Returns string type for a service object of type '<ServosConfig>"
  "i2cpwm_board/ServosConfig")