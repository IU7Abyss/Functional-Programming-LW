(defun first-odd (lst)
  (let ((item (first lst))
        (tail (rest lst)))
    (cond ((null lst) nil)
          ((oddp item) item)
          (t (first-odd tail)))))

(defun last-odd (lst)
  (first-odd (reverse lst)))