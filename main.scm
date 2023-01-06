(define (print-rat x)
(newline)
(display (numer x))
(display "/")
(display (denom x)))

(define (positive-rat? a)
          (if (or (and (> (numer a) 0) (> (denom a) 0))
                  (and (< (numer a) 0) (< (denom a) 0))) 
              #t
              #f))

(define (abs-num b)
          (if (< b 0) 
          (- b)
          b))

(define (improved-mul-rat x y)
         (make-rat (* (numer x) (numer y))
                   (* (denom x) (denom y))))

(define (normalized-rat x)
          (cond ((and (or (> (numer x) 0) (< (numer x) 0)) (> (denom x) 0)) (make-rat (numer x) (denom x)))
                ((and (< (numer x) 0) (< (denom x) 0)) (make-rat (abs-num (numer x)) (abs-num (denom x))))
                ((and (> (numer x) 0) (< (denom x) 0)) (make-rat (* (numer x) (- 1)) (abs-num (denom x))))))
                        

(define (numer x) (car x))
(define (denom x) (cdr x))
(define (make-rat n d) (cons n d))

(define one-half (make-rat 2 3))
(define one-third (make-rat 2 (- 3)))

(print-rat (improved-mul-rat (normalized-rat one-half) (normalized-rat one-third)))
;(print-rat (normalized-rat one-third)
