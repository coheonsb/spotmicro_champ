
(cl:in-package :asdf)

(defsystem "i2cpwm_board-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Position" :depends-on ("_package_Position"))
    (:file "_package_Position" :depends-on ("_package"))
    (:file "PositionArray" :depends-on ("_package_PositionArray"))
    (:file "_package_PositionArray" :depends-on ("_package"))
    (:file "Servo" :depends-on ("_package_Servo"))
    (:file "_package_Servo" :depends-on ("_package"))
    (:file "ServoArray" :depends-on ("_package_ServoArray"))
    (:file "_package_ServoArray" :depends-on ("_package"))
    (:file "ServoConfig" :depends-on ("_package_ServoConfig"))
    (:file "_package_ServoConfig" :depends-on ("_package"))
    (:file "ServoConfigArray" :depends-on ("_package_ServoConfigArray"))
    (:file "_package_ServoConfigArray" :depends-on ("_package"))
  ))