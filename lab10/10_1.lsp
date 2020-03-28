(defun len_lists(lst)
  (if lst
    (+ (length (car lst)) (len_lists (cdr lst)))
    0
  )
)

(write (len_lists '((4 44 3 2 ) (2 3 4) (6))))
