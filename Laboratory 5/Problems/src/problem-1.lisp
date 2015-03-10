(defun palindromep (lst)
  (equal lst
         (reverse lst)))

(defun problem-1 (lst)
  (mapcar #'palindromep lst))