(when (asdf:find-system :prove)
  (ql:uninstall :prove))

(ql:quickload :disprove)
