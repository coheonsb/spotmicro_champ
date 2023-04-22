;; Auto-generated. Do not edit!


(when (boundp 'i2cpwm_board::StopServos)
  (if (not (find-package "I2CPWM_BOARD"))
    (make-package "I2CPWM_BOARD"))
  (shadow 'StopServos (find-package "I2CPWM_BOARD")))
(unless (find-package "I2CPWM_BOARD::STOPSERVOS")
  (make-package "I2CPWM_BOARD::STOPSERVOS"))
(unless (find-package "I2CPWM_BOARD::STOPSERVOSREQUEST")
  (make-package "I2CPWM_BOARD::STOPSERVOSREQUEST"))
(unless (find-package "I2CPWM_BOARD::STOPSERVOSRESPONSE")
  (make-package "I2CPWM_BOARD::STOPSERVOSRESPONSE"))

(in-package "ROS")





(defclass i2cpwm_board::StopServosRequest
  :super ros::object
  :slots ())

(defmethod i2cpwm_board::StopServosRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass i2cpwm_board::StopServosResponse
  :super ros::object
  :slots ())

(defmethod i2cpwm_board::StopServosResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass i2cpwm_board::StopServos
  :super ros::object
  :slots ())

(setf (get i2cpwm_board::StopServos :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get i2cpwm_board::StopServos :datatype-) "i2cpwm_board/StopServos")
(setf (get i2cpwm_board::StopServos :request) i2cpwm_board::StopServosRequest)
(setf (get i2cpwm_board::StopServos :response) i2cpwm_board::StopServosResponse)

(defmethod i2cpwm_board::StopServosRequest
  (:response () (instance i2cpwm_board::StopServosResponse :init)))

(setf (get i2cpwm_board::StopServosRequest :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get i2cpwm_board::StopServosRequest :datatype-) "i2cpwm_board/StopServosRequest")
(setf (get i2cpwm_board::StopServosRequest :definition-)
      "

---

")

(setf (get i2cpwm_board::StopServosResponse :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get i2cpwm_board::StopServosResponse :datatype-) "i2cpwm_board/StopServosResponse")
(setf (get i2cpwm_board::StopServosResponse :definition-)
      "

---

")



(provide :i2cpwm_board/StopServos "d41d8cd98f00b204e9800998ecf8427e")


