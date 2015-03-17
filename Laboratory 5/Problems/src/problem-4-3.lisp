(defun rm (fn l &key from-end)
  (funcall fn 
           #'(lambda (x) 
               (or (equal x (car l))
                   (equal x (car (last l))))) 
           l 
           :count 1
           :from-end from-end))

(defun swap-first-last3 (l)
  "Swap but dotted-list"
  (cond 
    ((< (length l) 2) l)
    (T `(,(car (last l)) 
        ,@(rm #'remove-if (rm #'remove-if l) :from-end T)
        ,(first l)))))