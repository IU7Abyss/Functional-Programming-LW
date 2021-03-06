(defun square (lst)
  (let ((item (first lst))
        (tail (rest lst)))
    (cond ((null lst) nil)
          ((consp item)
           (cons (square item)
                 (square tail)))
           (t 
            (cons (* item item)
                  (square tail))))))