(defun rec-nth (lst n) (
  cond 
    ((null lst) nil)
    ((= n 1) (car lst)) 
    (T 
      (rec-nth (cdr lst) (- n 1)) 
    )  
))