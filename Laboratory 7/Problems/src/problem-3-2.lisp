(defun it-length-do (lst)
  (do ((sub-list lst (rest sub-list))
       (count 0 (1+ count)))
      ((null sub-list) count)))