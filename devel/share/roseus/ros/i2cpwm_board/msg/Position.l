;; Auto-generated. Do not edit!


(when (boundp 'i2cpwm_board::Position)
  (if (not (find-package "I2CPWM_BOARD"))
    (make-package "I2CPWM_BOARD"))
  (shadow 'Position (find-package "I2CPWM_BOARD")))
(unless (find-package "I2CPWM_BOARD::POSITION")
  (make-package "I2CPWM_BOARD::POSITION"))

(in-package "ROS")
;;//! \htmlinclude Position.msg.html


(defclass i2cpwm_board::Position
  :super ros::object
  :slots (_servo _position ))

(defmethod i2cpwm_board::Position
  (:init
   (&key
    ((:servo __servo) 0)
    ((:position __position) 0)
    )
   (send-super :init)
   (setq _servo (round __servo))
   (setq _position (round __position))
   self)
  (:servo
   (&optional __servo)
   (if __servo (setq _servo __servo)) _servo)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:serialization-length
   ()
   (+
    ;; int16 _servo
    2
    ;; int16 _position
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _servo
       (write-word _servo s)
     ;; int16 _position
       (write-word _position s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _servo
     (setq _servo (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _position
     (setq _position (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get i2cpwm_board::Position :md5sum-) "46d1769fd9d3e30e5c4274bd2f84d885")
(setf (get i2cpwm_board::Position :datatype-) "i2cpwm_board/Position")
(setf (get i2cpwm_board::Position :definition-)
      "# the position message is used when configuring drive mode to
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



(provide :i2cpwm_board/Position "46d1769fd9d3e30e5c4274bd2f84d885")


