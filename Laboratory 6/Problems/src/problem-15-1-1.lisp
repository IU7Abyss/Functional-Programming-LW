(defun select-odd (lst)
  (remove-if-not #'oddp
                 (remove-if-not #'numberp lst)))

(defun sum-all-odd (lst)
  (reduce #'+ (select-odd lst)))