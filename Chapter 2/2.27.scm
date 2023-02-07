(define nil (list))
(define my-list (list (list 1 2) (list 3 4) 2 3 (list 3 4 5)))

;; (define my-list (cons (cons 1 (cons 2 nil)) (cons (cons 3 (cons 4 nil)) nil)))  ; ((1 2) (3 4))  

(define (display-line x)
  (newline) (display x))

(define (show x)
  (display-line x) x)

(define (deep-reverse items)
  (iter-deep-reverse items (list)))
(define (iter-deep-reverse items result)
  (cond ((null? items) 
         result)  
        ((list? (car items)) 
         (iter-deep-reverse (cdr items) 
                            (show (cons (deep-reverse (car items)) result))))
        (else (iter-deep-reverse (cdr items) 
                                 (show (cons (car items) result))))))
  
(deep-reverse my-list)
;; (list? my-list)
;; (show my-list) ; ((1 2) (3 4) 2 3 (3 4 5))

