(defun how_alike (x y)
  (cond ((or (= x y) (equal x y)) 'the_same)
        ((and (oddp x) (oddp y)) 'both_odd)
        ((and (evenp x) (evenp y)) 'both_even)
        (T 'difference)) )

(defun how_alike_if (x y)
  (if (or (= x y) (equal x y)) 'the_same
        (if (and (oddp x) (oddp y)) 'both_odd
        (if (and (evenp x) (evenp y)) 'both_even 'difference))) )

(write (how_alike 1 3))
(terpri)
(write (how_alike_if 1 3))
