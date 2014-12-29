#lang planet neil/sicp

(define (A x y)
  (cond ((= y 0) 0)
       ((= x 0) (* 2 y))
       ((= y 1) 2)
       (else (A (dec x)
               (A x (dec y))))))

(A 1 10) ;val: 1024
(A 2 4) ;val: 65536
(A 3 3);val:  65536

(define (f n) (A 0 n)) ;$2n$

(define (g n) (A 1 n)); $2^n$

(define (h n) (A 2 n));$2^{(h (dec n))}$

(define (k n) (* 5 n n));$5n^2$

