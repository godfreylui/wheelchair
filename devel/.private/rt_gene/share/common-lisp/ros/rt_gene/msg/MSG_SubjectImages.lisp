; Auto-generated. Do not edit!


(cl:in-package rt_gene-msg)


;//! \htmlinclude MSG_SubjectImages.msg.html

(cl:defclass <MSG_SubjectImages> (roslisp-msg-protocol:ros-message)
  ((subject_id
    :reader subject_id
    :initarg :subject_id
    :type cl:string
    :initform "")
   (face_img
    :reader face_img
    :initarg :face_img
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (right_eye_img
    :reader right_eye_img
    :initarg :right_eye_img
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (left_eye_img
    :reader left_eye_img
    :initarg :left_eye_img
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image)))
)

(cl:defclass MSG_SubjectImages (<MSG_SubjectImages>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MSG_SubjectImages>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MSG_SubjectImages)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rt_gene-msg:<MSG_SubjectImages> is deprecated: use rt_gene-msg:MSG_SubjectImages instead.")))

(cl:ensure-generic-function 'subject_id-val :lambda-list '(m))
(cl:defmethod subject_id-val ((m <MSG_SubjectImages>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_gene-msg:subject_id-val is deprecated.  Use rt_gene-msg:subject_id instead.")
  (subject_id m))

(cl:ensure-generic-function 'face_img-val :lambda-list '(m))
(cl:defmethod face_img-val ((m <MSG_SubjectImages>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_gene-msg:face_img-val is deprecated.  Use rt_gene-msg:face_img instead.")
  (face_img m))

(cl:ensure-generic-function 'right_eye_img-val :lambda-list '(m))
(cl:defmethod right_eye_img-val ((m <MSG_SubjectImages>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_gene-msg:right_eye_img-val is deprecated.  Use rt_gene-msg:right_eye_img instead.")
  (right_eye_img m))

(cl:ensure-generic-function 'left_eye_img-val :lambda-list '(m))
(cl:defmethod left_eye_img-val ((m <MSG_SubjectImages>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_gene-msg:left_eye_img-val is deprecated.  Use rt_gene-msg:left_eye_img instead.")
  (left_eye_img m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MSG_SubjectImages>) ostream)
  "Serializes a message object of type '<MSG_SubjectImages>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'subject_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'subject_id))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'face_img) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_eye_img) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_eye_img) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MSG_SubjectImages>) istream)
  "Deserializes a message object of type '<MSG_SubjectImages>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'subject_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'subject_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'face_img) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_eye_img) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_eye_img) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MSG_SubjectImages>)))
  "Returns string type for a message object of type '<MSG_SubjectImages>"
  "rt_gene/MSG_SubjectImages")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MSG_SubjectImages)))
  "Returns string type for a message object of type 'MSG_SubjectImages"
  "rt_gene/MSG_SubjectImages")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MSG_SubjectImages>)))
  "Returns md5sum for a message object of type '<MSG_SubjectImages>"
  "b3ba5bab4b08adf79e584570df0f104c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MSG_SubjectImages)))
  "Returns md5sum for a message object of type 'MSG_SubjectImages"
  "b3ba5bab4b08adf79e584570df0f104c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MSG_SubjectImages>)))
  "Returns full string definition for message of type '<MSG_SubjectImages>"
  (cl:format cl:nil "string subject_id~%sensor_msgs/Image face_img~%sensor_msgs/Image right_eye_img~%sensor_msgs/Image left_eye_img~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MSG_SubjectImages)))
  "Returns full string definition for message of type 'MSG_SubjectImages"
  (cl:format cl:nil "string subject_id~%sensor_msgs/Image face_img~%sensor_msgs/Image right_eye_img~%sensor_msgs/Image left_eye_img~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MSG_SubjectImages>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'subject_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'face_img))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_eye_img))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_eye_img))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MSG_SubjectImages>))
  "Converts a ROS message object to a list"
  (cl:list 'MSG_SubjectImages
    (cl:cons ':subject_id (subject_id msg))
    (cl:cons ':face_img (face_img msg))
    (cl:cons ':right_eye_img (right_eye_img msg))
    (cl:cons ':left_eye_img (left_eye_img msg))
))
