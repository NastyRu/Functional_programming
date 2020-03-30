(defun select_odd (lst)
  (if lst
    (append
      (if (oddp (car lst))
      	(list (car lst)) Nil
      )
      (select_odd (cdr lst))
    )
  )
)

(defun sum_all_odd (lst)
  (cond ((null lst) 0)
        ((oddp (car lst))
          (+ (car lst) (sum_all_odd (cdr lst)))
        )
        (t (sum_all_odd (cdr lst)))
  )
)

(write (sum_all_odd '(1 2 3 4 5 6 7)))
