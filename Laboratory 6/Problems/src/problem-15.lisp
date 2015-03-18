(defun select-odd (lst) (
  cond 
    ((null lst) nil) 
    ((oddp (car lst)) (cons (car lst) (select-odd (cdr lst)))) 
    (T 
      (select-odd (cdr lst)) 
    )      
))

(defun sum-all-odd (lst) (
  reduce #'+ (select-odd lst)     
))