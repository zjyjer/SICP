#lang planet neil/sicp

(define (timed-prime n)
  (newline)
  (display n)
  (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
  (if (fast-prime? n 10)
     (report-item (- (runtime) start-time))))

(define (fermat-test n)
  (define (try-it a)
    (= (expmod a n n ) a))
  (try-it (+ 1 (random (- n 1)))))

(define (fast-prime? n times)
  (cond ((= times 0) true)
       ((fermat-test n) (fast-prime? n (dec times)))
       (else false)))

(define (expmod base exp m)
  (cond ((= exp 0) 1)
       ((even? exp)
        (remainder (square (expmod base (/ exp 2) m)) 
                  m))
       (else
        (remainder (* base (expmod base (dec exp) m) ) 
                  m))))
(define (report-item elapsed-time)   
  (display " ***")
  (display elapsed-time))

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

