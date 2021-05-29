; Auto-generated. Do not edit!


(cl:in-package ros_unity_msgs-msg)


;//! \htmlinclude PosData.msg.html

(cl:defclass <PosData> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0))
)

(cl:defclass PosData (<PosData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PosData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PosData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_unity_msgs-msg:<PosData> is deprecated: use ros_unity_msgs-msg:PosData instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <PosData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_unity_msgs-msg:x-val is deprecated.  Use ros_unity_msgs-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <PosData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_unity_msgs-msg:y-val is deprecated.  Use ros_unity_msgs-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <PosData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_unity_msgs-msg:yaw-val is deprecated.  Use ros_unity_msgs-msg:yaw instead.")
  (yaw m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PosData>) ostream)
  "Serializes a message object of type '<PosData>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PosData>) istream)
  "Deserializes a message object of type '<PosData>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PosData>)))
  "Returns string type for a message object of type '<PosData>"
  "ros_unity_msgs/PosData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PosData)))
  "Returns string type for a message object of type 'PosData"
  "ros_unity_msgs/PosData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PosData>)))
  "Returns md5sum for a message object of type '<PosData>"
  "47802147045815b06859cca542c21d31")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PosData)))
  "Returns md5sum for a message object of type 'PosData"
  "47802147045815b06859cca542c21d31")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PosData>)))
  "Returns full string definition for message of type '<PosData>"
  (cl:format cl:nil "float32 x~%float32 y~%float32 yaw~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PosData)))
  "Returns full string definition for message of type 'PosData"
  (cl:format cl:nil "float32 x~%float32 y~%float32 yaw~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PosData>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PosData>))
  "Converts a ROS message object to a list"
  (cl:list 'PosData
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':yaw (yaw msg))
))
