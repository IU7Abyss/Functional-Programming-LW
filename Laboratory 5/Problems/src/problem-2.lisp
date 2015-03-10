(defun subset-mask (set1 set2)
  (mapcar #'(lambda (x)
              (let ((bits (mapcar #'(lambda (y) (and (equal x y) 1)) set2)))
                (find-if #'(lambda (z) (numberp z)) bits)))
          set1))

(defun set-equalp (set1 set2)
  (= (length (remove-if-not #'numberp (subset-mask set1 set2)))
     (length set1)))