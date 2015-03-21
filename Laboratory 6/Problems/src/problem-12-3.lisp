(defun sum-with>=0 (lst)
  (let ((item (first lst))
        (tail (rest lst)))
    (cond ((or (null lst) (< item 0)) 0)
          (t (+ item 
                (sum-with>=0 tail))))))

(defun sum-from (lst n)
  (declare (fixnum n))
  (let ((tail (rest lst)))
    (cond ((null lst) 0)
          ((> n 0) 
           (sum-from tail (1- n)))
          (t (sum-with>=0 lst)))))