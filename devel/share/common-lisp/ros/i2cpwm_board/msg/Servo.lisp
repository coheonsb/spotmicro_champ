; Auto-generated. Do not edit!


(cl:in-package i2cpwm_board-msg)


;//! \htmlinclude Servo.msg.html

(cl:defclass <Servo> (roslisp-msg-protocol:ros-message)
  ((servo
    :reader servo
    :initarg :servo
    :type cl:fixnum
    :initform 0)
   (value
    :reader value
    :initarg :value
    :type cl:float
    :initform 0.0))
)

(cl:defclass Servo (<Servo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Servo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Servo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name i2cpwm_board-msg:<Servo> is deprecated: use i2cpwm_board-msg:Servo instead.")))

(cl:ensure-generic-function 'servo-val :lambda-list '(m))
(cl:defmethod servo-val ((m <Servo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader i2cpwm_board-msg:servo-val is deprecated.  Use i2cpwm_board-msg:servo instead.")
  (servo m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <Servo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader i2cpwm_board-msg:value-val is deprecated.  Use i2cpwm_board-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Servo>) ostream)
  "Serializes a message object of type '<Servo>"
  (cl:let* ((signed (cl:slot-value msg 'servo)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Servo>) istream)
  "Deserializes a message object of type '<Servo>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'servo) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'value) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Servo>)))
  "Returns string type for a message object of type '<Servo>"
  "i2cpwm_board/Servo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Servo)))
  "Returns string type for a message object of type 'Servo"
  "i2cpwm_board/Servo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Servo>)))
  "Returns md5sum for a message object of type '<Servo>"
  "5e89689ba58524f73da7d375fa49d8a1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Servo)))
  "Returns md5sum for a message object of type 'Servo"
  "5e89689ba58524f73da7d375fa49d8a1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Servo>)))
  "Returns full string definition for message of type '<Servo>"
  (cl:format cl:nil "# the Servo message is commonly used message in this package to~%# assign a value to a specific servo. the purpose of the value is~%# dependent on the topic or service being called~%~%int16 servo~%float32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Servo)))
  "Returns full string definition for message of type 'Servo"
  (cl:format cl:nil "# the Servo message is commonly used message in this package to~%# assign a value to a specific servo. the purpose of the value is~%# dependent on the topic or service being called~%~%int16 servo~%float32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Servo>))
  (cl:+ 0
     2
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Servo>))
  "Converts a ROS message object to a list"
  (cl:list 'Servo
    (cl:cons ':servo (servo msg))
    (cl:cons ':value (value msg))
))
