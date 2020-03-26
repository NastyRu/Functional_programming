(defun select_between_nil (lst a b)
  (mapcar #'(lambda (x) (if (and (> x a) (< x b)) x Nil)) lst) )

(defun remove_null (lst)
  (cond ((null lst) nil)
        ((null (car lst)) (remove_null (cdr lst)))
        (t (cons (car lst) (remove_null (cdr lst))))))

(defun select_between (lst a b)
  (remove_null (select_between_nil lst a b)) )

(write (select_between '(1 2 3 4 5) 0 5))
