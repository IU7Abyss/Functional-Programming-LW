(defun swap-first-last-dl2 (dlst)
  "Swap for dotted-list with copy"
  (let ((left (first dlst))
        (mid (butlast (rest dlst) 0))
        (right (last dlst 0)))
    (if (consp dlst) 
      `(,right ,@mid . ,left)
      Nil)))
 
(defun swap-first-last-l2 (lst)
  "Swap for dotted-list with copy"
  (let ((left (first lst))
        (mid (butlast (rest lst)))
        (right (car (last lst))))
    (if (consp lst) 
      `(,right ,@mid ,left)
      Nil)))

(defun swap-first-last2 (lst)
  "Smart swap"
  (cond ((not (consp (rest lst))) `(,(cdr lst) . ,(car lst)))
        ((last lst 0) (swap-first-last-dl2 lst))
        (T (swap-first-last-l2 lst))))