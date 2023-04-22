;; Auto-generated. Do not edit!


(when (boundp 'i2cpwm_board::DriveMode)
  (if (not (find-package "I2CPWM_BOARD"))
    (make-package "I2CPWM_BOARD"))
  (shadow 'DriveMode (find-package "I2CPWM_BOARD")))
(unless (find-package "I2CPWM_BOARD::DRIVEMODE")
  (make-package "I2CPWM_BOARD::DRIVEMODE"))
(unless (find-package "I2CPWM_BOARD::DRIVEMODEREQUEST")
  (make-package "I2CPWM_BOARD::DRIVEMODEREQUEST"))
(unless (find-package "I2CPWM_BOARD::DRIVEMODERESPONSE")
  (make-package "I2CPWM_BOARD::DRIVEMODERESPONSE"))

(in-package "ROS")





(defclass i2cpwm_board::DriveModeRequest
  :super ros::object
  :slots (_mode _rpm _radius _track _scale _servos ))

(defmethod i2cpwm_board::DriveModeRequest
  (:init
   (&key
    ((:mode __mode) "")
    ((:rpm __rpm) 0.0)
    ((:radius __radius) 0.0)
    ((:track __track) 0.0)
    ((:scale __scale) 0.0)
    ((:servos __servos) (let (r) (dotimes (i 0) (push (instance i2cpwm_board::Position :init) r)) r))
    )
   (send-super :init)
   (setq _mode (string __mode))
   (setq _rpm (float __rpm))
   (setq _radius (float __radius))
   (setq _track (float __track))
   (setq _scale (float __scale))
   (setq _servos __servos)
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:rpm
   (&optional __rpm)
   (if __rpm (setq _rpm __rpm)) _rpm)
  (:radius
   (&optional __radius)
   (if __radius (setq _radius __radius)) _radius)
  (:track
   (&optional __track)
   (if __track (setq _track __track)) _track)
  (:scale
   (&optional __scale)
   (if __scale (setq _scale __scale)) _scale)
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
    ;; string _mode
    4 (length _mode)
    ;; float32 _rpm
    4
    ;; float32 _radius
    4
    ;; float32 _track
    4
    ;; float32 _scale
    4
    ;; i2cpwm_board/Position[] _servos
    (apply #'+ (send-all _servos :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _mode
       (write-long (length _mode) s) (princ _mode s)
     ;; float32 _rpm
       (sys::poke _rpm (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _radius
       (sys::poke _radius (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _track
       (sys::poke _track (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _scale
       (sys::poke _scale (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; i2cpwm_board/Position[] _servos
     (write-long (length _servos) s)
     (dolist (elem _servos)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _rpm
     (setq _rpm (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _radius
     (setq _radius (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _track
     (setq _track (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _scale
     (setq _scale (sys::peek buf ptr- :float)) (incf ptr- 4)
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

(defclass i2cpwm_board::DriveModeResponse
  :super ros::object
  :slots (_error ))

(defmethod i2cpwm_board::DriveModeResponse
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

(defclass i2cpwm_board::DriveMode
  :super ros::object
  :slots ())

(setf (get i2cpwm_board::DriveMode :md5sum-) "e4da47a0d835738660a86a1db5528f89")
(setf (get i2cpwm_board::DriveMode :datatype-) "i2cpwm_board/DriveMode")
(setf (get i2cpwm_board::DriveMode :request) i2cpwm_board::DriveModeRequest)
(setf (get i2cpwm_board::DriveMode :response) i2cpwm_board::DriveModeResponse)

(defmethod i2cpwm_board::DriveModeRequest
  (:response () (instance i2cpwm_board::DriveModeResponse :init)))

(setf (get i2cpwm_board::DriveModeRequest :md5sum-) "e4da47a0d835738660a86a1db5528f89")
(setf (get i2cpwm_board::DriveModeRequest :datatype-) "i2cpwm_board/DriveModeRequest")
(setf (get i2cpwm_board::DriveModeRequest :definition-)
      "# the drive_mode service is used to assigned servos to various drive modes
# the drive modes determine how the assigned servos respond to geometry_msgs::Twist messages
# drive modes are one of: ackerman, differential, or mecanum
# to accurately convert velocity in m/s the controller needs to know three values:
#   the RPM    - the maximum output speed available from the drive motors
#   the radius - the drive wheel radius in meters
#   the track  - the distance between the left and right wheels in meters
# use the scale value to adjust incoming Twist values as needed to match the servo/motor capability


string mode
float32 rpm
float32 radius
float32 track
float32 scale
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
---
int16 error

")

(setf (get i2cpwm_board::DriveModeResponse :md5sum-) "e4da47a0d835738660a86a1db5528f89")
(setf (get i2cpwm_board::DriveModeResponse :datatype-) "i2cpwm_board/DriveModeResponse")
(setf (get i2cpwm_board::DriveModeResponse :definition-)
      "# the drive_mode service is used to assigned servos to various drive modes
# the drive modes determine how the assigned servos respond to geometry_msgs::Twist messages
# drive modes are one of: ackerman, differential, or mecanum
# to accurately convert velocity in m/s the controller needs to know three values:
#   the RPM    - the maximum output speed available from the drive motors
#   the radius - the drive wheel radius in meters
#   the track  - the distance between the left and right wheels in meters
# use the scale value to adjust incoming Twist values as needed to match the servo/motor capability


string mode
float32 rpm
float32 radius
float32 track
float32 scale
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
---
int16 error

")



(provide :i2cpwm_board/DriveMode "e4da47a0d835738660a86a1db5528f89")


