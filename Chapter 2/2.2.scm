(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

(define (average x y) (/ (+ x y) 2))

(define (make-segment n d) (cons n d))
(define (start-segment x) (car x))
(define (end-segment x) (cdr x))

(define (make-point n d) (cons n d))
(define (x-point x) (car x))
(define (y-point x) (cdr x))

(define (midpoint-segment x)
  (let ((start-point (start-segment x))
        (end-point (end-segment x)))
    (make-point
      (average (x-point start-point) (x-point end-point))
      (average (y-point start-point) (y-point end-point)))))
  
;(print-point (make-segment (make-point 2 3) (make-point 3 4))) 
(define s (make-segment (make-point 2 3) (make-point 3 4)))
(print-point (midpoint-segment s))
