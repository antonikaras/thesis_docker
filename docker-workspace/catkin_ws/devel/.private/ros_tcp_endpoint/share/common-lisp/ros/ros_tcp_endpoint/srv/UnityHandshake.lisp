; Auto-generated. Do not edit!


(cl:in-package ros_tcp_endpoint-srv)


;//! \htmlinclude UnityHandshake-request.msg.html

(cl:defclass <UnityHandshake-request> (roslisp-msg-protocol:ros-message)
  ((ip
    :reader ip
    :initarg :ip
    :type cl:string
    :initform "")
   (port
    :reader port
    :initarg :port
    :type cl:fixnum
    :initform 0))
)

(cl:defclass UnityHandshake-request (<UnityHandshake-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UnityHandshake-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UnityHandshake-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_tcp_endpoint-srv:<UnityHandshake-request> is deprecated: use ros_tcp_endpoint-srv:UnityHandshake-request instead.")))

(cl:ensure-generic-function 'ip-val :lambda-list '(m))
(cl:defmethod ip-val ((m <UnityHandshake-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_tcp_endpoint-srv:ip-val is deprecated.  Use ros_tcp_endpoint-srv:ip instead.")
  (ip m))

(cl:ensure-generic-function 'port-val :lambda-list '(m))
(cl:defmethod port-val ((m <UnityHandshake-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_tcp_endpoint-srv:port-val is deprecated.  Use ros_tcp_endpoint-srv:port instead.")
  (port m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UnityHandshake-request>) ostream)
  "Serializes a message object of type '<UnityHandshake-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ip))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ip))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'port)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'port)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UnityHandshake-request>) istream)
  "Deserializes a message object of type '<UnityHandshake-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ip) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ip) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'port)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'port)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UnityHandshake-request>)))
  "Returns string type for a service object of type '<UnityHandshake-request>"
  "ros_tcp_endpoint/UnityHandshakeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UnityHandshake-request)))
  "Returns string type for a service object of type 'UnityHandshake-request"
  "ros_tcp_endpoint/UnityHandshakeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UnityHandshake-request>)))
  "Returns md5sum for a message object of type '<UnityHandshake-request>"
  "d618401021d6663c32eb0d5da40be68e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UnityHandshake-request)))
  "Returns md5sum for a message object of type 'UnityHandshake-request"
  "d618401021d6663c32eb0d5da40be68e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UnityHandshake-request>)))
  "Returns full string definition for message of type '<UnityHandshake-request>"
  (cl:format cl:nil "string ip~%uint16 port~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UnityHandshake-request)))
  "Returns full string definition for message of type 'UnityHandshake-request"
  (cl:format cl:nil "string ip~%uint16 port~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UnityHandshake-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'ip))
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UnityHandshake-request>))
  "Converts a ROS message object to a list"
  (cl:list 'UnityHandshake-request
    (cl:cons ':ip (ip msg))
    (cl:cons ':port (port msg))
))
;//! \htmlinclude UnityHandshake-response.msg.html

(cl:defclass <UnityHandshake-response> (roslisp-msg-protocol:ros-message)
  ((ip
    :reader ip
    :initarg :ip
    :type cl:string
    :initform ""))
)

(cl:defclass UnityHandshake-response (<UnityHandshake-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UnityHandshake-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UnityHandshake-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_tcp_endpoint-srv:<UnityHandshake-response> is deprecated: use ros_tcp_endpoint-srv:UnityHandshake-response instead.")))

(cl:ensure-generic-function 'ip-val :lambda-list '(m))
(cl:defmethod ip-val ((m <UnityHandshake-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_tcp_endpoint-srv:ip-val is deprecated.  Use ros_tcp_endpoint-srv:ip instead.")
  (ip m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UnityHandshake-response>) ostream)
  "Serializes a message object of type '<UnityHandshake-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ip))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ip))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UnityHandshake-response>) istream)
  "Deserializes a message object of type '<UnityHandshake-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ip) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ip) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UnityHandshake-response>)))
  "Returns string type for a service object of type '<UnityHandshake-response>"
  "ros_tcp_endpoint/UnityHandshakeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UnityHandshake-response)))
  "Returns string type for a service object of type 'UnityHandshake-response"
  "ros_tcp_endpoint/UnityHandshakeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UnityHandshake-response>)))
  "Returns md5sum for a message object of type '<UnityHandshake-response>"
  "d618401021d6663c32eb0d5da40be68e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UnityHandshake-response)))
  "Returns md5sum for a message object of type 'UnityHandshake-response"
  "d618401021d6663c32eb0d5da40be68e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UnityHandshake-response>)))
  "Returns full string definition for message of type '<UnityHandshake-response>"
  (cl:format cl:nil "string ip~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UnityHandshake-response)))
  "Returns full string definition for message of type 'UnityHandshake-response"
  (cl:format cl:nil "string ip~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UnityHandshake-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'ip))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UnityHandshake-response>))
  "Converts a ROS message object to a list"
  (cl:list 'UnityHandshake-response
    (cl:cons ':ip (ip msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'UnityHandshake)))
  'UnityHandshake-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'UnityHandshake)))
  'UnityHandshake-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UnityHandshake)))
  "Returns string type for a service object of type '<UnityHandshake>"
  "ros_tcp_endpoint/UnityHandshake")