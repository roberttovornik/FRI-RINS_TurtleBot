; Auto-generated. Do not edit!


(cl:in-package costmap_layers-msg)


;//! \htmlinclude Wall.msg.html

(cl:defclass <Wall> (roslisp-msg-protocol:ros-message)
  ((identifier
    :reader identifier
    :initarg :identifier
    :type cl:string
    :initform "")
   (from
    :reader from
    :initarg :from
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (to
    :reader to
    :initarg :to
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (width
    :reader width
    :initarg :width
    :type cl:integer
    :initform 0))
)

(cl:defclass Wall (<Wall>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Wall>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Wall)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name costmap_layers-msg:<Wall> is deprecated: use costmap_layers-msg:Wall instead.")))

(cl:ensure-generic-function 'identifier-val :lambda-list '(m))
(cl:defmethod identifier-val ((m <Wall>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader costmap_layers-msg:identifier-val is deprecated.  Use costmap_layers-msg:identifier instead.")
  (identifier m))

(cl:ensure-generic-function 'from-val :lambda-list '(m))
(cl:defmethod from-val ((m <Wall>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader costmap_layers-msg:from-val is deprecated.  Use costmap_layers-msg:from instead.")
  (from m))

(cl:ensure-generic-function 'to-val :lambda-list '(m))
(cl:defmethod to-val ((m <Wall>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader costmap_layers-msg:to-val is deprecated.  Use costmap_layers-msg:to instead.")
  (to m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <Wall>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader costmap_layers-msg:width-val is deprecated.  Use costmap_layers-msg:width instead.")
  (width m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Wall>) ostream)
  "Serializes a message object of type '<Wall>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'identifier))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'identifier))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'from) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'to) ostream)
  (cl:let* ((signed (cl:slot-value msg 'width)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Wall>) istream)
  "Deserializes a message object of type '<Wall>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'identifier) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'identifier) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'from) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'to) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'width) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Wall>)))
  "Returns string type for a message object of type '<Wall>"
  "costmap_layers/Wall")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Wall)))
  "Returns string type for a message object of type 'Wall"
  "costmap_layers/Wall")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Wall>)))
  "Returns md5sum for a message object of type '<Wall>"
  "68c0f9e0fd6bb3eb2070700be3dd1d6a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Wall)))
  "Returns md5sum for a message object of type 'Wall"
  "68c0f9e0fd6bb3eb2070700be3dd1d6a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Wall>)))
  "Returns full string definition for message of type '<Wall>"
  (cl:format cl:nil "string identifier~%geometry_msgs/Point from~%geometry_msgs/Point to~%int32 width~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Wall)))
  "Returns full string definition for message of type 'Wall"
  (cl:format cl:nil "string identifier~%geometry_msgs/Point from~%geometry_msgs/Point to~%int32 width~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Wall>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'identifier))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'from))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'to))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Wall>))
  "Converts a ROS message object to a list"
  (cl:list 'Wall
    (cl:cons ':identifier (identifier msg))
    (cl:cons ':from (from msg))
    (cl:cons ':to (to msg))
    (cl:cons ':width (width msg))
))
