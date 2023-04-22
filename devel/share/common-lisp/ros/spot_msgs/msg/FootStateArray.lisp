; Auto-generated. Do not edit!


(cl:in-package spot_msgs-msg)


;//! \htmlinclude FootStateArray.msg.html

(cl:defclass <FootStateArray> (roslisp-msg-protocol:ros-message)
  ((states
    :reader states
    :initarg :states
    :type (cl:vector spot_msgs-msg:FootState)
   :initform (cl:make-array 0 :element-type 'spot_msgs-msg:FootState :initial-element (cl:make-instance 'spot_msgs-msg:FootState))))
)

(cl:defclass FootStateArray (<FootStateArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FootStateArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FootStateArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spot_msgs-msg:<FootStateArray> is deprecated: use spot_msgs-msg:FootStateArray instead.")))

(cl:ensure-generic-function 'states-val :lambda-list '(m))
(cl:defmethod states-val ((m <FootStateArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spot_msgs-msg:states-val is deprecated.  Use spot_msgs-msg:states instead.")
  (states m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FootStateArray>) ostream)
  "Serializes a message object of type '<FootStateArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'states))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'states))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FootStateArray>) istream)
  "Deserializes a message object of type '<FootStateArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'states) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'states)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'spot_msgs-msg:FootState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FootStateArray>)))
  "Returns string type for a message object of type '<FootStateArray>"
  "spot_msgs/FootStateArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FootStateArray)))
  "Returns string type for a message object of type 'FootStateArray"
  "spot_msgs/FootStateArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FootStateArray>)))
  "Returns md5sum for a message object of type '<FootStateArray>"
  "6bad9df4582060c21e7bde863865e1cb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FootStateArray)))
  "Returns md5sum for a message object of type 'FootStateArray"
  "6bad9df4582060c21e7bde863865e1cb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FootStateArray>)))
  "Returns full string definition for message of type '<FootStateArray>"
  (cl:format cl:nil "FootState[] states~%~%================================================================================~%MSG: spot_msgs/FootState~%# Contact~%uint8 CONTACT_UNKNOWN = 0~%uint8 CONTACT_MADE = 1~%uint8 CONTACT_LOST = 2~%~%geometry_msgs/Point foot_position_rt_body~%uint8 contact~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FootStateArray)))
  "Returns full string definition for message of type 'FootStateArray"
  (cl:format cl:nil "FootState[] states~%~%================================================================================~%MSG: spot_msgs/FootState~%# Contact~%uint8 CONTACT_UNKNOWN = 0~%uint8 CONTACT_MADE = 1~%uint8 CONTACT_LOST = 2~%~%geometry_msgs/Point foot_position_rt_body~%uint8 contact~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FootStateArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'states) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FootStateArray>))
  "Converts a ROS message object to a list"
  (cl:list 'FootStateArray
    (cl:cons ':states (states msg))
))
