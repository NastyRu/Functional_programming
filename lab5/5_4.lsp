(defun between (a b c)
  (if (or (and (> a b) (< a c)) (and (< a b) (> a c))) T Nil) )

(write (between 6 1 8))
