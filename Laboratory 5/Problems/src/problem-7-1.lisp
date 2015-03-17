(defun multiply-by (l k)
  "Multiply list of numbers by k"
  (declare (fixnum k))
  (mapcar #'(lambda (_x) (* _x k))
          l))