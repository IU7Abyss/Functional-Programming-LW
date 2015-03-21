(defun f3 (lst) 
  (nth 0 
       (remove-if-not 
          #'(lambda (x) 
              (and (listp x) (not (null x))))  
          lst)))

(defun f3 (lst) (
  cond
    ((null lst) nil)
    ((atom (car lst)) (f3 (cdr lst) ))
    (T (car lst))
))