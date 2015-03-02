#lang planet neil/sicp

(define (test-Carmichael n)
  (if (test-iter n 0)
     (print n)))

(define (print n)
  (newline)
  (display n))

(define (test-iter n cur)
  (cond ((= cur n) true)
       ((test n cur) (test-iter n (inc cur)))
       (else false)))

(define (test n cur)
  (= (expmod cur n  n) cur))

(define (expmod base exp m)
  (cond ((= exp 0) 1)
       ((even? exp)
        (remainder (square (expmod base (/ exp 2) m))
                  m))
       (else
        (remainder (* base (expmod base (dec exp) m))
                  m))))

(define (square x)
  (* x x))

(define (Carmichael first last)
  (if (< first last)
     (test-Carmichael first))
  (Carmichael (inc first) last))

(Carmichael 500 600)