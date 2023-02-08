(define (display-line x)
  (newline) (display x))
(define (show x)
  (display-line x) x)

(define nil ())
(define (square x) (* x x))
(define (scale-factor x) (* x 10))

(define (tree-map proc items)
  (cond ((null? items) nil)
        ((not (pair? items)) (proc items))     
        (else (cons (tree-map proc (car items))
                    (tree-map proc (cdr items))))))

(define (square-tree tree) (tree-map square tree))
(define (scale-tree tree) (tree-map scale-factor tree))
(define my-tree (list 1 (list 2 (list 3 4) 5) (list 6 7 8) 9))

(show (square-tree my-tree))
;; (show (scale-tree my-tree))
