
(cl:in-package :asdf)

(defsystem "rt_gene-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "MSG_SubjectImages" :depends-on ("_package_MSG_SubjectImages"))
    (:file "_package_MSG_SubjectImages" :depends-on ("_package"))
    (:file "MSG_SubjectImagesList" :depends-on ("_package_MSG_SubjectImagesList"))
    (:file "_package_MSG_SubjectImagesList" :depends-on ("_package"))
  ))