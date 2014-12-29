#lang planet neil/sicp

(define (gcd a b)
  (if (= b 0)
         a
         (gcd b (remainder a b))))

(gcd 206 40)

;applicative-order evaluation: 4 remainder operations
;normal-order evaluation:18 raminder operations
;http://community.schemewiki.org/?sicp-ex-1.20
