;; Auto-generated. Do not edit!


(when (boundp 'spot_msgs::FootState)
  (if (not (find-package "SPOT_MSGS"))
    (make-package "SPOT_MSGS"))
  (shadow 'FootState (find-package "SPOT_MSGS")))
(unless (find-package "SPOT_MSGS::FOOTSTATE")
  (make-package "SPOT_MSGS::FOOTSTATE"))

(in-package "ROS")
;;//! \htmlinclude FootState.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*CONTACT_UNKNOWN*" (find-package "SPOT_MSGS::FOOTSTATE"))
(shadow '*CONTACT_UNKNOWN* (find-package "SPOT_MSGS::FOOTSTATE"))
(defconstant spot_msgs::FootState::*CONTACT_UNKNOWN* 0)
(intern "*CONTACT_MADE*" (find-package "SPOT_MSGS::FOOTSTATE"))
(shadow '*CONTACT_MADE* (find-package "SPOT_MSGS::FOOTSTATE"))
(defconstant spot_msgs::FootState::*CONTACT_MADE* 1)
(intern "*CONTACT_LOST*" (find-package "SPOT_MSGS::FOOTSTATE"))
(shadow '*CONTACT_LOST* (find-package "SPOT_MSGS::FOOTSTATE"))
(defconstant spot_msgs::FootState::*CONTACT_LOST* 2)
(defclass spot_msgs::FootState
  :super ros::object
  :slots (_foot_position_rt_body _contact ))

(defmethod spot_msgs::FootState
  (:init
   (&key
    ((:foot_position_rt_body __foot_position_rt_body) (instance geometry_msgs::Point :init))
    ((:contact __contact) 0)
    )
   (send-super :init)
   (setq _foot_position_rt_body __foot_position_rt_body)
   (setq _contact (round __contact))
   self)
  (:foot_position_rt_body
   (&rest __foot_position_rt_body)
   (if (keywordp (car __foot_position_rt_body))
       (send* _foot_position_rt_body __foot_position_rt_body)
     (progn
       (if __foot_position_rt_body (setq _foot_position_rt_body (car __foot_position_rt_body)))
       _foot_position_rt_body)))
  (:contact
   (&optional __contact)
   (if __contact (setq _contact __contact)) _contact)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _foot_position_rt_body
    (send _foot_position_rt_body :serialization-length)
    ;; uint8 _contact
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _foot_position_rt_body
       (send _foot_position_rt_body :serialize s)
     ;; uint8 _contact
       (write-byte _contact s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _foot_position_rt_body
     (send _foot_position_rt_body :deserialize buf ptr-) (incf ptr- (send _foot_position_rt_body :serialization-length))
   ;; uint8 _contact
     (setq _contact (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get spot_msgs::FootState :md5sum-) "524cf45b9d66134675b586174885a624")
(setf (get spot_msgs::FootState :datatype-) "spot_msgs/FootState")
(setf (get spot_msgs::FootState :definition-)
      "# Contact
uint8 CONTACT_UNKNOWN = 0
uint8 CONTACT_MADE = 1
uint8 CONTACT_LOST = 2

geometry_msgs/Point foot_position_rt_body
uint8 contact

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :spot_msgs/FootState "524cf45b9d66134675b586174885a624")


