(defun swap_two_ellement (lst i j)
  (cond ((= i j) lst)
        ((> i j) (swap_two_ellement lst j i))
        (t
         `(,@(subseq lst 0 i) ,(nth j lst) ,@(subseq lst (+ i 1) j)
          ,(nth i lst) ,@(subseq lst (+ j 1))))) )

(write (swap_two_ellement '(1 2 3 4 5 6 7 8) 7 0))
