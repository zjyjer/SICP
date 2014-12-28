#lang planet neil/sicp

(define (p) (p))

(define (test x y)
  (if (= x 0)
     0
     y))

(test 0 (p))

;normal order eval:
;(test 0 (p))
;(if (= 0 0) 0 (p))
;0

;applicative order eval:
;(test 0 (p))
;(test 0 (p))
;(test 0 (p))
;infinite loop...
;error