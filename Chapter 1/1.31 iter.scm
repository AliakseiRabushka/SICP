(define (inc n) (+ n 1))
(define (identity x) x)

(define (myltiply term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* (term a) result))))
 (iter a 1))

(define (myltiply-int a b) 
  (myltiply identity a inc b))

(define (factorial b) 
  (myltiply identity 1 inc b))

;(myltiply-int 1 4) ;24
(factorial 5) ;120



 
 