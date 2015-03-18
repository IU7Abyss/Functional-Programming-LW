(defun memberp (elt lst)
  (dolist (item lst)
    (when (equal item elt)
      (return t))))