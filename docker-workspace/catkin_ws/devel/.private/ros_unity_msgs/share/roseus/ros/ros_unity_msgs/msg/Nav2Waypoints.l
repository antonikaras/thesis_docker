;; Auto-generated. Do not edit!


(when (boundp 'ros_unity_msgs::Nav2Waypoints)
  (if (not (find-package "ROS_UNITY_MSGS"))
    (make-package "ROS_UNITY_MSGS"))
  (shadow 'Nav2Waypoints (find-package "ROS_UNITY_MSGS")))
(unless (find-package "ROS_UNITY_MSGS::NAV2WAYPOINTS")
  (make-package "ROS_UNITY_MSGS::NAV2WAYPOINTS"))

(in-package "ROS")
;;//! \htmlinclude Nav2Waypoints.msg.html


(defclass ros_unity_msgs::Nav2Waypoints
  :super ros::object
  :slots (_waypoints ))

(defmethod ros_unity_msgs::Nav2Waypoints
  (:init
   (&key
    ((:waypoints __waypoints) ())
    )
   (send-super :init)
   (setq _waypoints __waypoints)
   self)
  (:waypoints
   (&rest __waypoints)
   (if (keywordp (car __waypoints))
       (send* _waypoints __waypoints)
     (progn
       (if __waypoints (setq _waypoints (car __waypoints)))
       _waypoints)))
  (:serialization-length
   ()
   (+
    ;; ros_unity_msgs/PosData[] _waypoints
    (apply #'+ (send-all _waypoints :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ros_unity_msgs/PosData[] _waypoints
     (write-long (length _waypoints) s)
     (dolist (elem _waypoints)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ros_unity_msgs/PosData[] _waypoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _waypoints (let (r) (dotimes (i n) (push (instance ros_unity_msgs::PosData :init) r)) r))
     (dolist (elem- _waypoints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ros_unity_msgs::Nav2Waypoints :md5sum-) "e7484fc48f37a4ca6f72abe1a6fb5de4")
(setf (get ros_unity_msgs::Nav2Waypoints :datatype-) "ros_unity_msgs/Nav2Waypoints")
(setf (get ros_unity_msgs::Nav2Waypoints :definition-)
      "PosData[] waypoints
================================================================================
MSG: ros_unity_msgs/PosData
float32 x
float32 y
float32 yaw
")



(provide :ros_unity_msgs/Nav2Waypoints "e7484fc48f37a4ca6f72abe1a6fb5de4")


