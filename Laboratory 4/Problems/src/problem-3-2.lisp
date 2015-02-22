(defun problem-3-2-1 (arg)
    (reverse (cdr (reverse arg))))

(defun problem-3-2-2 (arg)
    (reverse (rest (reverse arg))))

(defun problem-3-2-3 (arg)
    (butlast arg))