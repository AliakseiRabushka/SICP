(define (inc n) (+ n 1))
(define (dec n) (- n 1))
(define (identity x) x)

(define (accumulate combiner null-value term a next b)
    (if (>= a b)
        a
        (combiner (term a) (accumulate combiner null-value term (next a) next b))))

(define (sum-int a b) 
(accumulate + a identity a inc b))

(define (myltiply-int a b) 
  (accumulate * 1 identity a inc b))

(define (factorial b) 
  (accumulate * 1 identity 1 inc b))

(sum-int 1 5) ;15
;(myltiply-int 1 4) ;24
;(factorial 5) ;120

