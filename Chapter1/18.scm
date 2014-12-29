#lang planet neil/sicp

(define (* a b)
  (times-iter a b 0))

(define (times-iter a b product)
  (cond ((= b 0) product)
       ((even? b) (times-iter (double a) (halves b) product))
       (else (times-iter a (dec b) (+ a product)))))

(define (halves a)
  (/ a 2))
(define (double a)
  (+ a a))

(define (even? x)
  (= (remainder x 2) 0))

(* 2 3)
(* 2 4)
(* 12 123)
