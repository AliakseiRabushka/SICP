(define (inc n) (+ n 1))
(define (inc-two n) (+ n 2))
(define (dec-two n) (- n 2))
(define (identity x) x)
(define (even? n)
(= (remainder n 2) 0))

(define (filtered-accumulate even combiner null-value term a next next-two prev-two b)
  (define (iter a result)
    (cond ((> a b)
        result)
        ((even a)(iter (next-two a) (combiner (term a) result)))
        ((= a 1) (iter (prev-two a) (combiner (term a) result)))
        (else (iter (next a) (combiner (term a) result)))))
 (iter a 0))

(define (sum-even a b) 
  (filtered-accumulate even? + a identity a inc inc-two dec-two b))

(sum-even 1 15)

