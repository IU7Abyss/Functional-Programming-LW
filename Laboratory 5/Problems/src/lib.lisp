(defun pos-element-in-list (element l)
  "Return mask where the element in the set"
  (mapcar #'(lambda (x)
              (if (equal element x) 1 0)) 
          l))

(defun c-count (element l)
  (let ((mask (pos-element-in-list element l)))
    (reduce #'+ mask)))

(defun in-list (element l)
  "Return T if the element in the list"
  (let* ((bits (pos-element-in-list element l))
         (i (c-count 1 bits)))
    (declare (fixnum i))
    (< 0 i)))

(defun not-in-list (element l)
  "Return T if the element not in the list"
  (not (in-list element l)))

(defun symbol-or-listp (arg)
  (or (symbolp arg)
      (listp arg)))

(defun c-list-length (l)
  (let ((bits (mapcar #'symbol-or-listp l)))
    (c-count t bits)))

(defun _c-reverse (l)
  (let ((buf (list nil)))
    (mapcar #'(lambda (_element)
                (push _element (first buf)))
            l)
    (car buf)))

(defun c-reverse (l)
  (let ((len (c-list-length l)))
    (cond
      ((< len 2) l)
      (t (_c-reverse l)))))