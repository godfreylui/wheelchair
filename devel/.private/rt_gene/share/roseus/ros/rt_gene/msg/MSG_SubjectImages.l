;; Auto-generated. Do not edit!


(when (boundp 'rt_gene::MSG_SubjectImages)
  (if (not (find-package "RT_GENE"))
    (make-package "RT_GENE"))
  (shadow 'MSG_SubjectImages (find-package "RT_GENE")))
(unless (find-package "RT_GENE::MSG_SUBJECTIMAGES")
  (make-package "RT_GENE::MSG_SUBJECTIMAGES"))

(in-package "ROS")
;;//! \htmlinclude MSG_SubjectImages.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass rt_gene::MSG_SubjectImages
  :super ros::object
  :slots (_subject_id _face_img _right_eye_img _left_eye_img ))

(defmethod rt_gene::MSG_SubjectImages
  (:init
   (&key
    ((:subject_id __subject_id) "")
    ((:face_img __face_img) (instance sensor_msgs::Image :init))
    ((:right_eye_img __right_eye_img) (instance sensor_msgs::Image :init))
    ((:left_eye_img __left_eye_img) (instance sensor_msgs::Image :init))
    )
   (send-super :init)
   (setq _subject_id (string __subject_id))
   (setq _face_img __face_img)
   (setq _right_eye_img __right_eye_img)
   (setq _left_eye_img __left_eye_img)
   self)
  (:subject_id
   (&optional __subject_id)
   (if __subject_id (setq _subject_id __subject_id)) _subject_id)
  (:face_img
   (&rest __face_img)
   (if (keywordp (car __face_img))
       (send* _face_img __face_img)
     (progn
       (if __face_img (setq _face_img (car __face_img)))
       _face_img)))
  (:right_eye_img
   (&rest __right_eye_img)
   (if (keywordp (car __right_eye_img))
       (send* _right_eye_img __right_eye_img)
     (progn
       (if __right_eye_img (setq _right_eye_img (car __right_eye_img)))
       _right_eye_img)))
  (:left_eye_img
   (&rest __left_eye_img)
   (if (keywordp (car __left_eye_img))
       (send* _left_eye_img __left_eye_img)
     (progn
       (if __left_eye_img (setq _left_eye_img (car __left_eye_img)))
       _left_eye_img)))
  (:serialization-length
   ()
   (+
    ;; string _subject_id
    4 (length _subject_id)
    ;; sensor_msgs/Image _face_img
    (send _face_img :serialization-length)
    ;; sensor_msgs/Image _right_eye_img
    (send _right_eye_img :serialization-length)
    ;; sensor_msgs/Image _left_eye_img
    (send _left_eye_img :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _subject_id
       (write-long (length _subject_id) s) (princ _subject_id s)
     ;; sensor_msgs/Image _face_img
       (send _face_img :serialize s)
     ;; sensor_msgs/Image _right_eye_img
       (send _right_eye_img :serialize s)
     ;; sensor_msgs/Image _left_eye_img
       (send _left_eye_img :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _subject_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _subject_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; sensor_msgs/Image _face_img
     (send _face_img :deserialize buf ptr-) (incf ptr- (send _face_img :serialization-length))
   ;; sensor_msgs/Image _right_eye_img
     (send _right_eye_img :deserialize buf ptr-) (incf ptr- (send _right_eye_img :serialization-length))
   ;; sensor_msgs/Image _left_eye_img
     (send _left_eye_img :deserialize buf ptr-) (incf ptr- (send _left_eye_img :serialization-length))
   ;;
   self)
  )

(setf (get rt_gene::MSG_SubjectImages :md5sum-) "b3ba5bab4b08adf79e584570df0f104c")
(setf (get rt_gene::MSG_SubjectImages :datatype-) "rt_gene/MSG_SubjectImages")
(setf (get rt_gene::MSG_SubjectImages :definition-)
      "string subject_id
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



(provide :rt_gene/MSG_SubjectImages "b3ba5bab4b08adf79e584570df0f104c")


