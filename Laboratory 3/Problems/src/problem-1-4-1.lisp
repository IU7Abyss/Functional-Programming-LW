(defun problem-1-4 (arg1 arg2 arg3)
	(or
		(and (< arg2 arg1) (< arg1 arg3))
		(and (< arg3 arg1) (< arg1 arg2))))