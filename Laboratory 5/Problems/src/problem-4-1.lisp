(defun swap-first-last-dl1 (dlst)
  "Swap for dotted-list"
  (let ((t-first (car dlst))
        (t-last (last dlst 0)))
    (cond ((consp dlst) (rplaca dlst t-last)
                        (rplacd (last dlst) t-first)
                        dlst)
          (T Nil))))
    
(defun swap-first-last-l1 (lst)
  "Swap for list"
  (let ((t-first (car lst))
        (t-last (car (last lst))))
    (cond ((consp lst) (rplaca lst t-last)
                       (rplacd (last lst 2) `(,t-first))
                       lst)
          (T Nil))))

(defun swap-first-last1 (lst)
  "Smart swap"
  (cond ((last lst 0) (swap-first-last-dl lst))
        (T (swap-first-last-l lst))))