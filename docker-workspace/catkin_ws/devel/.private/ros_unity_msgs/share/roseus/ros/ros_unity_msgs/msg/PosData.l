;; Auto-generated. Do not edit!


(when (boundp 'ros_unity_msgs::PosData)
  (if (not (find-package "ROS_UNITY_MSGS"))
    (make-package "ROS_UNITY_MSGS"))
  (shadow 'PosData (find-package "ROS_UNITY_MSGS")))
(unless (find-package "ROS_UNITY_MSGS::POSDATA")
  (make-package "ROS_UNITY_MSGS::POSDATA"))

(in-package "ROS")
;;//! \htmlinclude PosData.msg.html


(defclass ros_unity_msgs::PosData
  :super ros::object
  :slots (_x _y _yaw ))

(defmethod ros_unity_msgs::PosData
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:yaw __yaw) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _yaw (float __yaw))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _yaw
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ros_unity_msgs::PosData :md5sum-) "47802147045815b06859cca542c21d31")
(setf (get ros_unity_msgs::PosData :datatype-) "ros_unity_msgs/PosData")
(setf (get ros_unity_msgs::PosData :definition-)
      "float32 x
float32 y
float32 yaw
")



(provide :ros_unity_msgs/PosData "47802147045815b06859cca542c21d31")


