;;;; <https://gist.github.com/quicklisp/d58633b3f42172aa7485c6508b7a31e3>
;;;; warno.asd

(asdf:defsystem #:warno
  :serial t
  :depends-on (#:zs3)
  :components ((:file "warno")))

