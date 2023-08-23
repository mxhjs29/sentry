
(cl:in-package :asdf)

(defsystem "mycar_description-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "odom" :depends-on ("_package_odom"))
    (:file "_package_odom" :depends-on ("_package"))
  ))