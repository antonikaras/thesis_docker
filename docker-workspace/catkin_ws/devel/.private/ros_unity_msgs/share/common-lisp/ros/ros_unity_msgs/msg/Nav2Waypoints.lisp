; Auto-generated. Do not edit!


(cl:in-package ros_unity_msgs-msg)


;//! \htmlinclude Nav2Waypoints.msg.html

(cl:defclass <Nav2Waypoints> (roslisp-msg-protocol:ros-message)
  ((waypoints
    :reader waypoints
    :initarg :waypoints
    :type (cl:vector ros_unity_msgs-msg:PosData)
   :initform (cl:make-array 0 :element-type 'ros_unity_msgs-msg:PosData :initial-element (cl:make-instance 'ros_unity_msgs-msg:PosData))))
)

(cl:defclass Nav2Waypoints (<Nav2Waypoints>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Nav2Waypoints>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Nav2Waypoints)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_unity_msgs-msg:<Nav2Waypoints> is deprecated: use ros_unity_msgs-msg:Nav2Waypoints instead.")))

(cl:ensure-generic-function 'waypoints-val :lambda-list '(m))
(cl:defmethod waypoints-val ((m <Nav2Waypoints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_unity_msgs-msg:waypoints-val is deprecated.  Use ros_unity_msgs-msg:waypoints instead.")
  (waypoints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Nav2Waypoints>) ostream)
  "Serializes a message object of type '<Nav2Waypoints>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'waypoints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'waypoints))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Nav2Waypoints>) istream)
  "Deserializes a message object of type '<Nav2Waypoints>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'waypoints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'waypoints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_unity_msgs-msg:PosData))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Nav2Waypoints>)))
  "Returns string type for a message object of type '<Nav2Waypoints>"
  "ros_unity_msgs/Nav2Waypoints")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Nav2Waypoints)))
  "Returns string type for a message object of type 'Nav2Waypoints"
  "ros_unity_msgs/Nav2Waypoints")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Nav2Waypoints>)))
  "Returns md5sum for a message object of type '<Nav2Waypoints>"
  "e7484fc48f37a4ca6f72abe1a6fb5de4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Nav2Waypoints)))
  "Returns md5sum for a message object of type 'Nav2Waypoints"
  "e7484fc48f37a4ca6f72abe1a6fb5de4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Nav2Waypoints>)))
  "Returns full string definition for message of type '<Nav2Waypoints>"
  (cl:format cl:nil "PosData[] waypoints~%================================================================================~%MSG: ros_unity_msgs/PosData~%float32 x~%float32 y~%float32 yaw~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Nav2Waypoints)))
  "Returns full string definition for message of type 'Nav2Waypoints"
  (cl:format cl:nil "PosData[] waypoints~%================================================================================~%MSG: ros_unity_msgs/PosData~%float32 x~%float32 y~%float32 yaw~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Nav2Waypoints>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'waypoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Nav2Waypoints>))
  "Converts a ROS message object to a list"
  (cl:list 'Nav2Waypoints
    (cl:cons ':waypoints (waypoints msg))
))
