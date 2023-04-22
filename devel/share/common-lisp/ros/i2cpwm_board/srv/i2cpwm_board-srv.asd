
(cl:in-package :asdf)

(defsystem "i2cpwm_board-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :i2cpwm_board-msg
)
  :components ((:file "_package")
    (:file "DriveMode" :depends-on ("_package_DriveMode"))
    (:file "_package_DriveMode" :depends-on ("_package"))
    (:file "IntValue" :depends-on ("_package_IntValue"))
    (:file "_package_IntValue" :depends-on ("_package"))
    (:file "ServosConfig" :depends-on ("_package_ServosConfig"))
    (:file "_package_ServosConfig" :depends-on ("_package"))
    (:file "StopServos" :depends-on ("_package_StopServos"))
    (:file "_package_StopServos" :depends-on ("_package"))
  ))