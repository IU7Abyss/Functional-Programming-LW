(defun f4 (lst left right) (
  remove-if #'(lambda (x) (
    or (<= x left) (>= x right) 
  )) 
  lst     
))