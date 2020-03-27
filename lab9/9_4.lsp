(defun minus_ten (lst)
  (mapcar #'(lambda (x) (if (numberp x) (- x 10) x)) lst)
)

(defun minus_ten_rec (lst)
  (if lst
    (cons
      (if (numberp (car lst)) (- (car lst) 10) (car lst))
      (minus_ten_rec (cdr lst))
    )
  )
)

(write (minus_ten '(1 2 a 3)))
(terpri)
(write (minus_ten_rec '(1 2 a 3)))
