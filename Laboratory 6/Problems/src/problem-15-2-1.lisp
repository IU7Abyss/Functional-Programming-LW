(defun select-even (lst)
  (remove-if-not #'evenp
                 (remove-if-not #'numberp lst)))

(defun sum-all-even (lst)
  (reduce #'+ (select-even lst)))