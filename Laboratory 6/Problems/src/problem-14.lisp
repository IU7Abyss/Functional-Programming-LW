(defun f14 (lst) (
  cond
    ((null lst) nil)
    (T
      (cons
        (* (first lst) (first lst))
        (f14 (rest lst))
      )
    )
))