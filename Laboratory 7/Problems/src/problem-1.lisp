(defun memberp (el l)
  (dolist (i l)
    (when (equal i el)
      (return t))))