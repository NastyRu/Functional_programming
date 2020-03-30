(defun swap_to_left (lst k)
  (cond ((= k 0) lst)
        ((> k (length lst)) (swap_to_left lst (rem k (length lst))))
        (t
         `(,@(subseq lst k) ,@(subseq lst 0 k)))) )

(defun swap_to_right (lst k)
 (cond ((= k 0) lst)
       ((> k (length lst)) (swap_to_right lst (rem k (length lst))))
       (t
        `(,@(subseq lst (- (length lst) k)) ,@(subseq lst 0 (- (length lst) k))))) )

(write (swap_to_right '(1 2 3 4 5 6 7 8) 3))
(terpri)
(write (swap_to_left '(1 2 3 4 5 6 7 8) 7))
