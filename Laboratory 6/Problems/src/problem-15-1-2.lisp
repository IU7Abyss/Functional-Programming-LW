(defun select-odd-rec (lst)
  (let ((item (first lst))
        (tail (rest lst)))
    (cond ((null lst) nil)
          ((consp item)
           (nconc (select-odd-rec item)
                  (select-odd-rec tail)))
          ((and (numberp item) (oddp item))
           (cons item
                 (select-odd-rec tail)))
          (t (select-odd-rec tail)))))

(defun sum-all-odd-rec (lst)
  (reduce #'+ (select-odd-rec lst)))