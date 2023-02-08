(define (display-line x)
  (newline) (display x))
(define (show x)
  (display-line x) x)

(define nil ())
(define (square x) (* x x))

;; (define (square-tree items)
;;   (cond ((null? items) nil)
;;         ((not (pair? items)) (square items))
;;         (else (cons (square-tree (car items))
;;                     (square-tree (cdr items))))))

(define (square-tree items)
  (map (lambda (sub-tree)
         (if (pair? sub-tree)
             (square-tree sub-tree)
             (square sub-tree)))
       items))

(define my-list (list 1 (list 2 (list 3 4) 5) (list 6 7 8)))

(show (square-tree my-list))

