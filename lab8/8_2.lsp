(defun last_elem (lst)
  (if (NULL (cadr lst)) (car lst) (last_elem (cdr lst))) )

(defun centr (lst)
  (if (NULL (cadr lst)) () (cons (car lst) (centr (cdr lst)))) )

(defun swap_first_last (lst)
  `(,(last_elem lst) ,@(centr (cdr lst)) ,(car lst)) )

(write (swap_first_last '((1 2 3 4) (5 6))))
