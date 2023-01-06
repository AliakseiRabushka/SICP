(define (inc n) (+ n 1))
(define (inc-two n) (+ n 2))
(define (identity x) x)
(define (square x) (* x x))
(define (cube x) (* x x x))

(define (sum term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (+ (term a) result))))
 (iter a 0))

(define (sum-int a b) 
  (sum identity a inc b))

(define (sum-int-over-one a b) 
  (sum identity a inc-two b))

(define (sum-square a b) 
  (sum square a inc b))

(define (sum-square-over-one a b) 
  (sum square a inc-two b))

(define (sum-cubes a b) 
  (sum cube a inc b))

(define (sum-cubes-over-one a b) 
  (sum cube a inc-two b))

;(sum-int 1 5) ;15
;(sum-int-over-one 1 5) ;9
;(sum-square 1 5)          ;55
;(sum-square-over-one 1 5)  ;35
;(sum-cubes 1 5) ; 225
;(sum-cubes-over-one 1 5)  ;153




 
 