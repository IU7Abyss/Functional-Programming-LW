(defun problem-1-1 (arg)
	"Return arg if even else arg+1"
	(if (evenp arg)
		arg
		(+ 1 arg)))