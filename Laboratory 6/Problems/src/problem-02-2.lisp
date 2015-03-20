(defun smart-deep-sub (lst coef)
  (let ((item (first lst))
        (tail (rest lst)))
    (cond ((null item) nil)
          ((numberp item)
           (cons (- item coef)
                 (smart-deep-sub tail)))
          ((listp item)
           (cons (smart-deep-sub item)
                 (smart-deep-sub tail)))
          (t
           (cons item
                 (smart-deep-sub tail))))))