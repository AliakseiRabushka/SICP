(define (adjoin-set x set)
  (cond ((null? set) (list x))
        ((< x (car set))
         (cons x set))        
        ((or (> x (car set)) (< x (car (cdr set))))
         (cons (car set)
               (adjoin-set x (cdr set))))
        (else (cdr set)
              (adjoin-set x (cdr set)))))
  
(define first-set '(2 4 5 7))

(adjoin-set 8 first-set)
