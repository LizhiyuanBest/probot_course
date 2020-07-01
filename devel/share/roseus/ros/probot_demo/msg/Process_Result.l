;; Auto-generated. Do not edit!


(when (boundp 'probot_demo::Process_Result)
  (if (not (find-package "PROBOT_DEMO"))
    (make-package "PROBOT_DEMO"))
  (shadow 'Process_Result (find-package "PROBOT_DEMO")))
(unless (find-package "PROBOT_DEMO::PROCESS_RESULT")
  (make-package "PROBOT_DEMO::PROCESS_RESULT"))

(in-package "ROS")
;;//! \htmlinclude Process_Result.msg.html


(defclass probot_demo::Process_Result
  :super ros::object
  :slots (_color _type _region _center _theta ))

(defmethod probot_demo::Process_Result
  (:init
   (&key
    ((:color __color) "")
    ((:type __type) "")
    ((:region __region) (let (r) (dotimes (i 4) (push (instance probot_demo::Pt2D :init) r)) r))
    ((:center __center) (make-array 2 :initial-element 0.0 :element-type :float))
    ((:theta __theta) 0.0)
    )
   (send-super :init)
   (setq _color (string __color))
   (setq _type (string __type))
   (setq _region __region)
   (setq _center __center)
   (setq _theta (float __theta))
   self)
  (:color
   (&optional __color)
   (if __color (setq _color __color)) _color)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:region
   (&rest __region)
   (if (keywordp (car __region))
       (send* _region __region)
     (progn
       (if __region (setq _region (car __region)))
       _region)))
  (:center
   (&optional __center)
   (if __center (setq _center __center)) _center)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:serialization-length
   ()
   (+
    ;; string _color
    4 (length _color)
    ;; string _type
    4 (length _type)
    ;; probot_demo/Pt2D[4] _region
    (apply #'+ (send-all _region :serialization-length))
    ;; float32[2] _center
    (* 4    2)
    ;; float32 _theta
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _color
       (write-long (length _color) s) (princ _color s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; probot_demo/Pt2D[4] _region
     (dolist (elem _region)
       (send elem :serialize s)
       )
     ;; float32[2] _center
     (dotimes (i 2)
       (sys::poke (elt _center i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _color
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _color (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; probot_demo/Pt2D[4] _region
   (dotimes (i 4)
     (send (elt _region i) :deserialize buf ptr-) (incf ptr- (send (elt _region i) :serialization-length))
     )
   ;; float32[2] _center
   (dotimes (i (length _center))
     (setf (elt _center i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32 _theta
     (setq _theta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get probot_demo::Process_Result :md5sum-) "7a9940e9234e2c5b8c9ee3af165e3aef")
(setf (get probot_demo::Process_Result :datatype-) "probot_demo/Process_Result")
(setf (get probot_demo::Process_Result :definition-)
      "string color
string type
Pt2D[4] region
float32[2] center
float32 theta

================================================================================
MSG: probot_demo/Pt2D
int32 x
int32 y

")



(provide :probot_demo/Process_Result "7a9940e9234e2c5b8c9ee3af165e3aef")


