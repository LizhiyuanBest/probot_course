; Auto-generated. Do not edit!


(cl:in-package probot_demo-srv)


;//! \htmlinclude Img_process-request.msg.html

(cl:defclass <Img_process-request> (roslisp-msg-protocol:ros-message)
  ((signal
    :reader signal
    :initarg :signal
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass Img_process-request (<Img_process-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Img_process-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Img_process-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name probot_demo-srv:<Img_process-request> is deprecated: use probot_demo-srv:Img_process-request instead.")))

(cl:ensure-generic-function 'signal-val :lambda-list '(m))
(cl:defmethod signal-val ((m <Img_process-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_demo-srv:signal-val is deprecated.  Use probot_demo-srv:signal instead.")
  (signal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Img_process-request>) ostream)
  "Serializes a message object of type '<Img_process-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'signal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'signal))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Img_process-request>) istream)
  "Deserializes a message object of type '<Img_process-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'signal) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'signal)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Img_process-request>)))
  "Returns string type for a service object of type '<Img_process-request>"
  "probot_demo/Img_processRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Img_process-request)))
  "Returns string type for a service object of type 'Img_process-request"
  "probot_demo/Img_processRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Img_process-request>)))
  "Returns md5sum for a message object of type '<Img_process-request>"
  "4c1789e028a38e7750a94a6bd3e727a5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Img_process-request)))
  "Returns md5sum for a message object of type 'Img_process-request"
  "4c1789e028a38e7750a94a6bd3e727a5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Img_process-request>)))
  "Returns full string definition for message of type '<Img_process-request>"
  (cl:format cl:nil "string[] signal~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Img_process-request)))
  "Returns full string definition for message of type 'Img_process-request"
  (cl:format cl:nil "string[] signal~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Img_process-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'signal) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Img_process-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Img_process-request
    (cl:cons ':signal (signal msg))
))
;//! \htmlinclude Img_process-response.msg.html

(cl:defclass <Img_process-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:string
    :initform "")
   (objects
    :reader objects
    :initarg :objects
    :type (cl:vector probot_demo-msg:Process_Result)
   :initform (cl:make-array 0 :element-type 'probot_demo-msg:Process_Result :initial-element (cl:make-instance 'probot_demo-msg:Process_Result))))
)

(cl:defclass Img_process-response (<Img_process-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Img_process-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Img_process-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name probot_demo-srv:<Img_process-response> is deprecated: use probot_demo-srv:Img_process-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <Img_process-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_demo-srv:result-val is deprecated.  Use probot_demo-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'objects-val :lambda-list '(m))
(cl:defmethod objects-val ((m <Img_process-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_demo-srv:objects-val is deprecated.  Use probot_demo-srv:objects instead.")
  (objects m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Img_process-response>) ostream)
  "Serializes a message object of type '<Img_process-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'objects))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Img_process-response>) istream)
  "Deserializes a message object of type '<Img_process-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'result) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'objects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'objects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'probot_demo-msg:Process_Result))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Img_process-response>)))
  "Returns string type for a service object of type '<Img_process-response>"
  "probot_demo/Img_processResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Img_process-response)))
  "Returns string type for a service object of type 'Img_process-response"
  "probot_demo/Img_processResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Img_process-response>)))
  "Returns md5sum for a message object of type '<Img_process-response>"
  "4c1789e028a38e7750a94a6bd3e727a5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Img_process-response)))
  "Returns md5sum for a message object of type 'Img_process-response"
  "4c1789e028a38e7750a94a6bd3e727a5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Img_process-response>)))
  "Returns full string definition for message of type '<Img_process-response>"
  (cl:format cl:nil "string result~%Process_Result[] objects~%~%~%~%================================================================================~%MSG: probot_demo/Process_Result~%string color~%string type~%Pt2D[4] region~%float32[2] center~%float32 theta~%~%================================================================================~%MSG: probot_demo/Pt2D~%int32 x~%int32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Img_process-response)))
  "Returns full string definition for message of type 'Img_process-response"
  (cl:format cl:nil "string result~%Process_Result[] objects~%~%~%~%================================================================================~%MSG: probot_demo/Process_Result~%string color~%string type~%Pt2D[4] region~%float32[2] center~%float32 theta~%~%================================================================================~%MSG: probot_demo/Pt2D~%int32 x~%int32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Img_process-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Img_process-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Img_process-response
    (cl:cons ':result (result msg))
    (cl:cons ':objects (objects msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Img_process)))
  'Img_process-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Img_process)))
  'Img_process-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Img_process)))
  "Returns string type for a service object of type '<Img_process>"
  "probot_demo/Img_process")