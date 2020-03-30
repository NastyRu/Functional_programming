(defun centr (lst)
  (mapcar #'(lambda (x y) y) (cdr lst) lst))

(defun last_elem (lst)
  (reduce #'(lambda (a x) x) lst))

(write (last_elem '(1 2 3 4)))
