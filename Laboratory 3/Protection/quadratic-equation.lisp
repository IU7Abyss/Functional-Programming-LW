(defun sqr (arg)
  (* arg 
     arg))

(defun discriminant (a b c)
  (- (sqr b)
     (* 4 a c)))

(defun root-1 (a b d)
  (/ (- (- b) (sqrt d))
     (* 2 a)))

(defun root-2 (a b d)
  (/ (- (sqrt d) b)
     (* 2 a)))

(defun quadratic-equation (a b c)
  (declare (real a b c))
  (cond ((and (zerop a) (zerop b) (zerop c))
         (string "is not quadratic equation"))
        ((and (zerop a) (zerop b))
         (string "infinty roots"))
        ((zerop a)
         (format T "just one root:~%x = ~5,2F" (/ (- c) b)))
        (T
         (let ((d (discriminant a b c)))
           (format T "D = ~5,2F~%" d)
           (cond ((minusp d)
                  (format T "no roots"))
                 ((zerop d)
                  (format T "one root:~% x = ~5,2F" (root-1 a b 0)))
                 ((plusp d)
                  (format T "two roots:~% x1 = ~5,2F ~% x2 = ~5,2F" (root-1 a b d) (root-2 a b d))))))))