;; Auto-generated. Do not edit!


(when (boundp 'spot_msgs::FootStateArray)
  (if (not (find-package "SPOT_MSGS"))
    (make-package "SPOT_MSGS"))
  (shadow 'FootStateArray (find-package "SPOT_MSGS")))
(unless (find-package "SPOT_MSGS::FOOTSTATEARRAY")
  (make-package "SPOT_MSGS::FOOTSTATEARRAY"))

(in-package "ROS")
;;//! \htmlinclude FootStateArray.msg.html


(defclass spot_msgs::FootStateArray
  :super ros::object
  :slots (_states ))

(defmethod spot_msgs::FootStateArray
  (:init
   (&key
    ((:states __states) (let (r) (dotimes (i 0) (push (instance spot_msgs::FootState :init) r)) r))
    )
   (send-super :init)
   (setq _states __states)
   self)
  (:states
   (&rest __states)
   (if (keywordp (car __states))
       (send* _states __states)
     (progn
       (if __states (setq _states (car __states)))
       _states)))
  (:serialization-length
   ()
   (+
    ;; spot_msgs/FootState[] _states
    (apply #'+ (send-all _states :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; spot_msgs/FootState[] _states
     (write-long (length _states) s)
     (dolist (elem _states)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; spot_msgs/FootState[] _states
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _states (let (r) (dotimes (i n) (push (instance spot_msgs::FootState :init) r)) r))
     (dolist (elem- _states)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get spot_msgs::FootStateArray :md5sum-) "6bad9df4582060c21e7bde863865e1cb")
(setf (get spot_msgs::FootStateArray :datatype-) "spot_msgs/FootStateArray")
(setf (get spot_msgs::FootStateArray :definition-)
      "FootState[] states

================================================================================
MSG: spot_msgs/FootState
# Contact
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



(provide :spot_msgs/FootStateArray "6bad9df4582060c21e7bde863865e1cb")


