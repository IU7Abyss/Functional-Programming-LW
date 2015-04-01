(defun custom-last (lst)
  (let ((item (first lst))
        (tail (rest lst)))
    (cond ((null tail) item)
          (t (custom-last tail)))))