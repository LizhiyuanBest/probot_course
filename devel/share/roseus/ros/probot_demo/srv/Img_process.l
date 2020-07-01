;; Auto-generated. Do not edit!


(when (boundp 'probot_demo::Img_process)
  (if (not (find-package "PROBOT_DEMO"))
    (make-package "PROBOT_DEMO"))
  (shadow 'Img_process (find-package "PROBOT_DEMO")))
(unless (find-package "PROBOT_DEMO::IMG_PROCESS")
  (make-package "PROBOT_DEMO::IMG_PROCESS"))
(unless (find-package "PROBOT_DEMO::IMG_PROCESSREQUEST")
  (make-package "PROBOT_DEMO::IMG_PROCESSREQUEST"))
(unless (find-package "PROBOT_DEMO::IMG_PROCESSRESPONSE")
  (make-package "PROBOT_DEMO::IMG_PROCESSRESPONSE"))

(in-package "ROS")





(defclass probot_demo::Img_processRequest
  :super ros::object
  :slots (_signal ))

(defmethod probot_demo::Img_processRequest
  (:init
   (&key
    ((:signal __signal) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _signal __signal)
   self)
  (:signal
   (&optional __signal)
   (if __signal (setq _signal __signal)) _signal)
  (:serialization-length
   ()
   (+
    ;; string[] _signal
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _signal)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _signal
     (write-long (length _signal) s)
     (dolist (elem _signal)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _signal
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _signal (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _signal i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass probot_demo::Img_processResponse
  :super ros::object
  :slots (_result _objects ))

(defmethod probot_demo::Img_processResponse
  (:init
   (&key
    ((:result __result) "")
    ((:objects __objects) (let (r) (dotimes (i 0) (push (instance probot_demo::Process_Result :init) r)) r))
    )
   (send-super :init)
   (setq _result (string __result))
   (setq _objects __objects)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:objects
   (&rest __objects)
   (if (keywordp (car __objects))
       (send* _objects __objects)
     (progn
       (if __objects (setq _objects (car __objects)))
       _objects)))
  (:serialization-length
   ()
   (+
    ;; string _result
    4 (length _result)
    ;; probot_demo/Process_Result[] _objects
    (apply #'+ (send-all _objects :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _result
       (write-long (length _result) s) (princ _result s)
     ;; probot_demo/Process_Result[] _objects
     (write-long (length _objects) s)
     (dolist (elem _objects)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _result
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; probot_demo/Process_Result[] _objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _objects (let (r) (dotimes (i n) (push (instance probot_demo::Process_Result :init) r)) r))
     (dolist (elem- _objects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass probot_demo::Img_process
  :super ros::object
  :slots ())

(setf (get probot_demo::Img_process :md5sum-) "4c1789e028a38e7750a94a6bd3e727a5")
(setf (get probot_demo::Img_process :datatype-) "probot_demo/Img_process")
(setf (get probot_demo::Img_process :request) probot_demo::Img_processRequest)
(setf (get probot_demo::Img_process :response) probot_demo::Img_processResponse)

(defmethod probot_demo::Img_processRequest
  (:response () (instance probot_demo::Img_processResponse :init)))

(setf (get probot_demo::Img_processRequest :md5sum-) "4c1789e028a38e7750a94a6bd3e727a5")
(setf (get probot_demo::Img_processRequest :datatype-) "probot_demo/Img_processRequest")
(setf (get probot_demo::Img_processRequest :definition-)
      "string[] signal

---
string result
Process_Result[] objects



================================================================================
MSG: probot_demo/Process_Result
string color
string type
Pt2D[4] region
float32[2] center
float32 theta

================================================================================
MSG: probot_demo/Pt2D
int32 x
int32 y
")

(setf (get probot_demo::Img_processResponse :md5sum-) "4c1789e028a38e7750a94a6bd3e727a5")
(setf (get probot_demo::Img_processResponse :datatype-) "probot_demo/Img_processResponse")
(setf (get probot_demo::Img_processResponse :definition-)
      "string[] signal

---
string result
Process_Result[] objects



================================================================================
MSG: probot_demo/Process_Result
string color
string type
Pt2D[4] region
float32[2] center
float32 theta

================================================================================
MSG: probot_demo/Pt2D
int32 x
int32 y
")



(provide :probot_demo/Img_process "4c1789e028a38e7750a94a6bd3e727a5")


