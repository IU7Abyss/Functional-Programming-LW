(defun swap (lst pos1 pos2)
  "Swap two elements by pos1 and pos2"
  (declare (integer pos1 pos2))
  (let ((x (nth pos1 lst))
        (y (nth pos2 lst))
        (l (length lst)))
    (cond ((and (> l 2)
                (< 0 pos1 l)
                (< 0 pos2 l))
           (rplaca (nthcdr pos1 lst) y)
           (rplaca (nthcdr pos2 lst) x)
           lst)
          (T (format T "Something wrong")))))