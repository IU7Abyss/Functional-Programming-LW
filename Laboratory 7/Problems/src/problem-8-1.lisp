(defun dolist-first-not-number (lst)
  (dolist (item lst)
    (when (not (numberp item))
      (return item))))