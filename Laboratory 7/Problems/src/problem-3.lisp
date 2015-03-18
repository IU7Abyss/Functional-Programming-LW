(defun it-length (lst &aux (count 0))
  (dolist (item lst count)
    (incf count)))

(defun it-length (lst)
  (do ((sub-list lst (rest sub-list))
       (count 0 (1+ count)))
      ((null sub-list) count)))