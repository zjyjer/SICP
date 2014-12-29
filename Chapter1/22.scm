#lang planet neil/sicp

(define (timed-prime n)
  (newline)
  (display n)
  (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
  (if (prime? n)
     (report-prime (- (runtime) start-time))))

(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time))

(define (prime? n)
  (= (smallest-divisor n) n))
;
(define (smallest-divisor n)
  (find-divisor n 2))
;
(define (find-divisor n cur)
  (cond ((> (square cur) n) n)
  ((divides? cur n) cur)
  (else (find-divisor n (inc cur)))))
;
(define (divides? cur n)
  (= (remainder n cur) 0))
;
(define (square x)
  (* x x))

(define (search-for-primes n last)
  (primes-iter 
   (if (even? n) 
      (inc n)
      n)
   last))

(define (primes-iter first last)
  (if (<= first last) (timed-prime first))
  (if (<= first last) (primes-iter (+ first 2) last)))

(search-for-primes 1000 1019)  ;1e3
(search-for-primes 10000 10037)  ;1e4
(search-for-primes 100000 100043)   ; 1e5 
(search-for-primes 1000000 1000037) ; 1e6 
(search-for-primes 1000000000 1000000021)       ; 1e9 
(search-for-primes 10000000000 10000000061)     ; 1e10 
(search-for-primes 100000000000 100000000057)   ; 1e11 
(search-for-primes 1000000000000 1000000000063) ; 1e12 
;both the growth prediction and the notion that programs run in a time proportional to the steps required for the computation.
  
