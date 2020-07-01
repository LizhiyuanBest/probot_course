; Auto-generated. Do not edit!


(cl:in-package probot_demo-msg)


;//! \htmlinclude Pt2D.msg.html

(cl:defclass <Pt2D> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:integer
    :initform 0)
   (y
    :reader y
    :initarg :y
    :type cl:integer
    :initform 0))
)

(cl:defclass Pt2D (<Pt2D>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Pt2D>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Pt2D)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name probot_demo-msg:<Pt2D> is deprecated: use probot_demo-msg:Pt2D instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <Pt2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_demo-msg:x-val is deprecated.  Use probot_demo-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <Pt2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_demo-msg:y-val is deprecated.  Use probot_demo-msg:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Pt2D>) ostream)
  "Serializes a message object of type '<Pt2D>"
  (cl:let* ((signed (cl:slot-value msg 'x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Pt2D>) istream)
  "Deserializes a message object of type '<Pt2D>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Pt2D>)))
  "Returns string type for a message object of type '<Pt2D>"
  "probot_demo/Pt2D")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Pt2D)))
  "Returns string type for a message object of type 'Pt2D"
  "probot_demo/Pt2D")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Pt2D>)))
  "Returns md5sum for a message object of type '<Pt2D>"
  "bd7b43fd41d4c47bf5c703cc7d016709")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Pt2D)))
  "Returns md5sum for a message object of type 'Pt2D"
  "bd7b43fd41d4c47bf5c703cc7d016709")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Pt2D>)))
  "Returns full string definition for message of type '<Pt2D>"
  (cl:format cl:nil "int32 x~%int32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Pt2D)))
  "Returns full string definition for message of type 'Pt2D"
  (cl:format cl:nil "int32 x~%int32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Pt2D>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Pt2D>))
  "Converts a ROS message object to a list"
  (cl:list 'Pt2D
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
