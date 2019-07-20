;; Auto-generated. Do not edit!


(when (boundp 'rt_gene::MSG_SubjectImagesList)
  (if (not (find-package "RT_GENE"))
    (make-package "RT_GENE"))
  (shadow 'MSG_SubjectImagesList (find-package "RT_GENE")))
(unless (find-package "RT_GENE::MSG_SUBJECTIMAGESLIST")
  (make-package "RT_GENE::MSG_SUBJECTIMAGESLIST"))

(in-package "ROS")
;;//! \htmlinclude MSG_SubjectImagesList.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rt_gene::MSG_SubjectImagesList
  :super ros::object
  :slots (_header _subjects ))

(defmethod rt_gene::MSG_SubjectImagesList
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:subjects __subjects) (let (r) (dotimes (i 0) (push (instance rt_gene::MSG_SubjectImages :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _subjects __subjects)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:subjects
   (&rest __subjects)
   (if (keywordp (car __subjects))
       (send* _subjects __subjects)
     (progn
       (if __subjects (setq _subjects (car __subjects)))
       _subjects)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; rt_gene/MSG_SubjectImages[] _subjects
    (apply #'+ (send-all _subjects :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; rt_gene/MSG_SubjectImages[] _subjects
     (write-long (length _subjects) s)
     (dolist (elem _subjects)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; rt_gene/MSG_SubjectImages[] _subjects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _subjects (let (r) (dotimes (i n) (push (instance rt_gene::MSG_SubjectImages :init) r)) r))
     (dolist (elem- _subjects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get rt_gene::MSG_SubjectImagesList :md5sum-) "bca8076b86dc37b0d0f1350d2b30ab4e")
(setf (get rt_gene::MSG_SubjectImagesList :datatype-) "rt_gene/MSG_SubjectImagesList")
(setf (get rt_gene::MSG_SubjectImagesList :definition-)
      "Header header
MSG_SubjectImages[] subjects

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

================================================================================
MSG: rt_gene/MSG_SubjectImages
string subject_id
sensor_msgs/Image face_img
sensor_msgs/Image right_eye_img
sensor_msgs/Image left_eye_img

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

")



(provide :rt_gene/MSG_SubjectImagesList "bca8076b86dc37b0d0f1350d2b30ab4e")


