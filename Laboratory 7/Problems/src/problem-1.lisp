(defun memberp (x lst)
  (dolist (item lst)
    (when (equal x item)
      (return t))))