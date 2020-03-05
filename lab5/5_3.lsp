(defun less_big (a b)
  (if (< a b) (list a b) (list b a)) )

(write (less_big 10 5))
