; Auto-generated. Do not edit!


(cl:in-package rt_gene-msg)


;//! \htmlinclude MSG_SubjectImagesList.msg.html

(cl:defclass <MSG_SubjectImagesList> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (subjects
    :reader subjects
    :initarg :subjects
    :type (cl:vector rt_gene-msg:MSG_SubjectImages)
   :initform (cl:make-array 0 :element-type 'rt_gene-msg:MSG_SubjectImages :initial-element (cl:make-instance 'rt_gene-msg:MSG_SubjectImages))))
)

(cl:defclass MSG_SubjectImagesList (<MSG_SubjectImagesList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MSG_SubjectImagesList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MSG_SubjectImagesList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rt_gene-msg:<MSG_SubjectImagesList> is deprecated: use rt_gene-msg:MSG_SubjectImagesList instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MSG_SubjectImagesList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_gene-msg:header-val is deprecated.  Use rt_gene-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'subjects-val :lambda-list '(m))
(cl:defmethod subjects-val ((m <MSG_SubjectImagesList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_gene-msg:subjects-val is deprecated.  Use rt_gene-msg:subjects instead.")
  (subjects m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MSG_SubjectImagesList>) ostream)
  "Serializes a message object of type '<MSG_SubjectImagesList>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'subjects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'subjects))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MSG_SubjectImagesList>) istream)
  "Deserializes a message object of type '<MSG_SubjectImagesList>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'subjects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'subjects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rt_gene-msg:MSG_SubjectImages))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MSG_SubjectImagesList>)))
  "Returns string type for a message object of type '<MSG_SubjectImagesList>"
  "rt_gene/MSG_SubjectImagesList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MSG_SubjectImagesList)))
  "Returns string type for a message object of type 'MSG_SubjectImagesList"
  "rt_gene/MSG_SubjectImagesList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MSG_SubjectImagesList>)))
  "Returns md5sum for a message object of type '<MSG_SubjectImagesList>"
  "bca8076b86dc37b0d0f1350d2b30ab4e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MSG_SubjectImagesList)))
  "Returns md5sum for a message object of type 'MSG_SubjectImagesList"
  "bca8076b86dc37b0d0f1350d2b30ab4e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MSG_SubjectImagesList>)))
  "Returns full string definition for message of type '<MSG_SubjectImagesList>"
  (cl:format cl:nil "Header header~%MSG_SubjectImages[] subjects~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: rt_gene/MSG_SubjectImages~%string subject_id~%sensor_msgs/Image face_img~%sensor_msgs/Image right_eye_img~%sensor_msgs/Image left_eye_img~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MSG_SubjectImagesList)))
  "Returns full string definition for message of type 'MSG_SubjectImagesList"
  (cl:format cl:nil "Header header~%MSG_SubjectImages[] subjects~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: rt_gene/MSG_SubjectImages~%string subject_id~%sensor_msgs/Image face_img~%sensor_msgs/Image right_eye_img~%sensor_msgs/Image left_eye_img~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MSG_SubjectImagesList>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'subjects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MSG_SubjectImagesList>))
  "Converts a ROS message object to a list"
  (cl:list 'MSG_SubjectImagesList
    (cl:cons ':header (header msg))
    (cl:cons ':subjects (subjects msg))
))
