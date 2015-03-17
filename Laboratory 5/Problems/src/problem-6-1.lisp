(defun cycle-shift-left (l)
  "Cycle shift list to left"
  (let ((f (first l)))
    (maplist #'(lambda (_x)
                 (rplaca _x (second _x)))
             l)
    (rplaca (last l) f)
    l))