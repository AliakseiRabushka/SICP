(define (inc n) (+ n 1))
(define (identity x) x)

(define (proc act term a next b)
  (define (iter a result)
    (if (>= a b)
        result
        (iter (next a) (act (term a) result))))
 (iter a b))

(define (sum-int a b) 
  (proc + identity a inc b))

(define (myltiply-int a b) 
  (proc * identity a inc b))

(define (factorial b) 
  (proc * identity 1 inc b))

;(sum-int 1 5) ;55
(myltiply-int 1 4) ;24
;(factorial 5) ;120



 
 