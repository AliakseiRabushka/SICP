(define nil (list))

(define (my-for-each proc items)
  (newline)
  (display items)
  (cond ((null? items) #t)
        (else (proc (car items)) 
              (my-for-each proc (cdr items)))))
 
(my-for-each abs (list -10 2 -5 6))


