#lang planet neil/sicp

(define (smallest-divisor n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
              ((divides? test-divisor n) test-divisor)
              (else    (find-divisor n (inc test-divisor)))))

(define (square x)
  (* x x))

(define (divides? test-divisor n)
  (= (remainder n test-divisor) 0))

(smallest-divisor 199)
;199
(smallest-divisor 1999)
;1999
(smallest-divisor 19999)
;7
