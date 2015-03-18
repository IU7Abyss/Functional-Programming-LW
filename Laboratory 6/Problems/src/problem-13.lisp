(defun f13 (lst &optional (rez nil)) (
  cond 
    ((null lst) rez) 
    ((oddp (car lst)) (f13 (cdr lst) (car lst))) 
    (T 
      (f13 (cdr lst) rez)
    ) 
))