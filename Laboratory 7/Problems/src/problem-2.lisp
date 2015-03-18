(defun it-assoc (key table)
  (dolist (entry table)
    (when (equal key (first entry))
      (return entry))))