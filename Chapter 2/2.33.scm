(define (display-line x)
  (newline) (display x))
(define (show x)
  (display-line x) x)

(define nil ())
(define (inc a) (+ a 1))
(define (square b) (* b b))
(define (cube a) (* a a a))

(define (accumulate op initial sequence)
  (show (if (null? sequence)
            initial
            (op (car sequence)
                (accumulate op initial (cdr sequence))))))

(define (my-length sequence)
  (accumulate (lambda (x y) (inc y)) 0 sequence))

(define (my-map p sequence)
  (accumulate (lambda (x y) (cons (p x) y)) nil sequence))   

(define (my-append seq1 seq2)
  (accumulate cons seq2 seq1))

(define my-sequence (list 1 2 3 4 5 6 7 8))
(define my-sequence-2 (list 3 4))

;; (show (my-map cube my-sequence))
;; (show (my-append my-sequence my-sequence-2))
(show (my-length my-sequence))

