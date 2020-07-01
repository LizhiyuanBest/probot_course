; Auto-generated. Do not edit!


(cl:in-package probot_msgs-srv)


;//! \htmlinclude RefreshPointsSrv-request.msg.html

(cl:defclass <RefreshPointsSrv-request> (roslisp-msg-protocol:ros-message)
  ((ctrlCode
    :reader ctrlCode
    :initarg :ctrlCode
    :type cl:fixnum
    :initform 0)
   (pointList
    :reader pointList
    :initarg :pointList
    :type probot_msgs-msg:PredefinedPointList
    :initform (cl:make-instance 'probot_msgs-msg:PredefinedPointList)))
)

(cl:defclass RefreshPointsSrv-request (<RefreshPointsSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RefreshPointsSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RefreshPointsSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name probot_msgs-srv:<RefreshPointsSrv-request> is deprecated: use probot_msgs-srv:RefreshPointsSrv-request instead.")))

(cl:ensure-generic-function 'ctrlCode-val :lambda-list '(m))
(cl:defmethod ctrlCode-val ((m <RefreshPointsSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_msgs-srv:ctrlCode-val is deprecated.  Use probot_msgs-srv:ctrlCode instead.")
  (ctrlCode m))

(cl:ensure-generic-function 'pointList-val :lambda-list '(m))
(cl:defmethod pointList-val ((m <RefreshPointsSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_msgs-srv:pointList-val is deprecated.  Use probot_msgs-srv:pointList instead.")
  (pointList m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RefreshPointsSrv-request>)))
    "Constants for message type '<RefreshPointsSrv-request>"
  '((:POINTS_GET . 0)
    (:POINTS_ADD . 1)
    (:POINTS_UPDATE . 2)
    (:POINTS_DELETE . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RefreshPointsSrv-request)))
    "Constants for message type 'RefreshPointsSrv-request"
  '((:POINTS_GET . 0)
    (:POINTS_ADD . 1)
    (:POINTS_UPDATE . 2)
    (:POINTS_DELETE . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RefreshPointsSrv-request>) ostream)
  "Serializes a message object of type '<RefreshPointsSrv-request>"
  (cl:let* ((signed (cl:slot-value msg 'ctrlCode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pointList) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RefreshPointsSrv-request>) istream)
  "Deserializes a message object of type '<RefreshPointsSrv-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ctrlCode) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pointList) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RefreshPointsSrv-request>)))
  "Returns string type for a service object of type '<RefreshPointsSrv-request>"
  "probot_msgs/RefreshPointsSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RefreshPointsSrv-request)))
  "Returns string type for a service object of type 'RefreshPointsSrv-request"
  "probot_msgs/RefreshPointsSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RefreshPointsSrv-request>)))
  "Returns md5sum for a message object of type '<RefreshPointsSrv-request>"
  "5560e08170822ca83e6af3caeeb8bd40")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RefreshPointsSrv-request)))
  "Returns md5sum for a message object of type 'RefreshPointsSrv-request"
  "5560e08170822ca83e6af3caeeb8bd40")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RefreshPointsSrv-request>)))
  "Returns full string definition for message of type '<RefreshPointsSrv-request>"
  (cl:format cl:nil "~%~%int8 ctrlCode~%~%int8 POINTS_GET    = 0~%int8 POINTS_ADD    = 1~%int8 POINTS_UPDATE = 2~%int8 POINTS_DELETE = 3~%~%probot_msgs/PredefinedPointList pointList~%~%================================================================================~%MSG: probot_msgs/PredefinedPointList~%# The predefined points list message contains all the pre-defined points
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RefreshPointsSrv-request)))
  "Returns full string definition for message of type 'RefreshPointsSrv-request"
  (cl:format cl:nil "~%~%int8 ctrlCode~%~%int8 POINTS_GET    = 0~%int8 POINTS_ADD    = 1~%int8 POINTS_UPDATE = 2~%int8 POINTS_DELETE = 3~%~%probot_msgs/PredefinedPointList pointList~%~%================================================================================~%MSG: probot_msgs/PredefinedPointList~%# The predefined points list message contains all the pre-defined points
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RefreshPointsSrv-request>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pointList))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RefreshPointsSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RefreshPointsSrv-request
    (cl:cons ':ctrlCode (ctrlCode msg))
    (cl:cons ':pointList (pointList msg))
))
;//! \htmlinclude RefreshPointsSrv-response.msg.html

