(defun f5 (A B) (
  apply 'append
  (
    mapcar #'(lambda (A) (
      mapcar #'(lambda (B) ( 
        list A B
      )) 
      B
    ))
    A
  )
))