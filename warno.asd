;;;; <https://gist.github.com/quicklisp/d58633b3f42172aa7485c6508b7a31e3>
;;;; warno.asd

(asdf:defsystem #:warno
  :serial t
  :depends-on (#:zs3)
  :components ((:file "warno")))


;;;; warno.lisp

(defpackage #:warno
  (:use #:cl))

(in-package #:warno)

(defun blorp ())

(defun blorp ())

;;;; Make these known to ASDF, then (ql:quickload "warno").
;;;;
;;;; IDEAL output should be quiet loading of ZS3 (which has many
;;;; prerequisites itself) followed by verbose loading, full WARNING,
;;;; and ASDF failure into the debugger.
;;;;
;;;; ACTUAL output is quiet loading of everything despite the
;;;; duplicate function problem.
