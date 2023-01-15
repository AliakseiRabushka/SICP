(define (even? n)
(= (remainder n 2) 0))

(define (square x)
  (* x x))

(define (expt b n)
(expt-iter b n 1))

(define (expt-iter b n product)
  (cond ((= n 0) product)
        ((even? n) (expt-iter (square b) (/ n 2) product))
        (else (expt-iter b  (- n 1) (* b product)))))

 (expt 2 8)

 


