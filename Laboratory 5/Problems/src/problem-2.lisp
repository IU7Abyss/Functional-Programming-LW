(defun _normalize-set (set)
  "Return new normalized set"
  (let ((result-set `(,(first set))))
    (mapcar #'(lambda (_element)
                (if (not-in-list _element result-set)
                    (rplacd (last result-set) `(,_element))))
            set)
    result-set))

(defun normalize-set (set)
  "Some condition before run normalize-set"
  (cond
    ((null set) nil)
    (t (_normalize-set set))))

(defun mask-elements-in-set (set1 set2)
  "Return mask of positions"
  (mapcar #'(lambda (_element) 
                      (if (in-list _element set2) 1 0))
          set1))

(defun _set-equalp (set1 set2)
  "Internal for set-equalp without validation"
  (let ((mask (mask-elements-in-set set1 set2)))
    (eql (c-count 1 mask) (c-list-length set2))))

(defun set-equalp (set1 set2)
  "Test on equal of sets"
  (let* ((normal-set1 (normalize-set set1))
         (normal-set2 (normalize-set set2))
         (length-set1 (c-list-length normal-set1))
         (length-set2 (c-list-length normal-set2)))
    (declare (fixnum length-set1 length-set2))
    (cond 
      ((/= length-set1 length-set2) nil)
      (t (_set-equalp normal-set1 normal-set2)))))