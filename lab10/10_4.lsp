(defun alloddr(lst)
  (if lst
    (and (oddp (car lst)) (alloddr (cdr lst)))
    t
  )
)

(write (alloddr '(1 3 5 7 9)))
