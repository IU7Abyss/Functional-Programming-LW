(defun do-first-not-number (l)
  (do* ((sub-l l (rest sub-l))
        (item (first sub-l) (first sub-l)))
       ((or (null sub-l) (not (numberp item))) item)))