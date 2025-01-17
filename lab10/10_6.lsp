(defun last_odd (lst)
  (cond ((null lst) Nil)
        ((oddp (car lst))
          (let ((rec (last_odd (cdr lst))))
            (if (null rec) (car lst) rec)
          )
        )
        (t (last_odd (cdr lst)))
  )
)

(write (last_odd '(1)))
