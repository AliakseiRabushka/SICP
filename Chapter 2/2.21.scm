(define (square x) (* x x))

(define (square-list items)
  (if (null? items)
      ()
      (cons (square (car items))
            (square-list (cdr items)))))

(define (square-list items)
  (map (lambda (x) (square x))
       items))

(square-list (list 1 2 3 4 5)) 

