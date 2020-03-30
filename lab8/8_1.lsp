(defun palindrom (lst)
  (equalp lst (reverse lst)) )

(write (palindrom '(a b c b b)))
