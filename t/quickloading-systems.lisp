(in-package :cl-user)

(let ((systems '(:custodes :warno)))
  (prove:plan (length systems))
  (loop :for system :in systems
     :when
       (asdf:find-system system)
     :do
       (ql:uninstall system)
     :doing
       (prove:ok
        (ql:quickload system))))

(prove:finalize)


