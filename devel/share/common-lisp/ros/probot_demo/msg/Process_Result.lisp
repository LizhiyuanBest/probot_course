; Auto-generated. Do not edit!


(cl:in-package probot_demo-msg)


;//! \htmlinclude Process_Result.msg.html

(cl:defclass <Process_Result> (roslisp-msg-protocol:ros-message)
  ((color
    :reader color
    :initarg :color
    :type cl:string
    :initform "")
   (type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (region
    :reader region
    :initarg :region
    :type (cl:vector probot_demo-msg:Pt2D)
   :initform (cl:make-array 4 :element-type 'probot_demo-msg:Pt2D :initial-element (cl:make-instance 'probot_demo-msg:Pt2D)))
   (center
    :reader center
    :initarg :center
    :type (cl:vector cl:float)
   :initform (cl:make-array 2 :element-type 'cl:float :initial-element 0.0))
   (theta
    :reader theta
    :initarg :theta
    :type cl:float
    :initform 0.0))
)

(cl:defclass Process_Result (<Process_Result>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Process_Result>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Process_Result)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name probot_demo-msg:<Process_Result> is deprecated: use probot_demo-msg:Process_Result instead.")))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <Process_Result>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_demo-msg:color-val is deprecated.  Use probot_demo-msg:color instead.")
  (color m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <Process_Result>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_demo-msg:type-val is deprecated.  Use probot_demo-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'region-val :lambda-list '(m))
(cl:defmethod region-val ((m <Process_Result>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_demo-msg:region-val is deprecated.  Use probot_demo-msg:region instead.")
  (region m))

(cl:ensure-generic-function 'center-val :lambda-list '(m))
(cl:defmethod center-val ((m <Process_Result>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_demo-msg:center-val is deprecated.  Use probot_demo-msg:center instead.")
  (center m))

(cl:ensure-generic-function 'theta-val :lambda-list '(m))
(cl:defmethod theta-val ((m <Process_Result>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_demo-msg:theta-val is deprecated.  Use probot_demo-msg:theta instead.")
  (theta m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Process_Result>) ostream)
  "Serializes a message object of type '<Process_Result>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'color))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'color))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'region))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'center))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Process_Result>) istream)
  "Deserializes a message object of type '<Process_Result>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'color) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'color) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:setf (cl:slot-value msg 'region) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'region)))
    (cl:dotimes (i 4)
    (cl:setf (cl:aref vals i) (cl:make-instance 'probot_demo-msg:Pt2D))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  (cl:setf (cl:slot-value msg 'center) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'center)))
    (cl:dotimes (i 2)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Process_Result>)))
  "Returns string type for a message object of type '<Process_Result>"
  "probot_demo/Process_Result")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Process_Result)))
  "Returns string type for a message object of type 'Process_Result"
  "probot_demo/Process_Result")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Process_Result>)))
  "Returns md5sum for a message object of type '<Process_Result>"
  "7a9940e9234e2c5b8c9ee3af165e3aef")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Process_Result)))
  "Returns md5sum for a message object of type 'Process_Result"
  "7a9940e9234e2c5b8c9ee3af165e3aef")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Process_Result>)))
  "Returns full string definition for message of type '<Process_Result>"
  (cl:format cl:nil "string color~%string type~%Pt2D[4] region~%float32[2] center~%float32 theta~%~%================================================================================~%MSG: probot_demo/Pt2D~%int32 x~%int32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Process_Result)))
  "Returns full string definition for message of type 'Process_Result"
  (cl:format cl:nil "string color~%string type~%Pt2D[4] region~%float32[2] center~%float32 theta~%~%================================================================================~%MSG: probot_demo/Pt2D~%int32 x~%int32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Process_Result>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'color))
     4 (cl:length (cl:slot-value msg 'type))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'region) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'center) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Process_Result>))
  "Converts a ROS message object to a list"
  (cl:list 'Process_Result
    (cl:cons ':color (color msg))
    (cl:cons ':type (type msg))
    (cl:cons ':region (region msg))
    (cl:cons ':center (center msg))
    (cl:cons ':theta (theta msg))
))
