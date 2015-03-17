(defun smart-multiply-by (l k)
  "Smart multiply list of numbers by k"
  (declare (fixnum k))
  (mapcar #'(lambda (_x)
              (if (numberp _x) 
                  (* _x k)
                  _x))
          l))