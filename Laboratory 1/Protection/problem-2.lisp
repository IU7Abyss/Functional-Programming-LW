;;; Реализовать функцию, представить в виде списочных ячеек
(defun f1 (arg1 arg2 arg3 arg4 arg5 arg6) 
    (list arg1 
          (list (list arg2)) 
          (list arg4) 
          (list arg6) 
          (list arg5) 
          arg3))

;;; С помощью backquote
(defun f2 (arg1 arg2 arg3 arg4 arg5 arg6)
    `(,arg1 ((,arg2)) (,arg4) (,arg6) (,arg5) ,arg3))