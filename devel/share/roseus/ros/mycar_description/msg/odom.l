;; Auto-generated. Do not edit!


(when (boundp 'mycar_description::odom)
  (if (not (find-package "MYCAR_DESCRIPTION"))
    (make-package "MYCAR_DESCRIPTION"))
  (shadow 'odom (find-package "MYCAR_DESCRIPTION")))
(unless (find-package "MYCAR_DESCRIPTION::ODOM")
  (make-package "MYCAR_DESCRIPTION::ODOM"))

(in-package "ROS")
;;//! \htmlinclude odom.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mycar_description::odom
  :super ros::object
  :slots (_header _child_frame_id _x _y _z _qx _qy _qz _linear_x _linear_y _linear_z _angular_x _angular_y _angular_z ))

(defmethod mycar_description::odom
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:child_frame_id __child_frame_id) "")
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:qx __qx) 0.0)
    ((:qy __qy) 0.0)
    ((:qz __qz) 0.0)
    ((:linear_x __linear_x) 0.0)
    ((:linear_y __linear_y) 0.0)
    ((:linear_z __linear_z) 0.0)
    ((:angular_x __angular_x) 0.0)
    ((:angular_y __angular_y) 0.0)
    ((:angular_z __angular_z) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _child_frame_id (string __child_frame_id))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _qx (float __qx))
   (setq _qy (float __qy))
   (setq _qz (float __qz))
   (setq _linear_x (float __linear_x))
   (setq _linear_y (float __linear_y))
   (setq _linear_z (float __linear_z))
   (setq _angular_x (float __angular_x))
   (setq _angular_y (float __angular_y))
   (setq _angular_z (float __angular_z))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:child_frame_id
   (&optional __child_frame_id)
   (if __child_frame_id (setq _child_frame_id __child_frame_id)) _child_frame_id)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:qx
   (&optional __qx)
   (if __qx (setq _qx __qx)) _qx)
  (:qy
   (&optional __qy)
   (if __qy (setq _qy __qy)) _qy)
  (:qz
   (&optional __qz)
   (if __qz (setq _qz __qz)) _qz)
  (:linear_x
   (&optional __linear_x)
   (if __linear_x (setq _linear_x __linear_x)) _linear_x)
  (:linear_y
   (&optional __linear_y)
   (if __linear_y (setq _linear_y __linear_y)) _linear_y)
  (:linear_z
   (&optional __linear_z)
   (if __linear_z (setq _linear_z __linear_z)) _linear_z)
  (:angular_x
   (&optional __angular_x)
   (if __angular_x (setq _angular_x __angular_x)) _angular_x)
  (:angular_y
   (&optional __angular_y)
   (if __angular_y (setq _angular_y __angular_y)) _angular_y)
  (:angular_z
   (&optional __angular_z)
   (if __angular_z (setq _angular_z __angular_z)) _angular_z)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _child_frame_id
    4 (length _child_frame_id)
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ;; float64 _qx
    8
    ;; float64 _qy
    8
    ;; float64 _qz
    8
    ;; float64 _linear_x
    8
    ;; float64 _linear_y
    8
    ;; float64 _linear_z
    8
    ;; float64 _angular_x
    8
    ;; float64 _angular_y
    8
    ;; float64 _angular_z
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _child_frame_id
       (write-long (length _child_frame_id) s) (princ _child_frame_id s)
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _qx
       (sys::poke _qx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _qy
       (sys::poke _qy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _qz
       (sys::poke _qz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _linear_x
       (sys::poke _linear_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _linear_y
       (sys::poke _linear_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _linear_z
       (sys::poke _linear_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angular_x
       (sys::poke _angular_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angular_y
       (sys::poke _angular_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angular_z
       (sys::poke _angular_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _child_frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _child_frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _qx
     (setq _qx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _qy
     (setq _qy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _qz
     (setq _qz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _linear_x
     (setq _linear_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _linear_y
     (setq _linear_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _linear_z
     (setq _linear_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angular_x
     (setq _angular_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angular_y
     (setq _angular_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angular_z
     (setq _angular_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get mycar_description::odom :md5sum-) "25cda7db278c70bdd54043a3be01ed45")
(setf (get mycar_description::odom :datatype-) "mycar_description/odom")
(setf (get mycar_description::odom :definition-)
      "Header header
string child_frame_id
float64 x
float64 y
float64 z
float64 qx
float64 qy
float64 qz
float64 linear_x
float64 linear_y
float64 linear_z
float64 angular_x
float64 angular_y
float64 angular_z
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :mycar_description/odom "25cda7db278c70bdd54043a3be01ed45")


