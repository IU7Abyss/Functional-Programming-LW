(defun recursive-first-not-number (lst &aux (item (first lst))) 
  (cond ((null lst) nil)
        ((not (numberp item)) item)
        (t (recursive-first-not-number (rest lst)))))