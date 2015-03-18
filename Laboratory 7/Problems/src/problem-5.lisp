(defun it-reverse (l)
  (let ((result nil))
    (dolist (item l result)
      (push item result))))