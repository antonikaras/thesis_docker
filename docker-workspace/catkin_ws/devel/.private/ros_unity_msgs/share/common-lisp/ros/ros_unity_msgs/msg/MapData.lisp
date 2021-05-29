; Auto-generated. Do not edit!


(cl:in-package ros_unity_msgs-msg)


;//! \htmlinclude MapData.msg.html

(cl:defclass <MapData> (roslisp-msg-protocol:ros-message)
  ((width
    :reader width
    :initarg :width
    :type cl:integer
    :initform 0)
   (height
    :reader height
    :initarg :height
    :type cl:integer
    :initform 0)
   (map
    :reader map
    :initarg :map
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (resolution
    :reader resolution
    :initarg :resolution
    :type cl:float
    :initform 0.0)
   (origin
    :reader origin
    :initarg :origin
    :type (cl:vector cl:float)
   :initform (cl:make-array 7 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass MapData (<MapData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_unity_msgs-msg:<MapData> is deprecated: use ros_unity_msgs-msg:MapData instead.")))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <MapData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_unity_msgs-msg:width-val is deprecated.  Use ros_unity_msgs-msg:width instead.")
  (width m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <MapData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_unity_msgs-msg:height-val is deprecated.  Use ros_unity_msgs-msg:height instead.")
  (height m))

(cl:ensure-generic-function 'map-val :lambda-list '(m))
(cl:defmethod map-val ((m <MapData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_unity_msgs-msg:map-val is deprecated.  Use ros_unity_msgs-msg:map instead.")
  (map m))

(cl:ensure-generic-function 'resolution-val :lambda-list '(m))
(cl:defmethod resolution-val ((m <MapData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_unity_msgs-msg:resolution-val is deprecated.  Use ros_unity_msgs-msg:resolution instead.")
  (resolution m))

(cl:ensure-generic-function 'origin-val :lambda-list '(m))
(cl:defmethod origin-val ((m <MapData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_unity_msgs-msg:origin-val is deprecated.  Use ros_unity_msgs-msg:origin instead.")
  (origin m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapData>) ostream)
  "Serializes a message object of type '<MapData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'height)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'height)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'height)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'height)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'map))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'map))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'resolution))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'origin))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapData>) istream)
  "Deserializes a message object of type '<MapData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'height)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'height)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'height)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'height)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'map) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'map)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'resolution) (roslisp-utils:decode-single-float-bits bits)))
  (cl:setf (cl:slot-value msg 'origin) (cl:make-array 7))
  (cl:let ((vals (cl:slot-value msg 'origin)))
    (cl:dotimes (i 7)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapData>)))
  "Returns string type for a message object of type '<MapData>"
  "ros_unity_msgs/MapData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapData)))
  "Returns string type for a message object of type 'MapData"
  "ros_unity_msgs/MapData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapData>)))
  "Returns md5sum for a message object of type '<MapData>"
  "56aa2e0b034c9d2334b16995b3576454")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapData)))
  "Returns md5sum for a message object of type 'MapData"
  "56aa2e0b034c9d2334b16995b3576454")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapData>)))
  "Returns full string definition for message of type '<MapData>"
  (cl:format cl:nil "uint32 width~%uint32 height~%int32[] map~%float32 resolution~%float32[7] origin ~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapData)))
  "Returns full string definition for message of type 'MapData"
  (cl:format cl:nil "uint32 width~%uint32 height~%int32[] map~%float32 resolution~%float32[7] origin ~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapData>))
  (cl:+ 0
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'map) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'origin) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapData>))
  "Converts a ROS message object to a list"
  (cl:list 'MapData
    (cl:cons ':width (width msg))
    (cl:cons ':height (height msg))
    (cl:cons ':map (map msg))
    (cl:cons ':resolution (resolution msg))
    (cl:cons ':origin (origin msg))
))
