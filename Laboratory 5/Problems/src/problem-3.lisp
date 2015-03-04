(setf test-table '((country1 . city1) 
				   (country2 . city2) 
				   (country3 . city3) 
				   (country4 . city4) 
				   (country5 . city5)))

(defun get-city (country table)
  (rest (find-if #'(lambda (x) (equal (first x) country)) 
                 table)))

(defun get-country (city table)
  (first (find-if #'(lambda (x) (equal (rest x) city)) 
                  table)))