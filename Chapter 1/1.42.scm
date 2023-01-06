(define (inc x) (+ x 1))
(define (dec x) (- x 1))
(define (square x) (* x x))

(define (compose f g)
  (lambda (x) (f (g x))))

;((compose square inc) 8)

((compose square dec) 8)
