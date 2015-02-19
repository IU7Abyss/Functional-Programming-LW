(defun is-first-between1 (arg1 arg2 arg3)
    (equal arg1 
           (second (sort (list arg1 arg2 arg3) 
                         #'<))))