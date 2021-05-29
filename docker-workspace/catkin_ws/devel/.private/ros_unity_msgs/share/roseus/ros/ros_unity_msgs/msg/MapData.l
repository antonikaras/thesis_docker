;; Auto-generated. Do not edit!


(when (boundp 'ros_unity_msgs::MapData)
  (if (not (find-package "ROS_UNITY_MSGS"))
    (make-package "ROS_UNITY_MSGS"))
  (shadow 'MapData (find-package "ROS_UNITY_MSGS")))
(unless (find-package "ROS_UNITY_MSGS::MAPDATA")
  (make-package "ROS_UNITY_MSGS::MAPDATA"))

(in-package "ROS")
;;//! \htmlinclude MapData.msg.html


(defclass ros_unity_msgs::MapData
  :super ros::object
  :slots (_width _height _map _resolution _origin ))

(defmethod ros_unity_msgs::MapData
  (:init
   (&key
    ((:width __width) 0)
    ((:height __height) 0)
    ((:map __map) (make-array 0 :initial-element 0 :element-type :integer))
    ((:resolution __resolution) 0.0)
    ((:origin __origin) (make-array 7 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _width (round __width))
   (setq _height (round __height))
   (setq _map __map)
   (setq _resolution (float __resolution))
   (setq _origin __origin)
   self)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:map
   (&optional __map)
   (if __map (setq _map __map)) _map)
  (:resolution
   (&optional __resolution)
   (if __resolution (setq _resolution __resolution)) _resolution)
  (:origin
   (&optional __origin)
   (if __origin (setq _origin __origin)) _origin)
  (:serialization-length
   ()
   (+
    ;; uint32 _width
    4
    ;; uint32 _height
    4
    ;; int32[] _map
    (* 4    (length _map)) 4
    ;; float32 _resolution
    4
    ;; float32[7] _origin
    (* 4    7)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _width
       (write-long _width s)
     ;; uint32 _height
       (write-long _height s)
     ;; int32[] _map
     (write-long (length _map) s)
     (dotimes (i (length _map))
       (write-long (elt _map i) s)
       )
     ;; float32 _resolution
       (sys::poke _resolution (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[7] _origin
     (dotimes (i 7)
       (sys::poke (elt _origin i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _width
     (setq _width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _height
     (setq _height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32[] _map
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _map (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _map i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float32 _resolution
     (setq _resolution (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[7] _origin
   (dotimes (i (length _origin))
     (setf (elt _origin i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get ros_unity_msgs::MapData :md5sum-) "56aa2e0b034c9d2334b16995b3576454")
(setf (get ros_unity_msgs::MapData :datatype-) "ros_unity_msgs/MapData")
(setf (get ros_unity_msgs::MapData :definition-)
      "uint32 width
uint32 height
int32[] map
float32 resolution
float32[7] origin 
")



(provide :ros_unity_msgs/MapData "56aa2e0b034c9d2334b16995b3576454")


