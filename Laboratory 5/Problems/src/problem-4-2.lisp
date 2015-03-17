(defun swap-first-last-dl2 (dl)
  "Swap for dotted-list with copy"
  (let ((left (first dl))
        (mid (butlast (rest dl) 0))
        (right (last dl 0)))
    (if (consp dl) 
        `(,right ,@mid . ,left)
        nil)))
 
(defun swap-first-last-l2 (l)
  "Swap for dotted-list with copy"
  (let ((left (first l))
        (mid (butlast (rest l)))
        (right (car (last l))))
    (if (consp l) 
        `(,right ,@mid ,left)
        nil)))

(defun swap-first-last2 (l)
  "Smart swap"
  (cond 
    ((not (consp (rest l))) `(,(cdr l) . ,(car l)))
    ((last l 0) (swap-first-last-dl2 l))
    (T (swap-first-last-l2 l))))