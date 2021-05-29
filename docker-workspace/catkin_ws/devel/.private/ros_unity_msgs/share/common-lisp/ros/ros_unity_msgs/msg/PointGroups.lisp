; Auto-generated. Do not edit!


(cl:in-package ros_unity_msgs-msg)


;//! \htmlinclude PointGroups.msg.html

(cl:defclass <PointGroups> (roslisp-msg-protocol:ros-message)
  ((groups
    :reader groups
    :initarg :groups
    :type (cl:vector ros_unity_msgs-msg:PointGroup)
   :initform (cl:make-array 0 :element-type 'ros_unity_msgs-msg:PointGroup :initial-element (cl:make-instance 'ros_unity_msgs-msg:PointGroup))))
)

(cl:defclass PointGroups (<PointGroups>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PointGroups>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PointGroups)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_unity_msgs-msg:<PointGroups> is deprecated: use ros_unity_msgs-msg:PointGroups instead.")))

(cl:ensure-generic-function 'groups-val :lambda-list '(m))
(cl:defmethod groups-val ((m <PointGroups>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_unity_msgs-msg:groups-val is deprecated.  Use ros_unity_msgs-msg:groups instead.")
  (groups m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PointGroups>) ostream)
  "Serializes a message object of type '<PointGroups>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'groups))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'groups))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PointGroups>) istream)
  "Deserializes a message object of type '<PointGroups>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'groups) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'groups)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_unity_msgs-msg:PointGroup))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PointGroups>)))
  "Returns string type for a message object of type '<PointGroups>"
  "ros_unity_msgs/PointGroups")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PointGroups)))
  "Returns string type for a message object of type 'PointGroups"
  "ros_unity_msgs/PointGroups")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PointGroups>)))
  "Returns md5sum for a message object of type '<PointGroups>"
  "a2c4e3a8563a46ea18da5c6f66021358")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PointGroups)))
  "Returns md5sum for a message object of type 'PointGroups"
  "a2c4e3a8563a46ea18da5c6f66021358")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PointGroups>)))
  "Returns full string definition for message of type '<PointGroups>"
  (cl:format cl:nil "PointGroup[] groups~%================================================================================~%MSG: ros_unity_msgs/PointGroup~%float32[] map_pos~%int32 group_id~%float32[] map_origin~%float32[] map_dims~%float32 map_resolution~%string associated_file ~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PointGroups)))
  "Returns full string definition for message of type 'PointGroups"
  (cl:format cl:nil "PointGroup[] groups~%================================================================================~%MSG: ros_unity_msgs/PointGroup~%float32[] map_pos~%int32 group_id~%float32[] map_origin~%float32[] map_dims~%float32 map_resolution~%string associated_file ~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PointGroups>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'groups) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PointGroups>))
  "Converts a ROS message object to a list"
  (cl:list 'PointGroups
    (cl:cons ':groups (groups msg))
))
