(defun swap-first-last-dl1 (dl)
  "Swap for dotted-list"
  (let ((t-first (car dl))
        (t-last (last dl 0)))
    (cond 
      ((consp dl) (rplaca dl t-last)
                    (rplacd (last dl) t-first)
                    dl)
      (t nil))))
    
(defun swap-first-last-l1 (l)
  "Swap for list"
  (let ((t-first (car l))
        (t-last (car (last l))))
    (cond 
      ((consp l) (rplaca l t-last)
                 (rplacd (last l 2) `(,t-first))
                 l)
      (t nil))))

(defun swap-first-last1 (l)
  "Smart swap"
  (cond 
    ((last l 0) (swap-first-last-dl1 l))
    (t (swap-first-last-l1 l))))