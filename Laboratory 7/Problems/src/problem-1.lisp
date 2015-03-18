(defun memberp (el l)
  (dolist (i l)
    (if (equal i el)
      (return t))))