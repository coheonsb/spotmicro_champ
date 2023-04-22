;; Auto-generated. Do not edit!


(when (boundp 'i2cpwm_board::ServoConfigArray)
  (if (not (find-package "I2CPWM_BOARD"))
    (make-package "I2CPWM_BOARD"))
  (shadow 'ServoConfigArray (find-package "I2CPWM_BOARD")))
(unless (find-package "I2CPWM_BOARD::SERVOCONFIGARRAY")
  (make-package "I2CPWM_BOARD::SERVOCONFIGARRAY"))

(in-package "ROS")
;;//! \htmlinclude ServoConfigArray.msg.html


(defclass i2cpwm_board::ServoConfigArray
  :super ros::object
  :slots (_servos ))

(defmethod i2cpwm_board::ServoConfigArray
  (:init
   (&key
    ((:servos __servos) (let (r) (dotimes (i 0) (push (instance i2cpwm_board::ServoConfig :init) r)) r))
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
    ;; i2cpwm_board/ServoConfig[] _servos
    (apply #'+ (send-all _servos :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; i2cpwm_board/ServoConfig[] _servos
     (write-long (length _servos) s)
     (dolist (elem _servos)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; i2cpwm_board/ServoConfig[] _servos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _servos (let (r) (dotimes (i n) (push (instance i2cpwm_board::ServoConfig :init) r)) r))
     (dolist (elem- _servos)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get i2cpwm_board::ServoConfigArray :md5sum-) "8f9c43713b493f265aec1e926dd292b8")
(setf (get i2cpwm_board::ServoConfigArray :datatype-) "i2cpwm_board/ServoConfigArray")
(setf (get i2cpwm_board::ServoConfigArray :definition-)
      "# the ServoConfigArray message is used to handle multiple assignments
# of config data to servos. the data is needed to normalize servos to
# common values to isolate variations from the rest of the user's
# robot motion code. 

ServoConfig[] servos

================================================================================
MSG: i2cpwm_board/ServoConfig
# the ServoConfig message is used to assign specific configuration
# data to a servo. the data is needed to normalize servos to
# common values to isolate variations from the rest of the user's
# robot motion code. 

int16 servo
int16 center
int16 range
int16 direction

")



(provide :i2cpwm_board/ServoConfigArray "8f9c43713b493f265aec1e926dd292b8")


