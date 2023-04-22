; Auto-generated. Do not edit!


(cl:in-package i2cpwm_board-msg)


;//! \htmlinclude ServoConfigArray.msg.html

(cl:defclass <ServoConfigArray> (roslisp-msg-protocol:ros-message)
  ((servos
    :reader servos
    :initarg :servos
    :type (cl:vector i2cpwm_board-msg:ServoConfig)
   :initform (cl:make-array 0 :element-type 'i2cpwm_board-msg:ServoConfig :initial-element (cl:make-instance 'i2cpwm_board-msg:ServoConfig))))
)

(cl:defclass ServoConfigArray (<ServoConfigArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServoConfigArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServoConfigArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name i2cpwm_board-msg:<ServoConfigArray> is deprecated: use i2cpwm_board-msg:ServoConfigArray instead.")))

(cl:ensure-generic-function 'servos-val :lambda-list '(m))
(cl:defmethod servos-val ((m <ServoConfigArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader i2cpwm_board-msg:servos-val is deprecated.  Use i2cpwm_board-msg:servos instead.")
  (servos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServoConfigArray>) ostream)
  "Serializes a message object of type '<ServoConfigArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'servos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'servos))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServoConfigArray>) istream)
  "Deserializes a message object of type '<ServoConfigArray>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServoConfigArray>)))
  "Returns string type for a message object of type '<ServoConfigArray>"
  "i2cpwm_board/ServoConfigArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServoConfigArray)))
  "Returns string type for a message object of type 'ServoConfigArray"
  "i2cpwm_board/ServoConfigArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServoConfigArray>)))
  "Returns md5sum for a message object of type '<ServoConfigArray>"
  "8f9c43713b493f265aec1e926dd292b8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServoConfigArray)))
  "Returns md5sum for a message object of type 'ServoConfigArray"
  "8f9c43713b493f265aec1e926dd292b8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServoConfigArray>)))
  "Returns full string definition for message of type '<ServoConfigArray>"
  (cl:format cl:nil "# the ServoConfigArray message is used to handle multiple assignments~%# of config data to servos. the data is needed to normalize servos to~%# common values to isolate variations from the rest of the user's~%# robot motion code. ~%~%ServoConfig[] servos~%~%================================================================================~%MSG: i2cpwm_board/ServoConfig~%# the ServoConfig message is used to assign specific configuration~%# data to a servo. the data is needed to normalize servos to~%# common values to isolate variations from the rest of the user's~%# robot motion code. ~%~%int16 servo~%int16 center~%int16 range~%int16 direction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServoConfigArray)))
  "Returns full string definition for message of type 'ServoConfigArray"
  (cl:format cl:nil "# the ServoConfigArray message is used to handle multiple assignments~%# of config data to servos. the data is needed to normalize servos to~%# common values to isolate variations from the rest of the user's~%# robot motion code. ~%~%ServoConfig[] servos~%~%================================================================================~%MSG: i2cpwm_board/ServoConfig~%# the ServoConfig message is used to assign specific configuration~%# data to a servo. the data is needed to normalize servos to~%# common values to isolate variations from the rest of the user's~%# robot motion code. ~%~%int16 servo~%int16 center~%int16 range~%int16 direction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServoConfigArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'servos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServoConfigArray>))
  "Converts a ROS message object to a list"
  (cl:list 'ServoConfigArray
    (cl:cons ':servos (servos msg))
))
