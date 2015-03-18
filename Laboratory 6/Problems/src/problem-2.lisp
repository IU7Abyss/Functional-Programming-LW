(defun sub-by-10 (l) 
  (mapcar #'(lambda (n) (- n 10)) 
          l))