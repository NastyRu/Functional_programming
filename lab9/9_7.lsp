(defun decart (lst1 lst2)
	(mapcan #'
		(lambda (x)
			(mapcar #'(lambda (y) (list x y)) lst2)
		) lst1
	)
)

(write (decart '(1 2 3) '(4 5 6)))

(defun decart_rec(x y)
  (cond
    ((null x) nil)
    (t (append (second_param (car x) y) (decart_rec (cdr x) y)))
  )
)

(defun second_param(x y)
  (cond
    ((null y) nil)
    (t (cons (list x (car y)) (second_param x (cdr y))))
  )
)

(terpri)
(write (decart_rec '(1 2 3) '(4 5 6)))
