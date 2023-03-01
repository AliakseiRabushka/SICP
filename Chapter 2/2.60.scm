(define (element-of-set? x set)
  (cond ((null? set) #f)
        ((equal? x (car set)) #t)
        (else (element-of-set? x (cdr set)))))

(define (adjoin-set x set)
  (cons x set))

(define (intersection-set set1 set2)
  (cond ((or (null? set1) (null? set2)) '())
        ((element-of-set? (car set1) set2)
         (cons (car set1)
               (intersection-set (cdr set1) set2)))
        (else (intersection-set (cdr set1) set2))))

(define (union-collection col1 col2)
  (cond ((null? col1) col2)
        ((null? col2) col1)
        (else (cons (car col1)
                    (union-collection (cdr col1) col2)))))


(define first-collection '(a a b b b f))
(define second-collection '(c d c d a a g))

;; (element-of-set? 'f first-collection)
;; (adjoin-set 'a first-collection)
(intersection-set first-collection second-collection)
;; (union-collection first-collection second-collection)
