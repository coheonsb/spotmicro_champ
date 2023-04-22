; Auto-generated. Do not edit!


(cl:in-package i2cpwm_board-msg)


;//! \htmlinclude Position.msg.html

(cl:defclass <Position> (roslisp-msg-protocol:ros-message)
  ((servo
    :reader servo
    :initarg :servo
    :type cl:fixnum
    :initform 0)
   (position
    :reader position
    :initarg :position
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Position (<Position>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Position>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Position)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name i2cpwm_board-msg:<Position> is deprecated: use i2cpwm_board-msg:Position instead.")))

(cl:ensure-generic-function 'servo-val :lambda-list '(m))
(cl:defmethod servo-val ((m <Position>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader i2cpwm_board-msg:servo-val is deprecated.  Use i2cpwm_board-msg:servo instead.")
  (servo m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <Position>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader i2cpwm_board-msg:position-val is deprecated.  Use i2cpwm_board-msg:position instead.")
  (position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Position>) ostream)
  "Serializes a message object of type '<Position>"
  (cl:let* ((signed (cl:slot-value msg 'servo)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'position)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Position>) istream)
  "Deserializes a message object of type '<Position>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'servo) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'position) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Position>)))
  "Returns string type for a message object of type '<Position>"
  "i2cpwm_board/Position")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Position)))
  "Returns string type for a message object of type 'Position"
  "i2cpwm_board/Position")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Position>)))
  "Returns md5sum for a message object of type '<Position>"
  "46d1769fd9d3e30e5c4274bd2f84d885")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Position)))
  "Returns md5sum for a message object of type 'Position"
  "46d1769fd9d3e30e5c4274bd2f84d885")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Position>)))
  "Returns full string definition for message of type '<Position>"
  (cl:format cl:nil "# the position message is used when configuring drive mode to~%# assign a  servo to a specific wheel positon in the drive system~%# postions are specific toe the desired drive mode~%# ackerman has only one position~%# 1 = drive~%# differential has two positons~%# 1 = left, 2 = right~%# mecanum has four positions~%# 1 = front left, 2 = front right, 3 = rear left, 4 = rear right~%# multiple servos/motors may be used for each positon~%~%int16 servo~%int16 position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Position)))
  "Returns full string definition for message of type 'Position"
  (cl:format cl:nil "# the position message is used when configuring drive mode to~%# assign a  servo to a specific wheel positon in the drive system~%# postions are specific toe the desired drive mode~%# ackerman has only one position~%# 1 = drive~%# differential has two positons~%# 1 = left, 2 = right~%# mecanum has four positions~%# 1 = front left, 2 = front right, 3 = rear left, 4 = rear right~%# multiple servos/motors may be used for each positon~%~%int16 servo~%int16 position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Position>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Position>))
  "Converts a ROS message object to a list"
  (cl:list 'Position
    (cl:cons ':servo (servo msg))
    (cl:cons ':position (position msg))
))
