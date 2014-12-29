#lang planet neil/sicp

(define (fib n)
  (fib-iter 1 0 0 1 n))

(define (fib-iter a b p q count)
  (cond ((= count 0) b)
       ((even? count)
        (fib-iter a
                             b
                             (+ (square p) (square q))
                             (+ (* 2 p q)  (square q))
                             (/ count 2)))
       (else (fib-iter (+ (* b q) (* a q) (* a p))
                                        (+ (* b p) (* a q))
                                        p
                                        q
                                        (dec count)))))

(define (square x)
  (* x x))
(define (even? x)
  (= (remainder x 2) 0))
(fib 2)
(fib 3)
(fib 4)
(fib 5)
(fib 6)
(fib 7)
(fib 8)
         