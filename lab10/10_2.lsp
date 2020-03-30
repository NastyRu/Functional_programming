(defun rec-add(lst)
  (if lst
    (+ (car lst) (rec-add (cdr lst)))
    0
  )
)

(write (rec-add '(1 2 3 4 5)))
