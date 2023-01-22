(define (my-reverse items)
  (iter-reverse items (list)))
(define (iter-reverse items result)
  (if (null? items)
      result   
      (iter-reverse (cdr items) (cons (car items) result))))
  
(my-reverse (list 23 72 34 5 7 8 2 233))
