

(define (my-equal seq1 seq2)
  (cond ((and (null? seq1) (null? seq2))
         #t)
        ((and (or (null? seq1) (null? seq2))
              (or (pair? seq1) (pair? seq2)))
         #f)
        ((and (symbol? seq1) (symbol? seq2))
         (eq? seq1 seq2))
        (else (if (and (pair? seq1) (pair? seq2))
                (and (my-equal (cdr seq1) (cdr seq2))
                     (my-equal (car seq1) (car seq2)))
                #f))))
    
(my-equal '((this is my list)) '((this is (my) list)))















;; (define (my-equal seq1 seq2)
;;   (cond ((and (null? seq1) (null? seq2))
;;          #t)
;;         ((and (symbol? seq1) (symbol? seq2))
;;          (eq? seq1 seq2))
;;         ((and (pair? seq1) (pair? seq2)
;;          (my-equal (car seq1) (car seq2))
;;          (my-equal (cdr seq1) (cdr seq2)))
;;          "true")
;;         (else #f)))