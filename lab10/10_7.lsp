(defun square (lst)
  (if lst
    (cons
      (* (car lst) (car lst))
      (square (cdr lst))
    )
  )
)

(write (square '(1 -2 3 4 5)))
