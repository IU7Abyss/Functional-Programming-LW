(defun recursive-first-not-number (l) 
  (let ((item (first l)))
    (cond
      ((null l) nil)
      ((not (numberp item)) item)
      (t (recursive-first-not-number (rest l))))))