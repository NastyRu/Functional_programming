(defun between (a b c)
  (cond ((and (> a b) (< a c)) T)
        ((and (< a b) (> a c)) T)) )

(write (between 9 10 8))
