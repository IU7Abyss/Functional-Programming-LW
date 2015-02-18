(defun geqp (arg1 arg2)
    (and (numberp arg1) 
         (numberp arg2)
         (>= arg1 arg2)))