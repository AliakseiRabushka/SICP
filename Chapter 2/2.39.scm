(define (display-line x)
  (newline) (display x))
(define (show x)
  (display-line x) x)

(define nil ())

(define (fold-left op initial sequence)
  (define (iter result rest)
    (if (null? rest)
        result
        (iter (op result (car rest))
              (cdr rest))))
  (iter initial sequence))

;; (define (my-reverse sequence)
;;   (fold-right (lambda (x y) (cons x y)) nil sequence)) ;(3 6 4 8 9 2)

(define (my-reverse sequence)
  (fold-left (lambda (x y) (cons y x)) nil sequence))

(define my-sequence (list 3 6 4 8 9 2))
(show (my-reverse my-sequence))
