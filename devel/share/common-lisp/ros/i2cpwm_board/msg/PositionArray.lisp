; Auto-generated. Do not edit!


(cl:in-package i2cpwm_board-msg)


;//! \htmlinclude PositionArray.msg.html

(cl:defclass <PositionArray> (roslisp-msg-protocol:ros-message)
  ((servos
    :reader servos
    :initarg :servos
    :type (cl:vector i2cpwm_board-msg:Position)
   :initform (cl:make-array 0 :element-type 'i2cpwm_board-msg:Position :initial-element (cl:make-instance 'i2cpwm_board-msg:Position))))
)

(cl:defclass PositionArray (<PositionArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PositionArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PositionArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name i2cpwm_board-msg:<PositionArray> is deprecated: use i2cpwm_board-msg:PositionArray instead.")))

(cl:ensure-generic-function 'servos-val :lambda-list '(m))
(cl:defmethod servos-val ((m <PositionArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader i2cpwm_board-msg:servos-val is deprecated.  Use i2cpwm_board-msg:servos instead.")
  (servos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PositionArray>) ostream)
  "Serializes a message object of type '<PositionArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'servos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'servos))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PositionArray>) istream)
  "Deserializes a message object of type '<PositionArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'servos) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'servos)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'i2cpwm_board-msg:Position))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PositionArray>)))
  "Returns string type for a message object of type '<PositionArray>"
  "i2cpwm_board/PositionArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PositionArray)))
  "Returns string type for a message object of type 'PositionArray"
  "i2cpwm_board/PositionArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PositionArray>)))
  "Returns md5sum for a message object of type '<PositionArray>"
  "06b5be802f78af7b5ec929fe386952bb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PositionArray)))
  "Returns md5sum for a message object of type 'PositionArray"
  "06b5be802f78af7b5ec929fe386952bb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PositionArray>)))
  "Returns full string definition for message of type '<PositionArray>"
  (cl:format cl:nil "# the PositionArray message handles multiple position assignments~%# of servos.~%~%Position[] servos~%~%================================================================================~%MSG: i2cpwm_board/Position~%# the position message is used when configuring drive mode to~%# assign a  servo to a specific wheel positon in the drive system~%# postions are specific toe the desired drive mode~%# ackerman has only one position~%# 1 = drive~%# differential has two positons~%# 1 = left, 2 = right~%# mecanum has four positions~%# 1 = front left, 2 = front right, 3 = rear left, 4 = rear right~%# multiple servos/motors may be used for each positon~%~%int16 servo~%int16 position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PositionArray)))
  "Returns full string definition for message of type 'PositionArray"
  (cl:format cl:nil "# the PositionArray message handles multiple position assignments~%# of servos.~%~%Position[] servos~%~%================================================================================~%MSG: i2cpwm_board/Position~%# the position message is used when configuring drive mode to~%# assign a  servo to a specific wheel positon in the drive system~%# postions are specific toe the desired drive mode~%# ackerman has only one position~%# 1 = drive~%# differential has two positons~%# 1 = left, 2 = right~%# mecanum has four positions~%# 1 = front left, 2 = front right, 3 = rear left, 4 = rear right~%# multiple servos/motors may be used for each positon~%~%int16 servo~%int16 position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PositionArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'servos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PositionArray>))
  "Converts a ROS message object to a list"
  (cl:list 'PositionArray
    (cl:cons ':servos (servos msg))
))
