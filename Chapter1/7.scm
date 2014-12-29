#lang planet neil/sicp

(define (square x)
  (* x x))

(define (sqrt x)
  (sqrt-iter 1 x))

(define (sqrt-iter guess x)
  (if (good-enough guess x)
     guess
     (sqrt-iter (improve guess x) 
               x)))

(define (good-enough guess x)
;(< (abs (/ (- (improve guess x) guess) guess)) 0.001))
(< (abs (- (square guess) x)) 0.001))
(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2.0))

(sqrt 0.0000123)
;0.0035071396311426527 better
;0.031380962377117995
(sqrt 40000000123)
;200011.1731691999 
;200000.0003075 better

;the improved method doesn't work well when x is large for guess is large
