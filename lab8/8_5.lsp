(defun multiplication (lst k)
  (mapcar #'(lambda (x) (if (numberp x) (* x k) x)) lst) )

(write (multiplication '(1 a 3) 10))
