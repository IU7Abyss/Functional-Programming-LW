(defun palindromep (l)
  (equal l
         (c-reverse l)))

(defun is-palindromes (l)
  (mapcar #'palindromep l))