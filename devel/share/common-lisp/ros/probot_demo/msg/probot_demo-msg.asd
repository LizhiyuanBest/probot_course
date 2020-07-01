
(cl:in-package :asdf)

(defsystem "probot_demo-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Process_Result" :depends-on ("_package_Process_Result"))
    (:file "_package_Process_Result" :depends-on ("_package"))
    (:file "Pt2D" :depends-on ("_package_Pt2D"))
    (:file "_package_Pt2D" :depends-on ("_package"))
  ))