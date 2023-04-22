;; Auto-generated. Do not edit!


(when (boundp 'i2cpwm_board::IntValue)
  (if (not (find-package "I2CPWM_BOARD"))
    (make-package "I2CPWM_BOARD"))
  (shadow 'IntValue (find-package "I2CPWM_BOARD")))
(unless (find-package "I2CPWM_BOARD::INTVALUE")
  (make-package "I2CPWM_BOARD::INTVALUE"))
(unless (find-package "I2CPWM_BOARD::INTVALUEREQUEST")
  (make-package "I2CPWM_BOARD::INTVALUEREQUEST"))
(unless (find-package "I2CPWM_BOARD::INTVALUERESPONSE")
  (make-package "I2CPWM_BOARD::INTVALUERESPONSE"))

(in-package "ROS")





(defclass i2cpwm_board::IntValueRequest
  :super ros::object
  :slots (_value ))

(defmethod i2cpwm_board::IntValueRequest
  (:init
   (&key
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _value (round __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; int16 _value
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _value
       (write-word _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _value
     (setq _value (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass i2cpwm_board::IntValueResponse
  :super ros::object
  :slots (_error ))

(defmethod i2cpwm_board::IntValueResponse
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

(defclass i2cpwm_board::IntValue
  :super ros::object
  :slots ())

(setf (get i2cpwm_board::IntValue :md5sum-) "0f0a503a6dfd41f41ab6b6db4044064a")
(setf (get i2cpwm_board::IntValue :datatype-) "i2cpwm_board/IntValue")
(setf (get i2cpwm_board::IntValue :request) i2cpwm_board::IntValueRequest)
(setf (get i2cpwm_board::IntValue :response) i2cpwm_board::IntValueResponse)

(defmethod i2cpwm_board::IntValueRequest
  (:response () (instance i2cpwm_board::IntValueResponse :init)))

(setf (get i2cpwm_board::IntValueRequest :md5sum-) "0f0a503a6dfd41f41ab6b6db4044064a")
(setf (get i2cpwm_board::IntValueRequest :datatype-) "i2cpwm_board/IntValueRequest")
(setf (get i2cpwm_board::IntValueRequest :definition-)
      "# there are a few services whic take a single integer as input
# these services share the IntValue service definition

int16 value
---
int16 error


")

(setf (get i2cpwm_board::IntValueResponse :md5sum-) "0f0a503a6dfd41f41ab6b6db4044064a")
(setf (get i2cpwm_board::IntValueResponse :datatype-) "i2cpwm_board/IntValueResponse")
(setf (get i2cpwm_board::IntValueResponse :definition-)
      "# there are a few services whic take a single integer as input
# these services share the IntValue service definition

int16 value
---
int16 error


")



(provide :i2cpwm_board/IntValue "0f0a503a6dfd41f41ab6b6db4044064a")


