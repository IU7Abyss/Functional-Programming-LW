(defun it-reverse (lst &aux (result nil))
  (dolist (item lst result)
    (push item result))))