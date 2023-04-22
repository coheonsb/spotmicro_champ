; Auto-generated. Do not edit!


(cl:in-package spot_msgs-msg)


;//! \htmlinclude FootState.msg.html

(cl:defclass <FootState> (roslisp-msg-protocol:ros-message)
  ((foot_position_rt_body
    :reader foot_position_rt_body
    :initarg :foot_position_rt_body
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (contact
    :reader contact
    :initarg :contact
    :type cl:fixnum
    :initform 0))
)

(cl:defclass FootState (<FootState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FootState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FootState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spot_msgs-msg:<FootState> is deprecated: use spot_msgs-msg:FootState instead.")))

(cl:ensure-generic-function 'foot_position_rt_body-val :lambda-list '(m))
(cl:defmethod foot_position_rt_body-val ((m <FootState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spot_msgs-msg:foot_position_rt_body-val is deprecated.  Use spot_msgs-msg:foot_position_rt_body instead.")
  (foot_position_rt_body m))

(cl:ensure-generic-function 'contact-val :lambda-list '(m))
(cl:defmethod contact-val ((m <FootState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spot_msgs-msg:contact-val is deprecated.  Use spot_msgs-msg:contact instead.")
  (contact m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<FootState>)))
    "Constants for message type '<FootState>"
  '((:CONTACT_UNKNOWN . 0)
    (:CONTACT_MADE . 1)
    (:CONTACT_LOST . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'FootState)))
    "Constants for message type 'FootState"
  '((:CONTACT_UNKNOWN . 0)
    (:CONTACT_MADE . 1)
    (:CONTACT_LOST . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FootState>) ostream)
  "Serializes a message object of type '<FootState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'foot_position_rt_body) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'contact)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FootState>) istream)
  "Deserializes a message object of type '<FootState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'foot_position_rt_body) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'contact)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FootState>)))
  "Returns string type for a message object of type '<FootState>"
  "spot_msgs/FootState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FootState)))
  "Returns string type for a message object of type 'FootState"
  "spot_msgs/FootState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FootState>)))
  "Returns md5sum for a message object of type '<FootState>"
  "524cf45b9d66134675b586174885a624")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FootState)))
  "Returns md5sum for a message object of type 'FootState"
  "524cf45b9d66134675b586174885a624")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FootState>)))
  "Returns full string definition for message of type '<FootState>"
  (cl:format cl:nil "# Contact~%uint8 CONTACT_UNKNOWN = 0~%uint8 CONTACT_MADE = 1~%uint8 CONTACT_LOST = 2~%~%geometry_msgs/Point foot_position_rt_body~%uint8 contact~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FootState)))
  "Returns full string definition for message of type 'FootState"
  (cl:format cl:nil "# Contact~%uint8 CONTACT_UNKNOWN = 0~%uint8 CONTACT_MADE = 1~%uint8 CONTACT_LOST = 2~%~%geometry_msgs/Point foot_position_rt_body~%uint8 contact~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FootState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'foot_position_rt_body))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FootState>))
  "Converts a ROS message object to a list"
  (cl:list 'FootState
    (cl:cons ':foot_position_rt_body (foot_position_rt_body msg))
    (cl:cons ':contact (contact msg))
))
