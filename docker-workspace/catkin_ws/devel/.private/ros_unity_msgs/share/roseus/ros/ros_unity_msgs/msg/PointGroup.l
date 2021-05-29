;; Auto-generated. Do not edit!


(when (boundp 'ros_unity_msgs::PointGroup)
  (if (not (find-package "ROS_UNITY_MSGS"))
    (make-package "ROS_UNITY_MSGS"))
  (shadow 'PointGroup (find-package "ROS_UNITY_MSGS")))
(unless (find-package "ROS_UNITY_MSGS::POINTGROUP")
  (make-package "ROS_UNITY_MSGS::POINTGROUP"))

(in-package "ROS")
;;//! \htmlinclude PointGroup.msg.html


(defclass ros_unity_msgs::PointGroup
  :super ros::object
  :slots (_map_pos _group_id _map_origin _map_dims _map_resolution _associated_file ))

(defmethod ros_unity_msgs::PointGroup
  (:init
   (&key
    ((:map_pos __map_pos) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:group_id __group_id) 0)
    ((:map_origin __map_origin) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:map_dims __map_dims) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:map_resolution __map_resolution) 0.0)
    ((:associated_file __associated_file) "")
    )
   (send-super :init)
   (setq _map_pos __map_pos)
   (setq _group_id (round __group_id))
   (setq _map_origin __map_origin)
   (setq _map_dims __map_dims)
   (setq _map_resolution (float __map_resolution))
   (setq _associated_file (string __associated_file))
   self)
  (:map_pos
   (&optional __map_pos)
   (if __map_pos (setq _map_pos __map_pos)) _map_pos)
  (:group_id
   (&optional __group_id)
   (if __group_id (setq _group_id __group_id)) _group_id)
  (:map_origin
   (&optional __map_origin)
   (if __map_origin (setq _map_origin __map_origin)) _map_origin)
  (:map_dims
   (&optional __map_dims)
   (if __map_dims (setq _map_dims __map_dims)) _map_dims)
  (:map_resolution
   (&optional __map_resolution)
   (if __map_resolution (setq _map_resolution __map_resolution)) _map_resolution)
  (:associated_file
   (&optional __associated_file)
   (if __associated_file (setq _associated_file __associated_file)) _associated_file)
  (:serialization-length
   ()
   (+
    ;; float32[] _map_pos
    (* 4    (length _map_pos)) 4
    ;; int32 _group_id
    4
    ;; float32[] _map_origin
    (* 4    (length _map_origin)) 4
    ;; float32[] _map_dims
    (* 4    (length _map_dims)) 4
    ;; float32 _map_resolution
    4
    ;; string _associated_file
    4 (length _associated_file)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _map_pos
     (write-long (length _map_pos) s)
     (dotimes (i (length _map_pos))
       (sys::poke (elt _map_pos i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; int32 _group_id
       (write-long _group_id s)
     ;; float32[] _map_origin
     (write-long (length _map_origin) s)
     (dotimes (i (length _map_origin))
       (sys::poke (elt _map_origin i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _map_dims
     (write-long (length _map_dims) s)
     (dotimes (i (length _map_dims))
       (sys::poke (elt _map_dims i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _map_resolution
       (sys::poke _map_resolution (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _associated_file
       (write-long (length _associated_file) s) (princ _associated_file s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _map_pos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _map_pos (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _map_pos i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; int32 _group_id
     (setq _group_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _map_origin
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _map_origin (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _map_origin i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _map_dims
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _map_dims (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _map_dims i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32 _map_resolution
     (setq _map_resolution (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _associated_file
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _associated_file (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get ros_unity_msgs::PointGroup :md5sum-) "1260362be9abca30f61b84d7c4b3dc52")
(setf (get ros_unity_msgs::PointGroup :datatype-) "ros_unity_msgs/PointGroup")
(setf (get ros_unity_msgs::PointGroup :definition-)
      "float32[] map_pos
int32 group_id
float32[] map_origin
float32[] map_dims
float32 map_resolution
string associated_file 
")



(provide :ros_unity_msgs/PointGroup "1260362be9abca30f61b84d7c4b3dc52")


