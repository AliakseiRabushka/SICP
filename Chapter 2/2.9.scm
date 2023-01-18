(define (make-interval a b) (cons a b))
(define (lower-bound a) (car a))
(define (upper-bound b) (cdr b))

(define (radius-interval x)
  (/ (+ (lower-bound x) (upper-bound x)) 2))

(define (add-interval x y)
  (make-interval (+ (lower-bound x) (lower-bound y))
                 (+ (upper-bound x) (upper-bound y))))

(define (sub-interval x y)
  (make-interval (- (lower-bound x) (upper-bound y))
                 (- (upper-bound x) (lower-bound y))))

(define (mul-interval x y)
  (let ((p1 (* (lower-bound x) (lower-bound y)))
        (p2 (* (lower-bound x) (upper-bound y)))
        (p3 (* (upper-bound x) (lower-bound y)))
        (p4 (* (upper-bound x) (upper-bound y))))
    (make-interval (min p1 p2 p3 p4)
                   (max p1 p2 p3 p4))))

(define (div-interval x y)
  (mul-interval x
                (make-interval (/ 1.0 (upper-bound y))
                               (/ 1.0 (lower-bound y)))))

;(sub-interval (make-interval 1 2) (make-interval 3 4))
;(radius-interval (make-interval 2 4))
;(radius-interval (add-interval (make-interval 2 4) (make-interval 6 8)))
(radius-interval (mul-interval (make-interval 2 4) (make-interval 6 8)))
