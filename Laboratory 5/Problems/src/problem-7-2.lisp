(defun smart-multiply-by (lst coef)
  (let ((item (first lst))
        (tail (rest lst)))
    (cond ((null lst) nil)
          ((numberp item)
           (cons (* item coef)
                 (smart-multiply-by tail coef)))
          ((listp item) 
           (cons (smart-multiply-by item coef)
                 (smart-multiply-by tail coef)))
          (t 
           (cons item
                 (smart-multiply-by tail coef))))))