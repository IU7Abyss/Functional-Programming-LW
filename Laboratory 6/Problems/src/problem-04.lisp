(defun between (lst left right)
  "Return new list with numbers between left and right"
  (let ((item (first lst))
        (tail (rest lst)))
    (cond ((null lst) nil)
          ((listp item)
           (nconc (between item left right)
                  (between tail left right)))
          ((and (numberp item) (< left item right))
           (cons item
                 (between tail left right)))
          (t (between tail left right)))))

(defun 1<x<10 (lst)
  (between lst 1 10))