; Auto-generated. Do not edit!


(cl:in-package i2cpwm_board-msg)


;//! \htmlinclude ServoArray.msg.html

(cl:defclass <ServoArray> (roslisp-msg-protocol:ros-message)
  ((servos
    :reader servos
    :initarg :servos
    :type (cl:vector i2cpwm_board-msg:Servo)
   :initform (cl:make-array 0 :element-type 'i2cpwm_board-msg:Servo :initial-element (cl:make-instance 'i2cpwm_board-msg:Servo))))
)

(cl:defclass ServoArray (<ServoArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServoArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServoArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name i2cpwm_board-msg:<ServoArray> is deprecated: use i2cpwm_board-msg:ServoArray instead.")))

(cl:ensure-generic-function 'servos-val :lambda-list '(m))
(cl:defmethod servos-val ((m <ServoArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader i2cpwm_board-msg:servos-val is deprecated.  Use i2cpwm_board-msg:servos instead.")
  (servos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServoArray>) ostream)
  "Serializes a message object of type '<ServoArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'servos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'servos))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServoArray>) istream)
  "Deserializes a message object of type '<ServoArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'servos) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'servos)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'i2cpwm_board-msg:Servo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServoArray>)))
  "Returns string type for a message object of type '<ServoArray>"
  "i2cpwm_board/ServoArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServoArray)))
  "Returns string type for a message object of type 'ServoArray"
  "i2cpwm_board/ServoArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServoArray>)))
  "Returns md5sum for a message object of type '<ServoArray>"
  "7dcfd407a2095ba27997610e5008ca84")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServoArray)))
  "Returns md5sum for a message object of type 'ServoArray"
  "7dcfd407a2095ba27997610e5008ca84")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServoArray>)))
  "Returns full string definition for message of type '<ServoArray>"
  (cl:format cl:nil "# the ServoArray message is commonly used message in this package to~%# handle multiple assignments of values to servos. the purpose of~%# the value is dependent on the topic or service being called~%~%Servo[] servos~%~%================================================================================~%MSG: i2cpwm_board/Servo~%# the Servo message is commonly used message in this package to~%# assign a value to a specific servo. the purpose of the value is~%# dependent on the topic or service being called~%~%int16 servo~%float32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServoArray)))
  "Returns full string definition for message of type 'ServoArray"
  (cl:format cl:nil "# the ServoArray message is commonly used message in this package to~%# handle multiple assignments of values to servos. the purpose of~%# the value is dependent on the topic or service being called~%~%Servo[] servos~%~%================================================================================~%MSG: i2cpwm_board/Servo~%# the Servo message is commonly used message in this package to~%# assign a value to a specific servo. the purpose of the value is~%# dependent on the topic or service being called~%~%int16 servo~%float32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServoArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'servos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServoArray>))
  "Converts a ROS message object to a list"
  (cl:list 'ServoArray
    (cl:cons ':servos (servos msg))
))
