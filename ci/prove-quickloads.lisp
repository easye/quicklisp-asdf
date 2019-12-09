(ql:quickload :prove)

(prove:run
 (asdf:system-relative-pathname
  :quicklisp-asdf
  "t/quickloading-systems.lisp"))


