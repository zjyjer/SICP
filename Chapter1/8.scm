#lang planet neil/sicp

(define (curt x)
  (curt-iter 1 x))

(define (curt-iter guess x)
  (if (good-enough guess x) guess
    (curt-iter  (improve guess x) x)))

(define (good-enough guess x)
  (< (abs (- (cube guess) x)) 0.001))

(define (cube x)
  (* x x x))

(define (square x)
  (* x x))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3.0))

(curt 1000)
