; Auto-generated. Do not edit!


(cl:in-package i2cpwm_board-msg)


;//! \htmlinclude ServoConfig.msg.html

(cl:defclass <ServoConfig> (roslisp-msg-protocol:ros-message)
  ((servo
    :reader servo
    :initarg :servo
    :type cl:fixnum
    :initform 0)
   (center
    :reader center
    :initarg :center
    :type cl:fixnum
    :initform 0)
   (range
    :reader range
    :initarg :range
    :type cl:fixnum
    :initform 0)
   (direction
    :reader direction
    :initarg :direction
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ServoConfig (<ServoConfig>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServoConfig>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServoConfig)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name i2cpwm_board-msg:<ServoConfig> is deprecated: use i2cpwm_board-msg:ServoConfig instead.")))

(cl:ensure-generic-function 'servo-val :lambda-list '(m))
(cl:defmethod servo-val ((m <ServoConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader i2cpwm_board-msg:servo-val is deprecated.  Use i2cpwm_board-msg:servo instead.")
  (servo m))

(cl:ensure-generic-function 'center-val :lambda-list '(m))
(cl:defmethod center-val ((m <ServoConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader i2cpwm_board-msg:center-val is deprecated.  Use i2cpwm_board-msg:center instead.")
  (center m))

(cl:ensure-generic-function 'range-val :lambda-list '(m))
(cl:defmethod range-val ((m <ServoConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader i2cpwm_board-msg:range-val is deprecated.  Use i2cpwm_board-msg:range instead.")
  (range m))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <ServoConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader i2cpwm_board-msg:direction-val is deprecated.  Use i2cpwm_board-msg:direction instead.")
  (direction m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServoConfig>) ostream)
  "Serializes a message object of type '<ServoConfig>"
  (cl:let* ((signed (cl:slot-value msg 'servo)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'center)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'range)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'direction)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServoConfig>) istream)
  "Deserializes a message object of type '<ServoConfig>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'servo) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'center) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'range) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'direction) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServoConfig>)))
  "Returns string type for a message object of type '<ServoConfig>"
  "i2cpwm_board/ServoConfig")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServoConfig)))
  "Returns string type for a message object of type 'ServoConfig"
  "i2cpwm_board/ServoConfig")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServoConfig>)))
  "Returns md5sum for a message object of type '<ServoConfig>"
  "d258bdc7108a9660981de680cfa4372d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServoConfig)))
  "Returns md5sum for a message object of type 'ServoConfig"
  "d258bdc7108a9660981de680cfa4372d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServoConfig>)))
  "Returns full string definition for message of type '<ServoConfig>"
  (cl:format cl:nil "# the ServoConfig message is used to assign specific configuration~%# data to a servo. the data is needed to normalize servos to~%# common values to isolate variations from the rest of the user's~%# robot motion code. ~%~%int16 servo~%int16 center~%int16 range~%int16 direction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServoConfig)))
  "Returns full string definition for message of type 'ServoConfig"
  (cl:format cl:nil "# the ServoConfig message is used to assign specific configuration~%# data to a servo. the data is needed to normalize servos to~%# common values to isolate variations from the rest of the user's~%# robot motion code. ~%~%int16 servo~%int16 center~%int16 range~%int16 direction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServoConfig>))
  (cl:+ 0
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServoConfig>))
  "Converts a ROS message object to a list"
  (cl:list 'ServoConfig
    (cl:cons ':servo (servo msg))
    (cl:cons ':center (center msg))
    (cl:cons ':range (range msg))
    (cl:cons ':direction (direction msg))
))
