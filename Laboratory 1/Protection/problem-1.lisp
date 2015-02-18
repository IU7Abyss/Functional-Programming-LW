;;; Реализовать функцию, представить в виде списочных ячеек
(defun magic-list1 (arg1 arg2 arg3 arg4 arg5)
    (list arg1 
          (list arg2 
                (list arg3 
                      (list arg4) 
                      (list arg5)))))

;;; С помощью backquote
(defun magic-list2 (arg1 arg2 arg3 arg4 arg5)
    `(,arg1 (,arg2 (,arg3 (,arg4) (,arg5)))))