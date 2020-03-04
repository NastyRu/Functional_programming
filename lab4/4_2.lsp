(list 'cons t NIL)
; (CONS T NIL)
(eval (eval (list 'cons t NIL)))
; Undefined function:  T
(apply #cons "(t NIL))
; illegal complex number format: #CONS
(list 'eval NIL)
; (EVAL NIL)
(eval (list 'cons t NIL))
; (T)
(eval NIL)
; NIL
(eval (list 'eval NIL))
; NIL
