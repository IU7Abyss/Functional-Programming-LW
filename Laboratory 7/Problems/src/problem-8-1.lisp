(defun dolist-first-not-number (l)
  (dolist (item l)
    (when (not (numberp item))
      (return item))))