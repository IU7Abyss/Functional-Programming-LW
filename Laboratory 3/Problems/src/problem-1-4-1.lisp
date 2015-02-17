(defun problem-1-4-1 (arg1 arg2 arg3)
	"if arg1 between arg2, arg3 then true"
	(equal 
		arg1 
		(second (sort (list arg1 arg2 arg3) #'<))))