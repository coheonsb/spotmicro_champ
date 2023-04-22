;; Auto-generated. Do not edit!


(when (boundp 'i2cpwm_board::PositionArray)
  (if (not (find-package "I2CPWM_BOARD"))
    (make-package "I2CPWM_BOARD"))
  (shadow 'PositionArray (find-package "I2CPWM_BOARD")))
(unless (find-package "I2CPWM_BOARD::POSITIONARRAY")
  (make-package "I2CPWM_BOARD::POSITIONARRAY"))

(in-package "ROS")
;;//! \htmlinclude PositionArray.msg.html


(defclass i2cpwm_board::PositionArray
  :super ros::object
  :slots (_servos ))

(defmethod i2cpwm_board::PositionArray
  (:init
   (&key
    ((:servos __servos) (let (r) (dotimes (i 0) (push (instance i2cpwm_board::Position :init) r)) r))
    )
   (send-super :init)
   (setq _servos __servos)
   self)
  (:servos
   (&rest __servos)
   (if (keywordp (car __servos))
       (send* _servos __servos)
     (progn
       (if __servos (setq _servos (car __servos)))
       _servos)))
  (:serialization-length
   ()
   (+
    ;; i2cpwm_board/Position[] _servos
    (apply #'+ (send-all _servos :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; i2cpwm_board/Position[] _servos
     (write-long (length _servos) s)
     (dolist (elem _servos)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; i2cpwm_board/Position[] _servos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _servos (let (r) (dotimes (i n) (push (instance i2cpwm_board::Position :init) r)) r))
     (dolist (elem- _servos)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get i2cpwm_board::PositionArray :md5sum-) "06b5be802f78af7b5ec929fe386952bb")
(setf (get i2cpwm_board::PositionArray :datatype-) "i2cpwm_board/PositionArray")
(setf (get i2cpwm_board::PositionArray :definition-)
      "# the PositionArray message handles multiple position assignments
# of servos.

Position[] servos

================================================================================
MSG: i2cpwm_board/Position
# the position message is used when configuring drive mode to
# assign a  servo to a specific wheel positon in the drive system
# postions are specific toe the desired drive mode
# ackerman has only one position
# 1 = drive
# differential has two positons
# 1 = left, 2 = right
# mecanum has four positions
# 1 = front left, 2 = front right, 3 = rear left, 4 = rear right
# multiple servos/motors may be used for each positon

int16 servo
int16 position

")



(provide :i2cpwm_board/PositionArray "06b5be802f78af7b5ec929fe386952bb")


