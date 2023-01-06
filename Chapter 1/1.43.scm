(define (inc x) (+ x 1))
(define (square x) (* x x))
(define (compose f g)
 (lambda (x) (f (g x))))

(define (repeated f n)
 (define (iter-repeated counter product)
  (if (= counter n)
      product
      (iter-repeated (+ counter 1) (compose f product))))
  (iter-repeated 1 f))

;((repeated square 2) 5)
;625
((repeated inc 4) 5)

