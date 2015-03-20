(defun between (lst left right)
  "Return new list with numbers between left and right"
  (let ((item (first lst))
        (tail (rest lst)))
    (cond ((null item) nil)
          ((numberp item)
           (cond ((<= left item right)
                  (cons item
                        (between tail left right)))
                 (t
                  (between tail left right))))
          ((listp item)
           (nconc (between item left right)
                  (between tail left right))))))