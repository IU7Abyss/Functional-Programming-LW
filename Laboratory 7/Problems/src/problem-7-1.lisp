(defun dolist-max (lst &aux (result (first lst)))
  (dolist (item lst result)
    (when (> item result)
      (setf result item))))