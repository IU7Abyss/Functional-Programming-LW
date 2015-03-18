(defun palindromep (lst)
  (equal lst
         (c-reverse lst)))

(defun is-palindromes (lst)
  (mapcar #'palindromep lst))