(setq fams '(A B C D))
(setq zp '(10 20 30 40))

(defun c_list (f z)
  (list f z) )

(defun c_point (f z)
  (cons f z) )

(setq newList (mapcar #'c_list fams zp))

(setq newPoints (mapcar #'c_point fams zp))

(defun PlusSpisok (spisok)
  (list (car spisok) (+ (car (cdr spisok)) 10)) )

(defun MinusSpisok (spisok)
  (list (car spisok) (- (car (cdr spisok)) 10)) )

(defun PlusPara (spisok)
  (cons (car spisok) (+ (cdr spisok) 10)) )

(defun MinusPara (spisok)
  (cons (car spisok) (- (cdr spisok) 10)) )

(defun SumSpisok (s1 s2)
  (if (numberp s1)
    (+ s1 (car (cdr s2)))
    (+ (car (cdr s1)) (car (cdr s2))))
)

(defun SumPara (s1 s2)
  (if (numberp s1)
    (+ s1 (cdr s2))
    (+ (cdr s1) (cdr s2)))
)

(defun newSp (s1)
  (if (> (car (cdr s1)) 20) s1 Nil) ) 

;(reduce #'SumSpisok newList)
;(reduce #'SumPara newPoints)
;(load "6.lsp")
;(mapcar #'newSp newList)
