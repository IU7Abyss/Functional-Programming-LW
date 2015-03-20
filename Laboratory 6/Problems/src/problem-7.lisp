(defun deep-length (lst)
  (let ((item (first lst))
        (tail (rest lst)))
    (cond ((null lst) 0)
          ((atom item) 
           (1+ (deep-length tail)))
          (t
           (+ (deep-length item)
              (deep-length tail))))))