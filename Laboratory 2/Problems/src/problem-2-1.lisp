(defun sqr (arg)
    (* arg arg))

(defun hypotenuse-rect-triangle (leg1 leg2)
    "By Pythagorean theorem"
    (sqrt 
        (+ (sqr leg1) 
           (sqr leg2))))