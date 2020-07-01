;; Auto-generated. Do not edit!


(when (boundp 'probot_demo::Pt2D)
  (if (not (find-package "PROBOT_DEMO"))
    (make-package "PROBOT_DEMO"))
  (shadow 'Pt2D (find-package "PROBOT_DEMO")))
(unless (find-package "PROBOT_DEMO::PT2D")
  (make-package "PROBOT_DEMO::PT2D"))

(in-package "ROS")
;;//! \htmlinclude Pt2D.msg.html


(defclass probot_demo::Pt2D
  :super ros::object
  :slots (_x _y ))

(defmethod probot_demo::Pt2D
  (:init
   (&key
    ((:x __x) 0)
    ((:y __y) 0)
    )
   (send-super :init)
   (setq _x (round __x))
   (setq _y (round __y))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; int32 _x
    4
    ;; int32 _y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _x
       (write-long _x s)
     ;; int32 _y
       (write-long _y s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _x
     (setq _x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _y
     (setq _y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get probot_demo::Pt2D :md5sum-) "bd7b43fd41d4c47bf5c703cc7d016709")
(setf (get probot_demo::Pt2D :datatype-) "probot_demo/Pt2D")
(setf (get probot_demo::Pt2D :definition-)
      "int32 x
int32 y

")



(provide :probot_demo/Pt2D "bd7b43fd41d4c47bf5c703cc7d016709")


