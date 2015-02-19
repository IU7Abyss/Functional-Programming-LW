(defun how-alike-if (arg1 arg2)
    (if (or (= arg1 arg2) (equal arg1 arg2)) `the_same
        (if (and (oddp arg1) (oddp arg2)) `both_odd
            (if (and (evenp arg1) (evenp arg2)) `both_even
                `difference))))