(defun mask-in (element set)
  (mapcar #'(lambda (_element)
        (if (equal element _element) 1 0))
      set))

(defun in-set? (element set)
  (if (> (reduce #'+ (mask-in element set))
       0)
    t
    nil))

(defun just-numbers (list set)
  (let ((item (first list))
        (tail (rest list)))
    (cond ((null list) nil)
          ((listp item) 
           (nconc (just-numbers item set)
                  (just-numbers tail set)))
          ((not (numberp item)) 
                (just-numbers tail set))
          (t
           (if (in-set? item set)
               (cons item (just-numbers tail set))
               (just-numbers tail set))))))
    
(defun quicksort (list &aux (pivot (first list)))
  (if (rest list)
      (nconc (quicksort (remove-if-not #'(lambda (x) (< x pivot)) list))
             (remove-if-not #'(lambda (x) (= x pivot)) list)
             (quicksort (remove-if-not #'(lambda (x) (> x pivot)) list)))
      list))
    
(defun sort-numbers-in-set (list set)
  (quicksort (just-numbers list set)))