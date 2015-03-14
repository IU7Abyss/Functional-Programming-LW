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

(defun symbol-or-listp (arg)
  (or (symbolp arg)
      (listp arg)))

(defun c-list-length (lst)
  (let ((bits (mapcar #'symbol-or-listp lst)))
    (c-count t bits)))