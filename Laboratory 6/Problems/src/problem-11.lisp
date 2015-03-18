(defun f11 (lst) (
  cond 
    ((null lst) nil)
    ((= (length lst) 1) (car lst))
    (T
      (f11 (rest lst))
    )
))