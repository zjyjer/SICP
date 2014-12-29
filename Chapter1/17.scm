#lang planet neil/sicp

(define (double a)
  (+ a a))

(define (even? x)
  (= (remainder x 2) 0))

(define (halves a)
  (/ a 2))
(define (* a b)
  (cond ((= b 0) 0)
       ((even? b) (double (* a (halves b))))
       (else
        (+ (* a (dec b)) a))))

(* 2 3)
(* 2 4)
(* 2 5)