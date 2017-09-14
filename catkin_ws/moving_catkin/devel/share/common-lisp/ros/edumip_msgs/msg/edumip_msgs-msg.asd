
(cl:in-package :asdf)

(defsystem "edumip_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "EduMipState" :depends-on ("_package_EduMipState"))
    (:file "_package_EduMipState" :depends-on ("_package"))
  ))