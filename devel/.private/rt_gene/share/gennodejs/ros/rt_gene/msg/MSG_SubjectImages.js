// Auto-generated. Do not edit!

// (in-package rt_gene.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class MSG_SubjectImages {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.subject_id = null;
      this.face_img = null;
      this.right_eye_img = null;
      this.left_eye_img = null;
    }
    else {
      if (initObj.hasOwnProperty('subject_id')) {
        this.subject_id = initObj.subject_id
      }
      else {
        this.subject_id = '';
      }
      if (initObj.hasOwnProperty('face_img')) {
        this.face_img = initObj.face_img
      }
      else {
        this.face_img = new sensor_msgs.msg.Image();
      }
      if (initObj.hasOwnProperty('right_eye_img')) {
        this.right_eye_img = initObj.right_eye_img
      }
      else {
        this.right_eye_img = new sensor_msgs.msg.Image();
      }
      if (initObj.hasOwnProperty('left_eye_img')) {
        this.left_eye_img = initObj.left_eye_img
      }
      else {
        this.left_eye_img = new sensor_msgs.msg.Image();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MSG_SubjectImages
    // Serialize message field [subject_id]
    bufferOffset = _serializer.string(obj.subject_id, buffer, bufferOffset);
    // Serialize message field [face_img]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.face_img, buffer, bufferOffset);
    // Serialize message field [right_eye_img]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.right_eye_img, buffer, bufferOffset);
    // Serialize message field [left_eye_img]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.left_eye_img, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MSG_SubjectImages
    let len;
    let data = new MSG_SubjectImages(null);
    // Deserialize message field [subject_id]
    data.subject_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [face_img]
    data.face_img = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    // Deserialize message field [right_eye_img]
    data.right_eye_img = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    // Deserialize message field [left_eye_img]
    data.left_eye_img = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.subject_id.length;
    length += sensor_msgs.msg.Image.getMessageSize(object.face_img);
    length += sensor_msgs.msg.Image.getMessageSize(object.right_eye_img);
    length += sensor_msgs.msg.Image.getMessageSize(object.left_eye_img);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rt_gene/MSG_SubjectImages';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b3ba5bab4b08adf79e584570df0f104c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MSG_SubjectImages(null);
    if (msg.subject_id !== undefined) {
      resolved.subject_id = msg.subject_id;
    }
    else {
      resolved.subject_id = ''
    }

    if (msg.face_img !== undefined) {
      resolved.face_img = sensor_msgs.msg.Image.Resolve(msg.face_img)
    }
    else {
      resolved.face_img = new sensor_msgs.msg.Image()
    }

    if (msg.right_eye_img !== undefined) {
      resolved.right_eye_img = sensor_msgs.msg.Image.Resolve(msg.right_eye_img)
    }
    else {
      resolved.right_eye_img = new sensor_msgs.msg.Image()
    }

    if (msg.left_eye_img !== undefined) {
      resolved.left_eye_img = sensor_msgs.msg.Image.Resolve(msg.left_eye_img)
    }
    else {
      resolved.left_eye_img = new sensor_msgs.msg.Image()
    }

    return resolved;
    }
};

module.exports = MSG_SubjectImages;
