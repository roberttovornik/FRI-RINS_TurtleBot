
(cl:in-package :asdf)

(defsystem "localizer-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Localize" :depends-on ("_package_Localize"))
    (:file "_package_Localize" :depends-on ("_package"))
  ))