
(cl:in-package :asdf)

(defsystem "probot_demo-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :probot_demo-msg
)
  :components ((:file "_package")
    (:file "Img_process" :depends-on ("_package_Img_process"))
    (:file "_package_Img_process" :depends-on ("_package"))
  ))