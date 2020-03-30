(defun found_between (a b lst)
  (defun found (lst1 lst2)
    (if (numberp lst1)
      (append (if (and (< a lst1) (< lst1 b)) (list lst1) Nil)
              (if (and (< a lst2) (< lst2 b)) (list lst2) Nil) )
      (append lst1 (if (and (< a lst2) (< lst2 b)) (list lst2) Nil) )
    )
  )
  (reduce #'found lst)
)

(defun found_between_rec (a b lst)
  (if lst
    (append
      (if (and (< a (car lst)) (< (car lst) b)) (list (car lst)) Nil)
      (found_between_rec a b (cdr lst))
    )
  )
)

(write (found_between_rec 1 5 '(1 2 3 4 5 6 7 8 9)))
