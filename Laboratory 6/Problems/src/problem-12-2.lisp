(defun f12_2 (n m d) (
  cond
    ((= n m) 0)
    ((> n m) (- n d))
    (T
      (+ n (f12_2 (+ n d) m d))
    )
))