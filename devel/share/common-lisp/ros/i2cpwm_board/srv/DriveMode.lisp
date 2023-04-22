; Auto-generated. Do not edit!


(cl:in-package i2cpwm_board-srv)


;//! \htmlinclude DriveMode-request.msg.html

(cl:defclass <DriveMode-request> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:string
    :initform "")
   (rpm
    :reader rpm
    :initarg :rpm
    :type cl:float
    :initform 0.0)
   (radius
    :reader radius
    :initarg :radius
    :type cl:float
    :initform 0.0)
   (track
    :reader track
    :initarg :track
    :type cl:float
    :initform 0.0)
   (scale
    :reader scale
    :initarg :scale
    :type cl:float
    :initform 0.0)
   (servos
    :reader servos
    :initarg :servos
    :type (cl:vector i2cpwm_board-msg:Position)
   :initform (cl:make-array 0 :element-type 'i2cpwm_board-msg:Position :initial-element (cl:make-instance 'i2cpwm_board-msg:Position))))
)

(cl:defclass DriveMode-request (<DriveMode-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DriveMode-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DriveMode-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name i2cpwm_board-srv:<DriveMode-request> is deprecated: use i2cpwm_board-srv:DriveMode-request instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <DriveMode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader i2cpwm_board-srv:mode-val is deprecated.  Use i2cpwm_board-srv:mode instead.")
  (mode m))

(cl:ensure-generic-function 'rpm-val :lambda-list '(m))
(cl:defmethod rpm-val ((m <DriveMode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader i2cpwm_board-srv:rpm-val is deprecated.  Use i2cpwm_board-srv:rpm instead.")
  (rpm m))

(cl:ensure-generic-function 'radius-val :lambda-list '(m))
(cl:defmethod radius-val ((m <DriveMode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader i2cpwm_board-srv:radius-val is deprecated.  Use i2cpwm_board-srv:radius instead.")
  (radius m))

(cl:ensure-generic-function 'track-val :lambda-list '(m))
(cl:defmethod track-val ((m <DriveMode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader i2cpwm_board-srv:track-val is deprecated.  Use i2cpwm_board-srv:track instead.")
  (track m))

(cl:ensure-generic-function 'scale-val :lambda-list '(m))
(cl:defmethod scale-val ((m <DriveMode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader i2cpwm_board-srv:scale-val is deprecated.  Use i2cpwm_board-srv:scale instead.")
  (scale m))

(cl:ensure-generic-function 'servos-val :lambda-list '(m))
(cl:defmethod servos-val ((m <DriveMode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader i2cpwm_board-srv:servos-val is deprecated.  Use i2cpwm_board-srv:servos instead.")
  (servos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DriveMode-request>) ostream)
  "Serializes a message object of type '<DriveMode-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mode))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rpm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'radius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'track))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'scale))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'servos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'servos))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DriveMode-request>) istream)
  "Deserializes a message object of type '<DriveMode-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mode) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rpm) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'radius) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'track) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'scale) (roslisp-utils:decode-single-float-bits bits)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DriveMode-request>)))
  "Returns string type for a service object of type '<DriveMode-request>"
  "i2cpwm_board/DriveModeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DriveMode-request)))
  "Returns string type for a service object of type 'DriveMode-request"
  "i2cpwm_board/DriveModeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DriveMode-request>)))
  "Returns md5sum for a message object of type '<DriveMode-request>"
  "e4da47a0d835738660a86a1db5528f89")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DriveMode-request)))
  "Returns md5sum for a message object of type 'DriveMode-request"
  "e4da47a0d835738660a86a1db5528f89")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DriveMode-request>)))
  "Returns full string definition for message of type '<DriveMode-request>"
  (cl:format cl:nil "# the drive_mode service is used to assigned servos to various drive modes~%# the drive modes determine how the assigned servos respond to geometry_msgs::Twist messages~%# drive modes are one of: ackerman, differential, or mecanum~%# to accurately convert velocity in m/s the controller needs to know three values:~%#   the RPM    - the maximum output speed available from the drive motors~%#   the radius - the drive wheel radius in meters~%#   the track  - the distance between the left and right wheels in meters~%# use the scale value to adjust incoming Twist values as needed to match the servo/motor capability~%~%~%string mode~%float32 rpm~%float32 radius~%float32 track~%float32 scale~%Position[] servos~%~%================================================================================~%MSG: i2cpwm_board/Position~%# the position message is used when configuring drive mode to~%# assign a  servo to a specific wheel positon in the drive system~%# postions are specific toe the desired drive mode~%# ackerman has only one position~%# 1 = drive~%# differential has two positons~%# 1 = left, 2 = right~%# mecanum has four positions~%# 1 = front left, 2 = front right, 3 = rear left, 4 = rear right~%# multiple servos/motors may be used for each positon~%~%int16 servo~%int16 position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DriveMode-request)))
  "Returns full string definition for message of type 'DriveMode-request"
  (cl:format cl:nil "# the drive_mode service is used to assigned servos to various drive modes~%# the drive modes determine how the assigned servos respond to geometry_msgs::Twist messages~%# drive modes are one of: ackerman, differential, or mecanum~%# to accurately convert velocity in m/s the controller needs to know three values:~%#   the RPM    - the maximum output speed available from the drive motors~%#   the radius - the drive wheel radius in meters~%#   the track  - the distance between the left and right wheels in meters~%# use the scale value to adjust incoming Twist values as needed to match the servo/motor capability~%~%~%string mode~%float32 rpm~%float32 radius~%float32 track~%float32 scale~%Position[] servos~%~%================================================================================~%MSG: i2cpwm_board/Position~%# the position message is used when configuring drive mode to~%# assign a  servo to a specific wheel positon in the drive system~%# postions are specific toe the desired drive mode~%# ackerman has only one position~%# 1 = drive~%# differential has two positons~%# 1 = left, 2 = right~%# mecanum has four positions~%# 1 = front left, 2 = front right, 3 = rear left, 4 = rear right~%# multiple servos/motors may be used for each positon~%~%int16 servo~%int16 position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DriveMode-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'mode))
     4
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'servos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DriveMode-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DriveMode-request
    (cl:cons ':mode (mode msg))
    (cl:cons ':rpm (rpm msg))
    (cl:cons ':radius (radius msg))
    (cl:cons ':track (track msg))
    (cl:cons ':scale (scale msg))
    (cl:cons ':servos (servos msg))
))
;//! \htmlinclude DriveMode-response.msg.html

(cl:defclass <DriveMode-response> (roslisp-msg-protocol:ros-message)
  ((error
    :reader error
    :initarg :error
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DriveMode-response (<DriveMode-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DriveMode-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DriveMode-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name i2cpwm_board-srv:<DriveMode-response> is deprecated: use i2cpwm_board-srv:DriveMode-response instead.")))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <DriveMode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader i2cpwm_board-srv:error-val is deprecated.  Use i2cpwm_board-srv:error instead.")
  (error m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DriveMode-response>) ostream)
  "Serializes a message object of type '<DriveMode-response>"
  (cl:let* ((signed (cl:slot-value msg 'error)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DriveMode-response>) istream)
  "Deserializes a message object of type '<DriveMode-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DriveMode-response>)))
  "Returns string type for a service object of type '<DriveMode-response>"
  "i2cpwm_board/DriveModeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DriveMode-response)))
  "Returns string type for a service object of type 'DriveMode-response"
  "i2cpwm_board/DriveModeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DriveMode-response>)))
  "Returns md5sum for a message object of type '<DriveMode-response>"
  "e4da47a0d835738660a86a1db5528f89")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DriveMode-response)))
  "Returns md5sum for a message object of type 'DriveMode-response"
  "e4da47a0d835738660a86a1db5528f89")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DriveMode-response>)))
  "Returns full string definition for message of type '<DriveMode-response>"
  (cl:format cl:nil "int16 error~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DriveMode-response)))
  "Returns full string definition for message of type 'DriveMode-response"
  (cl:format cl:nil "int16 error~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DriveMode-response>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DriveMode-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DriveMode-response
    (cl:cons ':error (error msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DriveMode)))
  'DriveMode-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DriveMode)))
  'DriveMode-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DriveMode)))
  "Returns string type for a service object of type '<DriveMode>"
  "i2cpwm_board/DriveMode")