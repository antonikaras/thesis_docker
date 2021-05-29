; Auto-generated. Do not edit!


(cl:in-package ros_unity_msgs-msg)


;//! \htmlinclude PointGroup.msg.html

(cl:defclass <PointGroup> (roslisp-msg-protocol:ros-message)
  ((map_pos
    :reader map_pos
    :initarg :map_pos
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (group_id
    :reader group_id
    :initarg :group_id
    :type cl:integer
    :initform 0)
   (map_origin
    :reader map_origin
    :initarg :map_origin
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (map_dims
    :reader map_dims
    :initarg :map_dims
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (map_resolution
    :reader map_resolution
    :initarg :map_resolution
    :type cl:float
    :initform 0.0)
   (associated_file
    :reader associated_file
    :initarg :associated_file
    :type cl:string
    :initform ""))
)

(cl:defclass PointGroup (<PointGroup>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PointGroup>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PointGroup)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_unity_msgs-msg:<PointGroup> is deprecated: use ros_unity_msgs-msg:PointGroup instead.")))

(cl:ensure-generic-function 'map_pos-val :lambda-list '(m))
(cl:defmethod map_pos-val ((m <PointGroup>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_unity_msgs-msg:map_pos-val is deprecated.  Use ros_unity_msgs-msg:map_pos instead.")
  (map_pos m))

(cl:ensure-generic-function 'group_id-val :lambda-list '(m))
(cl:defmethod group_id-val ((m <PointGroup>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_unity_msgs-msg:group_id-val is deprecated.  Use ros_unity_msgs-msg:group_id instead.")
  (group_id m))

(cl:ensure-generic-function 'map_origin-val :lambda-list '(m))
(cl:defmethod map_origin-val ((m <PointGroup>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_unity_msgs-msg:map_origin-val is deprecated.  Use ros_unity_msgs-msg:map_origin instead.")
  (map_origin m))

(cl:ensure-generic-function 'map_dims-val :lambda-list '(m))
(cl:defmethod map_dims-val ((m <PointGroup>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_unity_msgs-msg:map_dims-val is deprecated.  Use ros_unity_msgs-msg:map_dims instead.")
  (map_dims m))

(cl:ensure-generic-function 'map_resolution-val :lambda-list '(m))
(cl:defmethod map_resolution-val ((m <PointGroup>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_unity_msgs-msg:map_resolution-val is deprecated.  Use ros_unity_msgs-msg:map_resolution instead.")
  (map_resolution m))

(cl:ensure-generic-function 'associated_file-val :lambda-list '(m))
(cl:defmethod associated_file-val ((m <PointGroup>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_unity_msgs-msg:associated_file-val is deprecated.  Use ros_unity_msgs-msg:associated_file instead.")
  (associated_file m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PointGroup>) ostream)
  "Serializes a message object of type '<PointGroup>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'map_pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'map_pos))
  (cl:let* ((signed (cl:slot-value msg 'group_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'map_origin))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'map_origin))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'map_dims))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'map_dims))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'map_resolution))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'associated_file))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'associated_file))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PointGroup>) istream)
  "Deserializes a message object of type '<PointGroup>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'map_pos) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'map_pos)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'group_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'map_origin) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'map_origin)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'map_dims) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'map_dims)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'map_resolution) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'associated_file) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'associated_file) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PointGroup>)))
  "Returns string type for a message object of type '<PointGroup>"
  "ros_unity_msgs/PointGroup")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PointGroup)))
  "Returns string type for a message object of type 'PointGroup"
  "ros_unity_msgs/PointGroup")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PointGroup>)))
  "Returns md5sum for a message object of type '<PointGroup>"
  "1260362be9abca30f61b84d7c4b3dc52")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PointGroup)))
  "Returns md5sum for a message object of type 'PointGroup"
  "1260362be9abca30f61b84d7c4b3dc52")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PointGroup>)))
  "Returns full string definition for message of type '<PointGroup>"
  (cl:format cl:nil "float32[] map_pos~%int32 group_id~%float32[] map_origin~%float32[] map_dims~%float32 map_resolution~%string associated_file ~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PointGroup)))
  "Returns full string definition for message of type 'PointGroup"
  (cl:format cl:nil "float32[] map_pos~%int32 group_id~%float32[] map_origin~%float32[] map_dims~%float32 map_resolution~%string associated_file ~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PointGroup>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'map_pos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'map_origin) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'map_dims) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     4 (cl:length (cl:slot-value msg 'associated_file))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PointGroup>))
  "Converts a ROS message object to a list"
  (cl:list 'PointGroup
    (cl:cons ':map_pos (map_pos msg))
    (cl:cons ':group_id (group_id msg))
    (cl:cons ':map_origin (map_origin msg))
    (cl:cons ':map_dims (map_dims msg))
    (cl:cons ':map_resolution (map_resolution msg))
    (cl:cons ':associated_file (associated_file msg))
))
