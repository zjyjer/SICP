#lang planet neil/sicp

;recursive:
;(define (f n)
;  (if (< n 3) n
;     (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f(- n 3))))))

;iterative:
(define (f n)
  (f-iter 0 1 2 n))

(define (f-iter a b c n)
  (cond ((= n 0) a)
       ((= n 1) b)
       ((= n 2) c)
       (else (f-iter b c (+ c (* 2 b) (* 3 a)) (dec n)))))

(f 0)
(f 1)
(f 2)
(f 3)
(f 4)
(f 5)