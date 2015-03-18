(defun it-union (x y &aux (result (copy-list x)))
  (dolist (item y result)
    (if (not (member item result))
        (push item result))))

(defun it-complement (x y &aux (result nil))
  (dolist (item x result)
    (when (not (member item y))
      (push item result))))

(defun it-symmetric-difference (x y)
  (it-union (it-complement x y) (it-complement y x)))