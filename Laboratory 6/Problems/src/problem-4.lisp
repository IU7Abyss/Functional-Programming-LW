(defun between (lst left right)
  (let ((item (first lst))
        (tail (rest lst)))
    (cond ((null item) nil)
          ((numberp item)
           (cond ((<= left item right) ; to another function
                  (cons item
                        (between tail left right)))
                 (t
                  (between tail left right))))
          ((listp item)
           (append (between item left right)
                   (between tail left right))))))