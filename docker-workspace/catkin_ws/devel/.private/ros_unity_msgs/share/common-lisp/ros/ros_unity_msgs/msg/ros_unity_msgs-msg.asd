
(cl:in-package :asdf)

(defsystem "ros_unity_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "MapData" :depends-on ("_package_MapData"))
    (:file "_package_MapData" :depends-on ("_package"))
    (:file "Nav2Waypoints" :depends-on ("_package_Nav2Waypoints"))
    (:file "_package_Nav2Waypoints" :depends-on ("_package"))
    (:file "PointGroup" :depends-on ("_package_PointGroup"))
    (:file "_package_PointGroup" :depends-on ("_package"))
    (:file "PointGroups" :depends-on ("_package_PointGroups"))
    (:file "_package_PointGroups" :depends-on ("_package"))
    (:file "PosData" :depends-on ("_package_PosData"))
    (:file "_package_PosData" :depends-on ("_package"))
  ))