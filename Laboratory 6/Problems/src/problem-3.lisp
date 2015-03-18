(defun f3 (lst) 
  (nth 0 
       (remove-if-not 
          #'(lambda (x) 
              (and (listp x) (not (null x))))  
          lst)))