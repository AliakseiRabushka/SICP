(define (last-pair items)
  (if (null? (cdr items))
      (car items)
      (last-pair (cdr items))))

(last-pair (list 23 72 149 34 74 3 12 57 39 4567 12345))



