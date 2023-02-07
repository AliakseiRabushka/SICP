(define nil (list))
(define my-list (list (list 1 2) (list 3 4) 5 6 (list 7 8 9)))
(define my-list-second (list 1 2 3 4 5))

(define (display-line x)
  (newline) (display x))

(define (show x)
  (display-line x) x)

(define (fringe items)
  (iter-fringe items (list)))
(define (iter-fringe items result)
  (cond ((null? items) 
         result)
        ((list? items)
         (show (iter-fringe (car items) 
                            (iter-fringe (cdr items) result))))
        (else (show (cons items result)))))


(fringe my-list) 
;; (fringe my-list-second)  ; (1 2 3 4 5)
