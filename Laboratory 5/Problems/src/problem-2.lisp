(defun c-count (element lst)
  "Return number of elements in the list"
  (let ((i 0))
    (declare (fixnum i))
    (mapcar #'(lambda (_x) 
                (and (equal element _x) 
                     (setq i (1+ i))))
            lst)
    i))

(defun pos-element-in-list (element lst)
  "Return mask where the element in the set"
  (mapcar #'(lambda (x)
              (and (equal element x) 1)) 
          lst))

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

(defun _set-equalp (set1 set2)
  "Internal for set-equalp without validation"
  (let ((test t))
    (mapcar #'(lambda (_element)
                (if (not-in-list _element set2)
                    (setq test nil)))
            set1)
    test))

(defun set-equalp (set1 set2)
  "Test on equal of sets"
  (let* ((normal-set1 (normalize-set set1))
         (normal-set2 (normalize-set set2))
         (length-set1 (length normal-set1))
         (length-set2 (length normal-set2)))
    (cond 
      ((/= length-set1 length-set2) nil)
      (t (_set-equalp normal-set1 normal-set1)))))