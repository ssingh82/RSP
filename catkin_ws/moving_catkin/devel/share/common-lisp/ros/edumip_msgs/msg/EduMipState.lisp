; Auto-generated. Do not edit!


(cl:in-package edumip_msgs-msg)


;//! \htmlinclude EduMipState.msg.html

(cl:defclass <EduMipState> (roslisp-msg-protocol:ros-message)
  ((setpoint_phi_dot
    :reader setpoint_phi_dot
    :initarg :setpoint_phi_dot
    :type cl:float
    :initform 0.0)
   (setpoint_gamma_dot
    :reader setpoint_gamma_dot
    :initarg :setpoint_gamma_dot
    :type cl:float
    :initform 0.0)
   (setpoint_phi
    :reader setpoint_phi
    :initarg :setpoint_phi
    :type cl:float
    :initform 0.0)
   (phi
    :reader phi
    :initarg :phi
    :type cl:float
    :initform 0.0)
   (setpoint_gamma
    :reader setpoint_gamma
    :initarg :setpoint_gamma
    :type cl:float
    :initform 0.0)
   (gamma
    :reader gamma
    :initarg :gamma
    :type cl:float
    :initform 0.0)
   (setpoint_theta
    :reader setpoint_theta
    :initarg :setpoint_theta
    :type cl:float
    :initform 0.0)
   (theta
    :reader theta
    :initarg :theta
    :type cl:float
    :initform 0.0)
   (d1_u
    :reader d1_u
    :initarg :d1_u
    :type cl:float
    :initform 0.0)
   (d3_u
    :reader d3_u
    :initarg :d3_u
    :type cl:float
    :initform 0.0)
   (dutyL
    :reader dutyL
    :initarg :dutyL
    :type cl:float
    :initform 0.0)
   (dutyR
    :reader dutyR
    :initarg :dutyR
    :type cl:float
    :initform 0.0)
   (wheel_angle_L
    :reader wheel_angle_L
    :initarg :wheel_angle_L
    :type cl:float
    :initform 0.0)
   (wheel_angle_R
    :reader wheel_angle_R
    :initarg :wheel_angle_R
    :type cl:float
    :initform 0.0)
   (body_frame_easting
    :reader body_frame_easting
    :initarg :body_frame_easting
    :type cl:float
    :initform 0.0)
   (body_frame_northing
    :reader body_frame_northing
    :initarg :body_frame_northing
    :type cl:float
    :initform 0.0)
   (body_frame_heading
    :reader body_frame_heading
    :initarg :body_frame_heading
    :type cl:float
    :initform 0.0)
   (vBatt
    :reader vBatt
    :initarg :vBatt
    :type cl:float
    :initform 0.0)
   (armed
    :reader armed
    :initarg :armed
    :type cl:boolean
    :initform cl:nil)
   (running
    :reader running
    :initarg :running
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass EduMipState (<EduMipState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EduMipState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EduMipState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name edumip_msgs-msg:<EduMipState> is deprecated: use edumip_msgs-msg:EduMipState instead.")))

(cl:ensure-generic-function 'setpoint_phi_dot-val :lambda-list '(m))
(cl:defmethod setpoint_phi_dot-val ((m <EduMipState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader edumip_msgs-msg:setpoint_phi_dot-val is deprecated.  Use edumip_msgs-msg:setpoint_phi_dot instead.")
  (setpoint_phi_dot m))

(cl:ensure-generic-function 'setpoint_gamma_dot-val :lambda-list '(m))
(cl:defmethod setpoint_gamma_dot-val ((m <EduMipState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader edumip_msgs-msg:setpoint_gamma_dot-val is deprecated.  Use edumip_msgs-msg:setpoint_gamma_dot instead.")
  (setpoint_gamma_dot m))

(cl:ensure-generic-function 'setpoint_phi-val :lambda-list '(m))
(cl:defmethod setpoint_phi-val ((m <EduMipState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader edumip_msgs-msg:setpoint_phi-val is deprecated.  Use edumip_msgs-msg:setpoint_phi instead.")
  (setpoint_phi m))

(cl:ensure-generic-function 'phi-val :lambda-list '(m))
(cl:defmethod phi-val ((m <EduMipState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader edumip_msgs-msg:phi-val is deprecated.  Use edumip_msgs-msg:phi instead.")
  (phi m))

(cl:ensure-generic-function 'setpoint_gamma-val :lambda-list '(m))
(cl:defmethod setpoint_gamma-val ((m <EduMipState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader edumip_msgs-msg:setpoint_gamma-val is deprecated.  Use edumip_msgs-msg:setpoint_gamma instead.")
  (setpoint_gamma m))

(cl:ensure-generic-function 'gamma-val :lambda-list '(m))
(cl:defmethod gamma-val ((m <EduMipState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader edumip_msgs-msg:gamma-val is deprecated.  Use edumip_msgs-msg:gamma instead.")
  (gamma m))

(cl:ensure-generic-function 'setpoint_theta-val :lambda-list '(m))
(cl:defmethod setpoint_theta-val ((m <EduMipState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader edumip_msgs-msg:setpoint_theta-val is deprecated.  Use edumip_msgs-msg:setpoint_theta instead.")
  (setpoint_theta m))

(cl:ensure-generic-function 'theta-val :lambda-list '(m))
(cl:defmethod theta-val ((m <EduMipState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader edumip_msgs-msg:theta-val is deprecated.  Use edumip_msgs-msg:theta instead.")
  (theta m))

(cl:ensure-generic-function 'd1_u-val :lambda-list '(m))
(cl:defmethod d1_u-val ((m <EduMipState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader edumip_msgs-msg:d1_u-val is deprecated.  Use edumip_msgs-msg:d1_u instead.")
  (d1_u m))

(cl:ensure-generic-function 'd3_u-val :lambda-list '(m))
(cl:defmethod d3_u-val ((m <EduMipState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader edumip_msgs-msg:d3_u-val is deprecated.  Use edumip_msgs-msg:d3_u instead.")
  (d3_u m))

(cl:ensure-generic-function 'dutyL-val :lambda-list '(m))
(cl:defmethod dutyL-val ((m <EduMipState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader edumip_msgs-msg:dutyL-val is deprecated.  Use edumip_msgs-msg:dutyL instead.")
  (dutyL m))

(cl:ensure-generic-function 'dutyR-val :lambda-list '(m))
(cl:defmethod dutyR-val ((m <EduMipState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader edumip_msgs-msg:dutyR-val is deprecated.  Use edumip_msgs-msg:dutyR instead.")
  (dutyR m))

(cl:ensure-generic-function 'wheel_angle_L-val :lambda-list '(m))
(cl:defmethod wheel_angle_L-val ((m <EduMipState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader edumip_msgs-msg:wheel_angle_L-val is deprecated.  Use edumip_msgs-msg:wheel_angle_L instead.")
  (wheel_angle_L m))

(cl:ensure-generic-function 'wheel_angle_R-val :lambda-list '(m))
(cl:defmethod wheel_angle_R-val ((m <EduMipState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader edumip_msgs-msg:wheel_angle_R-val is deprecated.  Use edumip_msgs-msg:wheel_angle_R instead.")
  (wheel_angle_R m))

(cl:ensure-generic-function 'body_frame_easting-val :lambda-list '(m))
(cl:defmethod body_frame_easting-val ((m <EduMipState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader edumip_msgs-msg:body_frame_easting-val is deprecated.  Use edumip_msgs-msg:body_frame_easting instead.")
  (body_frame_easting m))

(cl:ensure-generic-function 'body_frame_northing-val :lambda-list '(m))
(cl:defmethod body_frame_northing-val ((m <EduMipState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader edumip_msgs-msg:body_frame_northing-val is deprecated.  Use edumip_msgs-msg:body_frame_northing instead.")
  (body_frame_northing m))

(cl:ensure-generic-function 'body_frame_heading-val :lambda-list '(m))
(cl:defmethod body_frame_heading-val ((m <EduMipState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader edumip_msgs-msg:body_frame_heading-val is deprecated.  Use edumip_msgs-msg:body_frame_heading instead.")
  (body_frame_heading m))

(cl:ensure-generic-function 'vBatt-val :lambda-list '(m))
(cl:defmethod vBatt-val ((m <EduMipState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader edumip_msgs-msg:vBatt-val is deprecated.  Use edumip_msgs-msg:vBatt instead.")
  (vBatt m))

(cl:ensure-generic-function 'armed-val :lambda-list '(m))
(cl:defmethod armed-val ((m <EduMipState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader edumip_msgs-msg:armed-val is deprecated.  Use edumip_msgs-msg:armed instead.")
  (armed m))

(cl:ensure-generic-function 'running-val :lambda-list '(m))
(cl:defmethod running-val ((m <EduMipState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader edumip_msgs-msg:running-val is deprecated.  Use edumip_msgs-msg:running instead.")
  (running m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EduMipState>) ostream)
  "Serializes a message object of type '<EduMipState>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'setpoint_phi_dot))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'setpoint_gamma_dot))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'setpoint_phi))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'phi))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'setpoint_gamma))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gamma))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'setpoint_theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'd1_u))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'd3_u))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dutyL))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dutyR))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'wheel_angle_L))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'wheel_angle_R))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'body_frame_easting))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'body_frame_northing))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'body_frame_heading))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vBatt))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'armed) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'running) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EduMipState>) istream)
  "Deserializes a message object of type '<EduMipState>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'setpoint_phi_dot) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'setpoint_gamma_dot) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'setpoint_phi) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'phi) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'setpoint_gamma) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gamma) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'setpoint_theta) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'd1_u) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'd3_u) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dutyL) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dutyR) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wheel_angle_L) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wheel_angle_R) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'body_frame_easting) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'body_frame_northing) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'body_frame_heading) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vBatt) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'armed) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'running) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EduMipState>)))
  "Returns string type for a message object of type '<EduMipState>"
  "edumip_msgs/EduMipState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EduMipState)))
  "Returns string type for a message object of type 'EduMipState"
  "edumip_msgs/EduMipState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EduMipState>)))
  "Returns md5sum for a message object of type '<EduMipState>"
  "d8a26db22626d6362109a0c1a1de3a6a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EduMipState)))
  "Returns md5sum for a message object of type 'EduMipState"
  "d8a26db22626d6362109a0c1a1de3a6a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EduMipState>)))
  "Returns full string definition for message of type '<EduMipState>"
  (cl:format cl:nil "float32 setpoint_phi_dot    # commanded average  wheel vel ~~ trans vel~%float32 setpoint_gamma_dot  # commanded steering angle vel ~~ angualr vel~%float32 setpoint_phi        # commanded average wheel pos~%float32 phi                 # average wheel pos~%float32 setpoint_gamma      # commanded steering angle~%float32 gamma               # steering angle~%float32 setpoint_theta      # commanded body tilt~%float32 theta               # body tilt~%float32 d1_u                # control command for balnce loop~%float32 d3_u                # control command for steering loop~%float32 dutyL               # left  motor duty cycle~%float32 dutyR               # right motor duty cycle~%~%# 2017-02-22 LLW Added odometry data ~%float32 wheel_angle_L       # total rotation of left  wheel (radians) (+ is forward)~%float32 wheel_angle_R       # total rotation of right wheel (radians) (+ is forward)~%float32 body_frame_easting  # displacemnt of body frame (m) (+ is East )~%float32 body_frame_northing # displacemnt of body frame (m) (+ is North)~%float32 body_frame_heading  # compass heading (radians) ~%~%float32 vBatt               # battery voltage in volts~%bool    armed               # controllers are active~%bool    running             # balance program is running~%~% ~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EduMipState)))
  "Returns full string definition for message of type 'EduMipState"
  (cl:format cl:nil "float32 setpoint_phi_dot    # commanded average  wheel vel ~~ trans vel~%float32 setpoint_gamma_dot  # commanded steering angle vel ~~ angualr vel~%float32 setpoint_phi        # commanded average wheel pos~%float32 phi                 # average wheel pos~%float32 setpoint_gamma      # commanded steering angle~%float32 gamma               # steering angle~%float32 setpoint_theta      # commanded body tilt~%float32 theta               # body tilt~%float32 d1_u                # control command for balnce loop~%float32 d3_u                # control command for steering loop~%float32 dutyL               # left  motor duty cycle~%float32 dutyR               # right motor duty cycle~%~%# 2017-02-22 LLW Added odometry data ~%float32 wheel_angle_L       # total rotation of left  wheel (radians) (+ is forward)~%float32 wheel_angle_R       # total rotation of right wheel (radians) (+ is forward)~%float32 body_frame_easting  # displacemnt of body frame (m) (+ is East )~%float32 body_frame_northing # displacemnt of body frame (m) (+ is North)~%float32 body_frame_heading  # compass heading (radians) ~%~%float32 vBatt               # battery voltage in volts~%bool    armed               # controllers are active~%bool    running             # balance program is running~%~% ~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EduMipState>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EduMipState>))
  "Converts a ROS message object to a list"
  (cl:list 'EduMipState
    (cl:cons ':setpoint_phi_dot (setpoint_phi_dot msg))
    (cl:cons ':setpoint_gamma_dot (setpoint_gamma_dot msg))
    (cl:cons ':setpoint_phi (setpoint_phi msg))
    (cl:cons ':phi (phi msg))
    (cl:cons ':setpoint_gamma (setpoint_gamma msg))
    (cl:cons ':gamma (gamma msg))
    (cl:cons ':setpoint_theta (setpoint_theta msg))
    (cl:cons ':theta (theta msg))
    (cl:cons ':d1_u (d1_u msg))
    (cl:cons ':d3_u (d3_u msg))
    (cl:cons ':dutyL (dutyL msg))
    (cl:cons ':dutyR (dutyR msg))
    (cl:cons ':wheel_angle_L (wheel_angle_L msg))
    (cl:cons ':wheel_angle_R (wheel_angle_R msg))
    (cl:cons ':body_frame_easting (body_frame_easting msg))
    (cl:cons ':body_frame_northing (body_frame_northing msg))
    (cl:cons ':body_frame_heading (body_frame_heading msg))
    (cl:cons ':vBatt (vBatt msg))
    (cl:cons ':armed (armed msg))
    (cl:cons ':running (running msg))
))
