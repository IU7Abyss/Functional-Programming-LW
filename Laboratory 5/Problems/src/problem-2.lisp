(defun pos-element-in-list (element lst)
  "Return mask where the element in the set"
  (mapcar #'(lambda (x)
              (if (equal element x) 1 0)) 
          lst))

(defun c-count (element lst)
  (let ((mask (pos-element-in-list element lst)))
    (reduce #'+ mask)))

(defun in-list (element lst)
  "Return T if the element in the list"
  (let* ((bits (pos-element-in-list element lst))
         (i (c-count 1 bits)))
    (declare (fixnum i))
    (< 0 i)))

(defun not-in-list (element lst)
  "Return T if the element not in the list"
  (not (in-list element lst)))

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

(defun is-elements-in-set (set1 set2)
  "Return mask of positions"
  (mapcar #'(lambda (_element) 
                      (if (in-list _element set2) 1 0))
          set1))

(defun _set-equalp (set1 set2)
  "Internal for set-equalp without validation"
  (let ((mask (mapcar #'(lambda (_element) 
                          (if (in-list _element set2) 1 0))
                      set1)))
    (format t "~a, ~a" (c-count 1 mask) (length set2))
    (eql (c-count 1 mask) (length set2))))

(defun set-equalp (set1 set2)
  "Test on equal of sets"
  (let* ((normal-set1 (normalize-set set1))
         (normal-set2 (normalize-set set2))
         (length-set1 (length normal-set1))
         (length-set2 (length normal-set2)))
    (declare (fixnum length-set1 length-set2))
    (cond 
      ((/= length-set1 length-set2) nil)
      (t (_set-equalp normal-set1 normal-set2)))))