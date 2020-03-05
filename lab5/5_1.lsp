(defun even_first (a)
  (if (= (rem a 2) 0) a (+ a 1)) )

(write (even_first 4))
