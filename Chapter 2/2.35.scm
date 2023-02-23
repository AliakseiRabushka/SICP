(define (display-line x)
  (newline) (display x))
(define (show x)
  (display-line x) x)

(define nil ())
(define (inc a) (+ a 1))

(define (enumerate-tree tree)
  (show (cond ((null? tree) nil)
              ((not (pair? tree)) (list tree))
              (else (append (enumerate-tree (car tree))
                            (enumerate-tree (cdr tree)))))))

(define (accumulate op initial sequence)
  (show (if (null? sequence)
            initial
            (op (car sequence)
                (accumulate op initial (cdr sequence)))))) 

(define (count-leaves t)
  (accumulate (lambda (x y) (inc y)) 
              0 
              (map + (enumerate-tree t))))

(define my-tree (list 1 (list 2 3) (list (list 4 5) (list 0 9))))

(show (count-leaves my-tree))
