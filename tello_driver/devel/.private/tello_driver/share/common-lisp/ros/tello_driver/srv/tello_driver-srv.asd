
(cl:in-package :asdf)

(defsystem "tello_driver-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "MoveDown" :depends-on ("_package_MoveDown"))
    (:file "_package_MoveDown" :depends-on ("_package"))
    (:file "MoveUp" :depends-on ("_package_MoveUp"))
    (:file "_package_MoveUp" :depends-on ("_package"))
  ))