(setf *random-state* (make-random-state t))

(defun printS (x y s)
  (print (list x '+ y '= s)))

(defun analyze (x y)
  (cond ((and (= 1 x) (= 1 y)) (printS x y (+ x y)) (analyze (+ 1 (random 6)) (+ 1 (random 6))))
        ((and (= 6 x) (= 6 y)) (printS x y (+ x y)) (analyze (+ 1 (random 6)) (+ 1 (random 6))))
        (T (printS x y (+ x y)) (+ x y))) )

(defun game ()
  (let ((s1 (analyze (+ 1 (random 6)) (+ 1 (random 6))))
        (s2 (analyze (+ 1 (random 6)) (+ 1 (random 6)))))
  (cond ((or (= s1 7) (= s1 11) (> s1 s2)) 'you-win)
        ((or (= s1 7) (= s2 11) (< s1 s2)) 'he-wins)
        (T 'draw))) )

(write (game))
