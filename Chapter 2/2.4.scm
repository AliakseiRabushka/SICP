(define (my-cons x y) (lambda (m) (m x y)))
(define (my-car z) (z (lambda (p q) p)))
(define (my-cdr z) (z (lambda (p q) q)))

;(car (cons 3 6))             ; 3
(my-cdr (my-cons 5 7))

