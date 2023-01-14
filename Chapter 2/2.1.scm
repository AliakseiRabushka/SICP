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

(define (normalized-rat x)
          (cond ((and (or (> (numer x) 0) (< (numer x) 0)) (> (denom x) 0)) (make-rat (numer x) (denom x)))
                ((and (< (numer x) 0) (< (denom x) 0)) (make-rat (abs-num (numer x)) (abs-num (denom x))))
                ((and (> (numer x) 0) (< (denom x) 0)) (make-rat (* (numer x) (- 1)) (abs-num (denom x))))))

(define (abs-num b)
          (if (< b 0) 
          (- b)
          b))

(define (improved-mul-rat x y)
         (improved-make-rat (* (numer x) (numer y))
                            (* (denom x) (denom y))))

(define (numer x) (car x))
(define (denom x) (cdr x))
;(define (make-rat n d) (cons n d))

(define (improved-make-rat n d) 
          (cond ((and (or (> n 0) (< n 0)) (> d 0)) (cons n d))
                ((and (< n 0) (< d 0)) (cons (abs-num n) (abs-num d)))
                ((and (> n 0) (< d 0)) (cons (* n -1) (abs-num d)))))

(print-rat (improved-make-rat 2 -4))
;(define one-third (improved-make-rat -1 -3))
;(define one-half (improved-make-rat -1 3))
;(print-rat (improved-mul-rat one-third one-half))
#|
Упражнение 2.1.
Определите улучшенную версию mul-rat, которая принимала бы как положительные, так и
отрицательные аргументы. Make-rat должна нормализовывать знак так, чтобы в случае, если
рациональное число положительно, то и его числитель, и знаменатель были бы положительны, а
если оно отрицательно, то чтобы только его числитель был отрицателен.



