(defun sum_next(lst n)
  (cond
    ((= n (length lst)) (car lst))
    (t (+ (car lst) (sum_next (cdr lst) n)))
  )
)

(defun sumN(lst n)
  (sum_next lst (+ 1 (- (length lst) n)))
)

(defun sum_nextlast(lst n)
  (cond
    ((= 1 (length lst)) (car lst))
    ((>= n (length lst)) (+ (car lst) (sum_nextlast (cdr lst) n)))
    (t (sum_nextlast (cdr lst) n))
  )
)

(defun sumlastN(lst n)
  (sum_nextlast lst (+ 1 (- (length lst) n)))
)

(defun sum_nextNMD(lst n m d)
  (let ((len (length lst)))
    (cond
      ((= m len)
        (if (= 0 (rem (- n m) 3))
          (car lst)
          0
        )
      )
      ((and (>= n len) (= 0 (rem (- n len) 3)))
        (+ (car lst) (sum_nextNMD (cdr lst) n m d))
      )
      (t
        (sum_nextNMD (cdr lst) n m d)
      )
    )
  )
)

(defun sumNMD(lst n m d)
  (let ((len (length lst)))
    (sum_nextNMD lst (+ 1 (- len n)) (+ 1 (- len m)) d)
  )
)

(write (sumNMD '(1 2 3 4 5 6 7 8 9 10) 2 9 3))
