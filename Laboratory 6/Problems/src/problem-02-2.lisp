(defun smart-deep-sub (lst coef)
  (let ((item (first lst))
        (tail (rest lst)))
    (cond ((null lst) nil)
          ((numberp item)
           (cons (- item coef)
                 (smart-deep-sub tail coef)))
          ((listp item)
           (cons (smart-deep-sub item coef)
                 (smart-deep-sub tail coef)))
          (t
           (cons item
                 (smart-deep-sub tail coef))))))