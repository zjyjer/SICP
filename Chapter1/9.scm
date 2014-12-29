#lang planet neil/sicp

(define (+ a b)
  (if (= 0 a)
     b
     (+ ( dec a)  (inc b))))
(+ 3 5)
;it's a iterative method
;(+ 3 5)
;(+ 2 6)
;(+ 1 7)
;(+ 0 8)
;8

(define (+ a b)
  (if (= 0 a)
     b
     (inc (+ (dec a) b))))

(+ 3 5)
;it's a recursive method
;(inc (+ 2 5))
;(inc (inc (+ 1 5)))
;(inc (inc (inc (+ 0 5))))
;(inc (inc (inc 5)))
;(inc (inc 6))
;(inc 7)
;8