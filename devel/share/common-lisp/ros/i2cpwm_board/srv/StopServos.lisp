; Auto-generated. Do not edit!


(cl:in-package i2cpwm_board-srv)


;//! \htmlinclude StopServos-request.msg.html

(cl:defclass <StopServos-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass StopServos-request (<StopServos-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopServos-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopServos-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name i2cpwm_board-srv:<StopServos-request> is deprecated: use i2cpwm_board-srv:StopServos-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopServos-request>) ostream)
  "Serializes a message object of type '<StopServos-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopServos-request>) istream)
  "Deserializes a message object of type '<StopServos-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopServos-request>)))
  "Returns string type for a service object of type '<StopServos-request>"
  "i2cpwm_board/StopServosRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopServos-request)))
  "Returns string type for a service object of type 'StopServos-request"
  "i2cpwm_board/StopServosRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopServos-request>)))
  "Returns md5sum for a message object of type '<StopServos-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopServos-request)))
  "Returns md5sum for a message object of type 'StopServos-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopServos-request>)))
  "Returns full string definition for message of type '<StopServos-request>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopServos-request)))
  "Returns full string definition for message of type 'StopServos-request"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopServos-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopServos-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StopServos-request
))
;//! \htmlinclude StopServos-response.msg.html

(cl:defclass <StopServos-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass StopServos-response (<StopServos-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopServos-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopServos-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name i2cpwm_board-srv:<StopServos-response> is deprecated: use i2cpwm_board-srv:StopServos-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopServos-response>) ostream)
  "Serializes a message object of type '<StopServos-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopServos-response>) istream)
  "Deserializes a message object of type '<StopServos-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopServos-response>)))
  "Returns string type for a service object of type '<StopServos-response>"
  "i2cpwm_board/StopServosResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopServos-response)))
  "Returns string type for a service object of type 'StopServos-response"
  "i2cpwm_board/StopServosResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopServos-response>)))
  "Returns md5sum for a message object of type '<StopServos-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopServos-response)))
  "Returns md5sum for a message object of type 'StopServos-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopServos-response>)))
  "Returns full string definition for message of type '<StopServos-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopServos-response)))
  "Returns full string definition for message of type 'StopServos-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopServos-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopServos-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StopServos-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StopServos)))
  'StopServos-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StopServos)))
  'StopServos-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopServos)))
  "Returns string type for a service object of type '<StopServos>"
  "i2cpwm_board/StopServos")