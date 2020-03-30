(defun recnth_next(lst k)
  (cond
    ((= k (length lst)) (car lst))
    (t (recnth_next (cdr lst) k))
  )
)

(defun recnth(lst k)
  (cond
    ((> k (length lst)) Nil)
    ((< k 1) Nil)
    (t (recnth_next lst (+ 1 (- (length lst) k))))
  )
)

(write (recnth '(1 (2 1) (3 4 5) 4 5) 3))
