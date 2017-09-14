;; Auto-generated. Do not edit!


(when (boundp 'edumip_msgs::EduMipState)
  (if (not (find-package "EDUMIP_MSGS"))
    (make-package "EDUMIP_MSGS"))
  (shadow 'EduMipState (find-package "EDUMIP_MSGS")))
(unless (find-package "EDUMIP_MSGS::EDUMIPSTATE")
  (make-package "EDUMIP_MSGS::EDUMIPSTATE"))

(in-package "ROS")
;;//! \htmlinclude EduMipState.msg.html


(defclass edumip_msgs::EduMipState
  :super ros::object
  :slots (_setpoint_phi_dot _setpoint_gamma_dot _setpoint_phi _phi _setpoint_gamma _gamma _setpoint_theta _theta _d1_u _d3_u _dutyL _dutyR _wheel_angle_L _wheel_angle_R _body_frame_easting _body_frame_northing _body_frame_heading _vBatt _armed _running ))

(defmethod edumip_msgs::EduMipState
  (:init
   (&key
    ((:setpoint_phi_dot __setpoint_phi_dot) 0.0)
    ((:setpoint_gamma_dot __setpoint_gamma_dot) 0.0)
    ((:setpoint_phi __setpoint_phi) 0.0)
    ((:phi __phi) 0.0)
    ((:setpoint_gamma __setpoint_gamma) 0.0)
    ((:gamma __gamma) 0.0)
    ((:setpoint_theta __setpoint_theta) 0.0)
    ((:theta __theta) 0.0)
    ((:d1_u __d1_u) 0.0)
    ((:d3_u __d3_u) 0.0)
    ((:dutyL __dutyL) 0.0)
    ((:dutyR __dutyR) 0.0)
    ((:wheel_angle_L __wheel_angle_L) 0.0)
    ((:wheel_angle_R __wheel_angle_R) 0.0)
    ((:body_frame_easting __body_frame_easting) 0.0)
    ((:body_frame_northing __body_frame_northing) 0.0)
    ((:body_frame_heading __body_frame_heading) 0.0)
    ((:vBatt __vBatt) 0.0)
    ((:armed __armed) nil)
    ((:running __running) nil)
    )
   (send-super :init)
   (setq _setpoint_phi_dot (float __setpoint_phi_dot))
   (setq _setpoint_gamma_dot (float __setpoint_gamma_dot))
   (setq _setpoint_phi (float __setpoint_phi))
   (setq _phi (float __phi))
   (setq _setpoint_gamma (float __setpoint_gamma))
   (setq _gamma (float __gamma))
   (setq _setpoint_theta (float __setpoint_theta))
   (setq _theta (float __theta))
   (setq _d1_u (float __d1_u))
   (setq _d3_u (float __d3_u))
   (setq _dutyL (float __dutyL))
   (setq _dutyR (float __dutyR))
   (setq _wheel_angle_L (float __wheel_angle_L))
   (setq _wheel_angle_R (float __wheel_angle_R))
   (setq _body_frame_easting (float __body_frame_easting))
   (setq _body_frame_northing (float __body_frame_northing))
   (setq _body_frame_heading (float __body_frame_heading))
   (setq _vBatt (float __vBatt))
   (setq _armed __armed)
   (setq _running __running)
   self)
  (:setpoint_phi_dot
   (&optional __setpoint_phi_dot)
   (if __setpoint_phi_dot (setq _setpoint_phi_dot __setpoint_phi_dot)) _setpoint_phi_dot)
  (:setpoint_gamma_dot
   (&optional __setpoint_gamma_dot)
   (if __setpoint_gamma_dot (setq _setpoint_gamma_dot __setpoint_gamma_dot)) _setpoint_gamma_dot)
  (:setpoint_phi
   (&optional __setpoint_phi)
   (if __setpoint_phi (setq _setpoint_phi __setpoint_phi)) _setpoint_phi)
  (:phi
   (&optional __phi)
   (if __phi (setq _phi __phi)) _phi)
  (:setpoint_gamma
   (&optional __setpoint_gamma)
   (if __setpoint_gamma (setq _setpoint_gamma __setpoint_gamma)) _setpoint_gamma)
  (:gamma
   (&optional __gamma)
   (if __gamma (setq _gamma __gamma)) _gamma)
  (:setpoint_theta
   (&optional __setpoint_theta)
   (if __setpoint_theta (setq _setpoint_theta __setpoint_theta)) _setpoint_theta)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:d1_u
   (&optional __d1_u)
   (if __d1_u (setq _d1_u __d1_u)) _d1_u)
  (:d3_u
   (&optional __d3_u)
   (if __d3_u (setq _d3_u __d3_u)) _d3_u)
  (:dutyL
   (&optional __dutyL)
   (if __dutyL (setq _dutyL __dutyL)) _dutyL)
  (:dutyR
   (&optional __dutyR)
   (if __dutyR (setq _dutyR __dutyR)) _dutyR)
  (:wheel_angle_L
   (&optional __wheel_angle_L)
   (if __wheel_angle_L (setq _wheel_angle_L __wheel_angle_L)) _wheel_angle_L)
  (:wheel_angle_R
   (&optional __wheel_angle_R)
   (if __wheel_angle_R (setq _wheel_angle_R __wheel_angle_R)) _wheel_angle_R)
  (:body_frame_easting
   (&optional __body_frame_easting)
   (if __body_frame_easting (setq _body_frame_easting __body_frame_easting)) _body_frame_easting)
  (:body_frame_northing
   (&optional __body_frame_northing)
   (if __body_frame_northing (setq _body_frame_northing __body_frame_northing)) _body_frame_northing)
  (:body_frame_heading
   (&optional __body_frame_heading)
   (if __body_frame_heading (setq _body_frame_heading __body_frame_heading)) _body_frame_heading)
  (:vBatt
   (&optional __vBatt)
   (if __vBatt (setq _vBatt __vBatt)) _vBatt)
  (:armed
   (&optional __armed)
   (if __armed (setq _armed __armed)) _armed)
  (:running
   (&optional __running)
   (if __running (setq _running __running)) _running)
  (:serialization-length
   ()
   (+
    ;; float32 _setpoint_phi_dot
    4
    ;; float32 _setpoint_gamma_dot
    4
    ;; float32 _setpoint_phi
    4
    ;; float32 _phi
    4
    ;; float32 _setpoint_gamma
    4
    ;; float32 _gamma
    4
    ;; float32 _setpoint_theta
    4
    ;; float32 _theta
    4
    ;; float32 _d1_u
    4
    ;; float32 _d3_u
    4
    ;; float32 _dutyL
    4
    ;; float32 _dutyR
    4
    ;; float32 _wheel_angle_L
    4
    ;; float32 _wheel_angle_R
    4
    ;; float32 _body_frame_easting
    4
    ;; float32 _body_frame_northing
    4
    ;; float32 _body_frame_heading
    4
    ;; float32 _vBatt
    4
    ;; bool _armed
    1
    ;; bool _running
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _setpoint_phi_dot
       (sys::poke _setpoint_phi_dot (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _setpoint_gamma_dot
       (sys::poke _setpoint_gamma_dot (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _setpoint_phi
       (sys::poke _setpoint_phi (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _phi
       (sys::poke _phi (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _setpoint_gamma
       (sys::poke _setpoint_gamma (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gamma
       (sys::poke _gamma (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _setpoint_theta
       (sys::poke _setpoint_theta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _d1_u
       (sys::poke _d1_u (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _d3_u
       (sys::poke _d3_u (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _dutyL
       (sys::poke _dutyL (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _dutyR
       (sys::poke _dutyR (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _wheel_angle_L
       (sys::poke _wheel_angle_L (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _wheel_angle_R
       (sys::poke _wheel_angle_R (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _body_frame_easting
       (sys::poke _body_frame_easting (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _body_frame_northing
       (sys::poke _body_frame_northing (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _body_frame_heading
       (sys::poke _body_frame_heading (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vBatt
       (sys::poke _vBatt (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _armed
       (if _armed (write-byte -1 s) (write-byte 0 s))
     ;; bool _running
       (if _running (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _setpoint_phi_dot
     (setq _setpoint_phi_dot (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _setpoint_gamma_dot
     (setq _setpoint_gamma_dot (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _setpoint_phi
     (setq _setpoint_phi (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _phi
     (setq _phi (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _setpoint_gamma
     (setq _setpoint_gamma (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gamma
     (setq _gamma (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _setpoint_theta
     (setq _setpoint_theta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _theta
     (setq _theta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _d1_u
     (setq _d1_u (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _d3_u
     (setq _d3_u (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _dutyL
     (setq _dutyL (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _dutyR
     (setq _dutyR (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _wheel_angle_L
     (setq _wheel_angle_L (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _wheel_angle_R
     (setq _wheel_angle_R (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _body_frame_easting
     (setq _body_frame_easting (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _body_frame_northing
     (setq _body_frame_northing (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _body_frame_heading
     (setq _body_frame_heading (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vBatt
     (setq _vBatt (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _armed
     (setq _armed (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _running
     (setq _running (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get edumip_msgs::EduMipState :md5sum-) "d8a26db22626d6362109a0c1a1de3a6a")
(setf (get edumip_msgs::EduMipState :datatype-) "edumip_msgs/EduMipState")
(setf (get edumip_msgs::EduMipState :definition-)
      "float32 setpoint_phi_dot    # commanded average  wheel vel ~ trans vel
float32 setpoint_gamma_dot  # commanded steering angle vel ~ angualr vel
float32 setpoint_phi        # commanded average wheel pos
float32 phi                 # average wheel pos
float32 setpoint_gamma      # commanded steering angle
float32 gamma               # steering angle
float32 setpoint_theta      # commanded body tilt
float32 theta               # body tilt
float32 d1_u                # control command for balnce loop
float32 d3_u                # control command for steering loop
float32 dutyL               # left  motor duty cycle
float32 dutyR               # right motor duty cycle

# 2017-02-22 LLW Added odometry data 
float32 wheel_angle_L       # total rotation of left  wheel (radians) (+ is forward)
float32 wheel_angle_R       # total rotation of right wheel (radians) (+ is forward)
float32 body_frame_easting  # displacemnt of body frame (m) (+ is East )
float32 body_frame_northing # displacemnt of body frame (m) (+ is North)
float32 body_frame_heading  # compass heading (radians) 

float32 vBatt               # battery voltage in volts
bool    armed               # controllers are active
bool    running             # balance program is running

 
")



(provide :edumip_msgs/EduMipState "d8a26db22626d6362109a0c1a1de3a6a")


