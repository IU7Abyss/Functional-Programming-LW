(defun it-nth (n lst)
  (declare (fixnum n))
  (if (>= n 0)
      (do ((sub-list lst (rest sub-list))
           (index 0 (1+ index)))
          ((= index n) (first sub-list)))))