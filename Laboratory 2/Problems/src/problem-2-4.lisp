(defun trapezoid-area (parallel-side1 parallel-side2 height)
	"Area of trapezoid is calculated by 2 parallel sides and height"
	(*
		0.5
		(+ parallel-side1 parallel-side2)
		height))