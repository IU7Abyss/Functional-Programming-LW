(defun alloddp (lst) (
  cond
    ((null lst) T)
    ((evenp (car lst)) nil)
    (T 
      (alloddp (rest lst))
    )
))