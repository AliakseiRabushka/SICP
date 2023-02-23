(define (display-line x)
  (newline) (display x))
(define (show x)
  (display-line x) x)

(define nil ())

(define (fringe-first-sheet items)
  (iter-fringe items (list)))
(define (iter-fringe items result)
  (cond ((null? items) 
         result)
        ((list? items) (iter-fringe (cdr items) (cons (car (car items)) result)))                
        (else (iter-fringe (cdr items) result))))

(define (accumulate op initial sequence)
  (show (if (null? sequence)
            initial
            (op (car sequence)
                (accumulate op initial (cdr sequence)))))) 

(define (accumulate-n op init seqs)
  (show (if (null? (car seqs))
            nil
            (cons (accumulate op init (fringe-first-sheet seqs))
                  (accumulate-n op init (map (lambda (seqs) (cdr seqs)) seqs))))))

(define s (list (list 1 2 3) (list 4 5 6) (list 7 8 9) (list 10 11 12)))
 (show (accumulate-n + 0 s))     ; (22 26 30)
;; (show (fringe-first-sheet s))
;; (show (accumulate + 0  (fringe-first-sheet s)))
;; (show (accumulate + 0 (map (lambda (s) (car s)) s))) ;22
  
;; (accumulate + 0 (list 1 2 3 4 5))
;; + 1 (accumulate + 0 (2 3 4 5))
;; + 1 (+ 2 (accumulate + 0 (3 4 5)))
;; + 1 (+ 2 (+ 3 (accumulate + 0 (4 5))))
;; + 1 (+ 2 (+ 3 (+ 4 (accumulate + 0 (5)))))
;; + 1 (+ 2 (+ 3 (+ 4 (+ 5 (accumulate + 0 '())))))
;; + 1 (+ 2 (+ 3 (+ 4 (+ 5 0))))
;; + 1 (+ 2 (+ 3 (+ 4 5)))
;; + 1 (+ 2 (+ 3 9))
;; + 1 (+ 2 12)
;; + 1 14
;; 15
