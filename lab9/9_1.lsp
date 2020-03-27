(defun set-equal (lst1 lst2)
  (and (subsetp lst1 lst2) (subsetp lst2 lst1)) )

(write (set-equal '(1 4 2 3) '(2 3 1 4)))
