(defun f12_1 (n) (
  cond
    ((zerop n) 0)
    (T
      (+ n (f12_1 (- n 1)))
    )
))