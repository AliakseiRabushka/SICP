(define (same-parity x . y)
  (iter x y (list)))
(define (iter x y result)
  (cond ((null? y) (cons x (reverse result)))
        ((= (remainder x 2) (remainder (car y) 2)) (iter x (cdr y) (cons (car y) result)))
        (else (iter x (cdr y) result))))
             
(same-parity 1 2 3 5 5 7 8 10 11 12 13 260 135 4 8 1221 1220)    ;(1 3 5 5 7 11 13 135 1221)
;; (same-parity 2 3 5 5 7 8 10 11 12 13 260 135 4 8 1221 1220)  


























;; (define (same-parity x . y)
;;   (iter x y (list)))
;; (define (iter x y result)
;;   (cond ((null? y) (cons x (reverse result)))
;;         ((even? x) (iter x (cdr y)
;;                          (if (even? (car y)) (cons (car y) result) result)))
;;         ((not (even? x)) (iter x (cdr y)
;;                          (if (not (even? (car y))) (cons (car y) result) result)))))