// Auto-generated. Do not edit!

// (in-package rt_gene.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MSG_SubjectImages = require('./MSG_SubjectImages.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class MSG_SubjectImagesList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.subjects = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('subjects')) {
        this.subjects = initObj.subjects
      }
      else {
        this.subjects = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MSG_SubjectImagesList
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [subjects]
    // Serialize the length for message field [subjects]
    bufferOffset = _serializer.uint32(obj.subjects.length, buffer, bufferOffset);
    obj.subjects.forEach((val) => {
      bufferOffset = MSG_SubjectImages.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MSG_SubjectImagesList
    let len;
    let data = new MSG_SubjectImagesList(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [subjects]
    // Deserialize array length for message field [subjects]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.subjects = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.subjects[i] = MSG_SubjectImages.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.subjects.forEach((val) => {
      length += MSG_SubjectImages.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rt_gene/MSG_SubjectImagesList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bca8076b86dc37b0d0f1350d2b30ab4e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MSG_SubjectImagesList(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.subjects !== undefined) {
      resolved.subjects = new Array(msg.subjects.length);
      for (let i = 0; i < resolved.subjects.length; ++i) {
        resolved.subjects[i] = MSG_SubjectImages.Resolve(msg.subjects[i]);
      }
    }
    else {
      resolved.subjects = []
    }

    return resolved;
    }
};

module.exports = MSG_SubjectImagesList;
