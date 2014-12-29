#lang planet neil/sicp

;recursive:
(define (Pascal n row)
  (cond ((< row n) 0)
       ((= row n) 1)
       ((= n 1) 1)
       (else (+ 
              (Pascal (dec n) (dec row)) 
              (Pascal n (dec row))))))

(Pascal 1 5)
(Pascal 2 5)
(Pascal 3 5)
(Pascal 4 5)
(Pascal 5 5)