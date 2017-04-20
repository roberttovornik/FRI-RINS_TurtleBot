; Auto-generated. Do not edit!


(cl:in-package localizer-srv)


;//! \htmlinclude Localize-request.msg.html

(cl:defclass <Localize-request> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (point
    :reader point
    :initarg :point
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (scope
    :reader scope
    :initarg :scope
    :type cl:integer
    :initform 0))
)

(cl:defclass Localize-request (<Localize-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Localize-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Localize-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name localizer-srv:<Localize-request> is deprecated: use localizer-srv:Localize-request instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Localize-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localizer-srv:header-val is deprecated.  Use localizer-srv:header instead.")
  (header m))

(cl:ensure-generic-function 'point-val :lambda-list '(m))
(cl:defmethod point-val ((m <Localize-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localizer-srv:point-val is deprecated.  Use localizer-srv:point instead.")
  (point m))

(cl:ensure-generic-function 'scope-val :lambda-list '(m))
(cl:defmethod scope-val ((m <Localize-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localizer-srv:scope-val is deprecated.  Use localizer-srv:scope instead.")
  (scope m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Localize-request>) ostream)
  "Serializes a message object of type '<Localize-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point) ostream)
  (cl:let* ((signed (cl:slot-value msg 'scope)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Localize-request>) istream)
  "Deserializes a message object of type '<Localize-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'scope) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Localize-request>)))
  "Returns string type for a service object of type '<Localize-request>"
  "localizer/LocalizeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Localize-request)))
  "Returns string type for a service object of type 'Localize-request"
  "localizer/LocalizeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Localize-request>)))
  "Returns md5sum for a message object of type '<Localize-request>"
  "a308643c2731f421c811b956395b3a0b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Localize-request)))
  "Returns md5sum for a message object of type 'Localize-request"
  "a308643c2731f421c811b956395b3a0b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Localize-request>)))
  "Returns full string definition for message of type '<Localize-request>"
  (cl:format cl:nil "Header header~%geometry_msgs/Point point~%int32 scope~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Localize-request)))
  "Returns full string definition for message of type 'Localize-request"
  (cl:format cl:nil "Header header~%geometry_msgs/Point point~%int32 scope~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Localize-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Localize-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Localize-request
    (cl:cons ':header (header msg))
    (cl:cons ':point (point msg))
    (cl:cons ':scope (scope msg))
))
;//! \htmlinclude Localize-response.msg.html

(cl:defclass <Localize-response> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass Localize-response (<Localize-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Localize-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Localize-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name localizer-srv:<Localize-response> is deprecated: use localizer-srv:Localize-response instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <Localize-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localizer-srv:pose-val is deprecated.  Use localizer-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Localize-response>) ostream)
  "Serializes a message object of type '<Localize-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Localize-response>) istream)
  "Deserializes a message object of type '<Localize-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Localize-response>)))
  "Returns string type for a service object of type '<Localize-response>"
  "localizer/LocalizeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Localize-response)))
  "Returns string type for a service object of type 'Localize-response"
  "localizer/LocalizeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Localize-response>)))
  "Returns md5sum for a message object of type '<Localize-response>"
  "a308643c2731f421c811b956395b3a0b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Localize-response)))
  "Returns md5sum for a message object of type 'Localize-response"
  "a308643c2731f421c811b956395b3a0b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Localize-response>)))
  "Returns full string definition for message of type '<Localize-response>"
  (cl:format cl:nil "geometry_msgs/Pose pose~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Localize-response)))
  "Returns full string definition for message of type 'Localize-response"
  (cl:format cl:nil "geometry_msgs/Pose pose~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Localize-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Localize-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Localize-response
    (cl:cons ':pose (pose msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Localize)))
  'Localize-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Localize)))
  'Localize-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Localize)))
  "Returns string type for a service object of type '<Localize>"
  "localizer/Localize")