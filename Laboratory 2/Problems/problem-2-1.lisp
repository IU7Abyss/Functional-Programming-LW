(defun sqr (arg)
	(* arg arg))

(defun hypotenuse-rect-triangle (leg1 leg2)
	(sqrt 
		(+ 
			(sqr leg1) 
			(sqr leg2))))