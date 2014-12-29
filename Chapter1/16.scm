#lang planet neil/sicp

(define (pow-iter a n product)
  (cond ((= n 0) product)
       ((even? n) (pow-iter (square a) (/ n 2) product))
       (else
        (pow-iter a (dec n) (* a product)))))

(define (pow a n)
  (pow-iter a n 1))

(define (square x)
  (* x x))

(define (even? x)
  (= (remainder x 2) 0))

(pow 2 1)
(pow 2 2)
(pow 2 4)
(pow 2 5)
(pow 2 10)
(pow 10 12)