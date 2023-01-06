(define (inc n) (+ n 1))
(define (identity x) x)
(define (even? n)
(= (remainder n 2) 0))
(define (always-true x) #t)

(define (filtered-accumulate filter combiner null-value term a next b)
  (define (iter a result)
    (cond ((> a b) result)
          ((filter a) (iter (next a) (combiner (term a) result)))
          (else (iter (next a) result))))
 (iter a null-value))

(define (factorial b) 
  (filtered-accumulate always-true * 1 identity 1 inc b))

(define (sum-even a b) 
  (filtered-accumulate even? + 0 identity a inc b))

(sum-even 1 10);
;(factorial 6) ;120