(cl:defclass <RefreshPointsSrv-response> (roslisp-msg-protocol:ros-message)
  ((code
    :reader code
    :initarg :code
    :type probot_msgs-msg:InterfaceReturnCode
    :initform (cl:make-instance 'probot_msgs-msg:InterfaceReturnCode))
   (pointListFeedback
    :reader pointListFeedback
    :initarg :pointListFeedback
    :type probot_msgs-msg:PredefinedPointList
    :initform (cl:make-instance 'probot_msgs-msg:PredefinedPointList)))
)

(cl:defclass RefreshPointsSrv-response (<RefreshPointsSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RefreshPointsSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RefreshPointsSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name probot_msgs-srv:<RefreshPointsSrv-response> is deprecated: use probot_msgs-srv:RefreshPointsSrv-response instead.")))

(cl:ensure-generic-function 'code-val :lambda-list '(m))
(cl:defmethod code-val ((m <RefreshPointsSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_msgs-srv:code-val is deprecated.  Use probot_msgs-srv:code instead.")
  (code m))

(cl:ensure-generic-function 'pointListFeedback-val :lambda-list '(m))
(cl:defmethod pointListFeedback-val ((m <RefreshPointsSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_msgs-srv:pointListFeedback-val is deprecated.  Use probot_msgs-srv:pointListFeedback instead.")
  (pointListFeedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RefreshPointsSrv-response>) ostream)
  "Serializes a message object of type '<RefreshPointsSrv-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'code) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pointListFeedback) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RefreshPointsSrv-response>) istream)
  "Deserializes a message object of type '<RefreshPointsSrv-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'code) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pointListFeedback) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RefreshPointsSrv-response>)))
  "Returns string type for a service object of type '<RefreshPointsSrv-response>"
  "probot_msgs/RefreshPointsSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RefreshPointsSrv-response)))
  "Returns string type for a service object of type 'RefreshPointsSrv-response"
  "probot_msgs/RefreshPointsSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RefreshPointsSrv-response>)))
  "Returns md5sum for a message object of type '<RefreshPointsSrv-response>"
  "5560e08170822ca83e6af3caeeb8bd40")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RefreshPointsSrv-response)))
  "Returns md5sum for a message object of type 'RefreshPointsSrv-response"
  "5560e08170822ca83e6af3caeeb8bd40")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RefreshPointsSrv-response>)))
  "Returns full string definition for message of type '<RefreshPointsSrv-response>"
  (cl:format cl:nil "probot_msgs/InterfaceReturnCode code~%probot_msgs/PredefinedPointList pointListFeedback~%~%~%================================================================================~%MSG: probot_msgs/InterfaceReturnCode~%# App Interface return codes for requests.  All App Interface service
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RefreshPointsSrv-response)))
  "Returns full string definition for message of type 'RefreshPointsSrv-response"
  (cl:format cl:nil "probot_msgs/InterfaceReturnCode code~%probot_msgs/PredefinedPointList pointListFeedback~%~%~%================================================================================~%MSG: probot_msgs/InterfaceReturnCode~%# App Interface return codes for requests.  All App Interface service
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RefreshPointsSrv-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'code))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pointListFeedback))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RefreshPointsSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RefreshPointsSrv-response
    (cl:cons ':code (code msg))
    (cl:cons ':pointListFeedback (pointListFeedback msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RefreshPointsSrv)))
  'RefreshPointsSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RefreshPointsSrv)))
  'RefreshPointsSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RefreshPointsSrv)))
  "Returns string type for a service object of type '<RefreshPointsSrv>"
  "probot_msgs/RefreshPointsSrv")