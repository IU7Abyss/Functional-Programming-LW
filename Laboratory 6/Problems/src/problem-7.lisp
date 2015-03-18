(defun f7 (list-of-list) (
  reduce #'+ 
  (
    mapcar #'length list-of-list
  )
))