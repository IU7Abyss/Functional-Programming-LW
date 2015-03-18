(defun rec-add (lst) (
  cond 
    ((null lst) '0)
    (T 
      (+ (car lst) (rec-add (cdr lst))) 
    )  
))