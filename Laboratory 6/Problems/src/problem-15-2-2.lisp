(defun select-even-rec (lst)
  (let ((item (first lst))
        (tail (rest lst)))
    (cond ((null lst) nil)
          ((consp item)
           (nconc (select-even-rec item)
                  (select-even-rec tail)))
          ((and (numberp item) (evenp item))
           (cons item
                 (select-even-rec tail)))
          (t (select-even-rec tail)))))

(defun sum-all-even-rec (lst)
  (reduce #'+ (select-even-rec lst)))