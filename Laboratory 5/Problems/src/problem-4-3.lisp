(defun rm (fn lst &key from-end)
  (funcall fn #'(lambda (x) (or (equal x (car lst))
                                (equal x (car (last lst))))) 
              lst 
              :count 1
              :from-end from-end))

(defun swap-first-last3 (lst)
  "Swap but dotted-list"
  (cond ((= (length lst) 1) lst)
        (T `(,(car (last lst)) 
             ,@(t1 #'remove-if (t1 #'remove-if lst) :from-end T)
             ,(first lst)))))