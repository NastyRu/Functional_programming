(defun pred1 (x)
  (and (numberp x) (plusp x)))

(defun pred2 (x)
  (and (plusp x) (numberp x)))

(write (pred1 '(1 2 3)))
(terpri)
(write (pred2 'a))
