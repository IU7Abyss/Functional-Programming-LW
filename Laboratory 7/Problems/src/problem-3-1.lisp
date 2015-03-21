(defun it-length-dolist (lst &aux (count 0))
  (dolist (item lst count)
    (incf count)))