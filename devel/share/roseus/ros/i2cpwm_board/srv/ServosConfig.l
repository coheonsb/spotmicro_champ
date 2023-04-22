;; Auto-generated. Do not edit!


(when (boundp 'i2cpwm_board::ServosConfig)
  (if (not (find-package "I2CPWM_BOARD"))
    (make-package "I2CPWM_BOARD"))
  (shadow 'ServosConfig (find-package "I2CPWM_BOARD")))
(unless (find-package "I2CPWM_BOARD::SERVOSCONFIG")
  (make-package "I2CPWM_BOARD::SERVOSCONFIG"))
(unless (find-package "I2CPWM_BOARD::SERVOSCONFIGREQUEST")
  (make-package "I2CPWM_BOARD::SERVOSCONFIGREQUEST"))
(unless (find-package "I2CPWM_BOARD::SERVOSCONFIGRESPONSE")
  (make-package "I2CPWM_BOARD::SERVOSCONFIGRESPONSE"))

(in-package "ROS")





(defclass i2cpwm_board::ServosConfigRequest
  :super ros::object
  :slots (_servos ))

(defmethod i2cpwm_board::ServosConfigRequest
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

(defclass i2cpwm_board::ServosConfigResponse
  :super ros::object
  :slots (_error ))

(defmethod i2cpwm_board::ServosConfigResponse
  (:init
   (&key
    ((:error __error) 0)
    )
   (send-super :init)
   (setq _error (round __error))
   self)
  (:error
   (&optional __error)
   (if __error (setq _error __error)) _error)
  (:serialization-length
   ()
   (+
    ;; int16 _error
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _error
       (write-word _error s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _error
     (setq _error (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass i2cpwm_board::ServosConfig
  :super ros::object
  :slots ())

(setf (get i2cpwm_board::ServosConfig :md5sum-) "29a8ed89c4fc7505dd84e9625c298b65")
(setf (get i2cpwm_board::ServosConfig :datatype-) "i2cpwm_board/ServosConfig")
(setf (get i2cpwm_board::ServosConfig :request) i2cpwm_board::ServosConfigRequest)
(setf (get i2cpwm_board::ServosConfig :response) i2cpwm_board::ServosConfigResponse)

(defmethod i2cpwm_board::ServosConfigRequest
  (:response () (instance i2cpwm_board::ServosConfigResponse :init)))

(setf (get i2cpwm_board::ServosConfigRequest :md5sum-) "29a8ed89c4fc7505dd84e9625c298b65")
(setf (get i2cpwm_board::ServosConfigRequest :datatype-) "i2cpwm_board/ServosConfigRequest")
(setf (get i2cpwm_board::ServosConfigRequest :definition-)
      "# the servos_config service is used to assign useful configuration data to servos
# the tollerance of electronis varies in RC servos so it is important to calibate
# each servo, indicating its PWM value for direction of rotation, centering, and
# range which is used to scale servo motion a standard ±1000 scale

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
---
int16 error

")

(setf (get i2cpwm_board::ServosConfigResponse :md5sum-) "29a8ed89c4fc7505dd84e9625c298b65")
(setf (get i2cpwm_board::ServosConfigResponse :datatype-) "i2cpwm_board/ServosConfigResponse")
(setf (get i2cpwm_board::ServosConfigResponse :definition-)
      "# the servos_config service is used to assign useful configuration data to servos
# the tollerance of electronis varies in RC servos so it is important to calibate
# each servo, indicating its PWM value for direction of rotation, centering, and
# range which is used to scale servo motion a standard ±1000 scale

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
---
int16 error

")



(provide :i2cpwm_board/ServosConfig "29a8ed89c4fc7505dd84e9625c298b65")


