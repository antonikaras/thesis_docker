;; Auto-generated. Do not edit!


(when (boundp 'ros_tcp_endpoint::UnityHandshake)
  (if (not (find-package "ROS_TCP_ENDPOINT"))
    (make-package "ROS_TCP_ENDPOINT"))
  (shadow 'UnityHandshake (find-package "ROS_TCP_ENDPOINT")))
(unless (find-package "ROS_TCP_ENDPOINT::UNITYHANDSHAKE")
  (make-package "ROS_TCP_ENDPOINT::UNITYHANDSHAKE"))
(unless (find-package "ROS_TCP_ENDPOINT::UNITYHANDSHAKEREQUEST")
  (make-package "ROS_TCP_ENDPOINT::UNITYHANDSHAKEREQUEST"))
(unless (find-package "ROS_TCP_ENDPOINT::UNITYHANDSHAKERESPONSE")
  (make-package "ROS_TCP_ENDPOINT::UNITYHANDSHAKERESPONSE"))

(in-package "ROS")





(defclass ros_tcp_endpoint::UnityHandshakeRequest
  :super ros::object
  :slots (_ip _port ))

(defmethod ros_tcp_endpoint::UnityHandshakeRequest
  (:init
   (&key
    ((:ip __ip) "")
    ((:port __port) 0)
    )
   (send-super :init)
   (setq _ip (string __ip))
   (setq _port (round __port))
   self)
  (:ip
   (&optional __ip)
   (if __ip (setq _ip __ip)) _ip)
  (:port
   (&optional __port)
   (if __port (setq _port __port)) _port)
  (:serialization-length
   ()
   (+
    ;; string _ip
    4 (length _ip)
    ;; uint16 _port
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _ip
       (write-long (length _ip) s) (princ _ip s)
     ;; uint16 _port
       (write-word _port s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _ip
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ip (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint16 _port
     (setq _port (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass ros_tcp_endpoint::UnityHandshakeResponse
  :super ros::object
  :slots (_ip ))

(defmethod ros_tcp_endpoint::UnityHandshakeResponse
  (:init
   (&key
    ((:ip __ip) "")
    )
   (send-super :init)
   (setq _ip (string __ip))
   self)
  (:ip
   (&optional __ip)
   (if __ip (setq _ip __ip)) _ip)
  (:serialization-length
   ()
   (+
    ;; string _ip
    4 (length _ip)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _ip
       (write-long (length _ip) s) (princ _ip s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _ip
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ip (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass ros_tcp_endpoint::UnityHandshake
  :super ros::object
  :slots ())

(setf (get ros_tcp_endpoint::UnityHandshake :md5sum-) "d618401021d6663c32eb0d5da40be68e")
(setf (get ros_tcp_endpoint::UnityHandshake :datatype-) "ros_tcp_endpoint/UnityHandshake")
(setf (get ros_tcp_endpoint::UnityHandshake :request) ros_tcp_endpoint::UnityHandshakeRequest)
(setf (get ros_tcp_endpoint::UnityHandshake :response) ros_tcp_endpoint::UnityHandshakeResponse)

(defmethod ros_tcp_endpoint::UnityHandshakeRequest
  (:response () (instance ros_tcp_endpoint::UnityHandshakeResponse :init)))

(setf (get ros_tcp_endpoint::UnityHandshakeRequest :md5sum-) "d618401021d6663c32eb0d5da40be68e")
(setf (get ros_tcp_endpoint::UnityHandshakeRequest :datatype-) "ros_tcp_endpoint/UnityHandshakeRequest")
(setf (get ros_tcp_endpoint::UnityHandshakeRequest :definition-)
      "string ip
uint16 port
---
string ip
")

(setf (get ros_tcp_endpoint::UnityHandshakeResponse :md5sum-) "d618401021d6663c32eb0d5da40be68e")
(setf (get ros_tcp_endpoint::UnityHandshakeResponse :datatype-) "ros_tcp_endpoint/UnityHandshakeResponse")
(setf (get ros_tcp_endpoint::UnityHandshakeResponse :definition-)
      "string ip
uint16 port
---
string ip
")



(provide :ros_tcp_endpoint/UnityHandshake "d618401021d6663c32eb0d5da40be68e")


