;; Auto-generated. Do not edit!


(when (boundp 'ros_unity_msgs::PointGroups)
  (if (not (find-package "ROS_UNITY_MSGS"))
    (make-package "ROS_UNITY_MSGS"))
  (shadow 'PointGroups (find-package "ROS_UNITY_MSGS")))
(unless (find-package "ROS_UNITY_MSGS::POINTGROUPS")
  (make-package "ROS_UNITY_MSGS::POINTGROUPS"))

(in-package "ROS")
;;//! \htmlinclude PointGroups.msg.html


(defclass ros_unity_msgs::PointGroups
  :super ros::object
  :slots (_groups ))

(defmethod ros_unity_msgs::PointGroups
  (:init
   (&key
    ((:groups __groups) ())
    )
   (send-super :init)
   (setq _groups __groups)
   self)
  (:groups
   (&rest __groups)
   (if (keywordp (car __groups))
       (send* _groups __groups)
     (progn
       (if __groups (setq _groups (car __groups)))
       _groups)))
  (:serialization-length
   ()
   (+
    ;; ros_unity_msgs/PointGroup[] _groups
    (apply #'+ (send-all _groups :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ros_unity_msgs/PointGroup[] _groups
     (write-long (length _groups) s)
     (dolist (elem _groups)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ros_unity_msgs/PointGroup[] _groups
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _groups (let (r) (dotimes (i n) (push (instance ros_unity_msgs::PointGroup :init) r)) r))
     (dolist (elem- _groups)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ros_unity_msgs::PointGroups :md5sum-) "a2c4e3a8563a46ea18da5c6f66021358")
(setf (get ros_unity_msgs::PointGroups :datatype-) "ros_unity_msgs/PointGroups")
(setf (get ros_unity_msgs::PointGroups :definition-)
      "PointGroup[] groups
================================================================================
MSG: ros_unity_msgs/PointGroup
float32[] map_pos
int32 group_id
float32[] map_origin
float32[] map_dims
float32 map_resolution
string associated_file 
")



(provide :ros_unity_msgs/PointGroups "a2c4e3a8563a46ea18da5c6f66021358")


