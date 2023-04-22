;; Auto-generated. Do not edit!


(when (boundp 'i2cpwm_board::Servo)
  (if (not (find-package "I2CPWM_BOARD"))
    (make-package "I2CPWM_BOARD"))
  (shadow 'Servo (find-package "I2CPWM_BOARD")))
(unless (find-package "I2CPWM_BOARD::SERVO")
  (make-package "I2CPWM_BOARD::SERVO"))

(in-package "ROS")
;;//! \htmlinclude Servo.msg.html


(defclass i2cpwm_board::Servo
  :super ros::object
  :slots (_servo _value ))

(defmethod i2cpwm_board::Servo
  (:init
   (&key
    ((:servo __servo) 0)
    ((:value __value) 0.0)
    )
   (send-super :init)
   (setq _servo (round __servo))
   (setq _value (float __value))
   self)
  (:servo
   (&optional __servo)
   (if __servo (setq _servo __servo)) _servo)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; int16 _servo
    2
    ;; float32 _value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _servo
       (write-word _servo s)
     ;; float32 _value
       (sys::poke _value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _servo
     (setq _servo (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _value
     (setq _value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get i2cpwm_board::Servo :md5sum-) "5e89689ba58524f73da7d375fa49d8a1")
(setf (get i2cpwm_board::Servo :datatype-) "i2cpwm_board/Servo")
(setf (get i2cpwm_board::Servo :definition-)
      "# the Servo message is commonly used message in this package to
# assign a value to a specific servo. the purpose of the value is
# dependent on the topic or service being called

int16 servo
float32 value

")



(provide :i2cpwm_board/Servo "5e89689ba58524f73da7d375fa49d8a1")


