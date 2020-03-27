(defun multiplication_numbers (lst k)
  (mapcar #'(lambda (x) (* x k)) lst)
)

(defun multiplication_all (lst k)
  (mapcar #'(lambda (x) (if (numberp x) (* x k) x)) lst)
)

(defun mul_numbers_rec (lst k)
  (if lst
    (cons (* (car lst) k) (mul_numbers_rec (cdr lst) k))
  )
)

(defun mul_all_rec (lst k)
  (if lst
    (cons
      (if (numberp (car lst)) (* (car lst) k) (car lst))
      (mul_all_rec (cdr lst) k)
    )
  )
)

(write (mul_numbers_rec '(1 2 3) 10))
(write (multiplication_all '(1 2 a 3) 10))
