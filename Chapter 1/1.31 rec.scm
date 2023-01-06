(define (inc n) (+ n 1))
(define (identity x) x)

(define (myltiply term a next b)
    (if (> a b)
        1
        (* (term a) (myltiply term (next a) next b))))

(define (myltiply-int a b) 
  (myltiply identity a inc b))

(define (factorial b) 
  (myltiply identity 1 inc b))

;(myltiply-int 1 4) ;24
(factorial 5) ;120



 
 