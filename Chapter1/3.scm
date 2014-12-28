#lang planet neil/sicp

(define (two-min a b)
  (if (< a b) a b))
(define (three-min a b c)
  (if (< (two-min a b) c) (two-min a b) c))
(define (max-two-sum a b c)
  (- (+ a b c)
    (min a b c)))

;(max-two-sum 7 4 3)
;(max-two-sum 3 4 7)
;(max-two-sum 4 3 7)

