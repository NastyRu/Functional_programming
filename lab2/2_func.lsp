(defun f1_cons (ar1 ar2 ar3 ar4)
  (cons (cons ar1 (cons ar2 Nil)) (cons (cons ar3 (cons ar4 Nil)) Nil)) )

(defun f1_list (ar1 ar2 ar3 ar4)
  (list (list ar1 ar2) (list ar3 ar4)) )

(write (f1_cons 1 2 3 4))
(terpri)
(write (f1_list 1 2 3 4))
(terpri)

(defun f2_cons (ar1 ar2)
  (cons (cons ar1 Nil) (cons (cons ar2 Nil) Nil)) )

(defun f2_list (ar1 ar2)
  (list (list ar1) (list ar2)) )

(write (f2_cons 1 2))
(terpri)
(write (f2_list 1 2))
(terpri)

(defun f3_cons (ar1)
  (cons (cons (cons ar1 Nil) Nil) Nil) )

(defun f3_list (ar1)
  (list (list (list ar1))) )

(write (f3_cons 1))
(terpri)
(write (f3_list 1))
(terpri)
