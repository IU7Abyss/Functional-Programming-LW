(defun sum-to-with-step (lst to-arg step)
  (declare (fixnum to-arg step))
  (let ((item (first lst))
        (tail (nthcdr step lst)))
    (cond ((or (null lst) (< to-arg 0)) 0)
          (t (+ item
                (sum-to-with-step tail
                                  (- to-arg step)
                                  step))))))

(defun sum-from-to-with-step (lst from-arg to-arg step)
  (declare (fixnum from-arg to-arg step))
  (let ((tail (rest lst)))
    (cond ((null lst) 0)
          ((> from-arg 0) 
           (sum-from-to-with-step tail 
                                  (1- from-arg) 
                                  (1- to-arg)
                                  step))
          (t (sum-to-with-step lst
                               to-arg
                               step)))))