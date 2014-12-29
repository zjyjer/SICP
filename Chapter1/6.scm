#lang planet neil/sicp

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
       (else else-clause)))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
     guess
     (sqrt-iter (improve guess x)
               x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.00001))

(define (square x) (* x x))

(define (sqrt x)
  (sqrt-iter 1 x))

(sqrt 12)
(sqrt 9)
(sqrt 10000)
;cond/if/define is special form
;new-if is appreciative order eval
;http://blog.csdn.net/xuanyun/article/details/1331872
