(defun sqr (arg)
    (* arg arg))

(defun problem-2-3 (leg hypotenuse)
    (sqrt (- (sqr hypotenuse)
             (sqr leg))))