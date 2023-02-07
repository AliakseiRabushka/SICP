(define (sum x y) (+ x y))

(define (display-line x)
  (newline) (display x))
(define (show x)
  (display-line x) x)

(define (make-mobile left right)
  (list left right))
(define (left-branch mobile) (car mobile))
(define (right-branch mobile) (car (cdr mobile)))

(define (make-branch length structure)
  (list length structure))
(define (branch-length branch) (car branch))
(define (branch-structure branch) (car (cdr branch)))

(define (total-weight mobile)
  (if (pair? mobile) (show (sum (total-weight (branch-structure (left-branch mobile)))
                                (total-weight (branch-structure (right-branch mobile)))))
      mobile))

(define (mobile-balance-check mobile)
    (cond ((and (pair? (branch-structure (left-branch mobile))) (pair? (branch-structure (right-branch mobile))))
           (and (mobile-balance-check (branch-structure (left-branch mobile)))
                (mobile-balance-check (branch-structure (right-branch mobile)))))
          ((and (not (pair? (branch-structure (left-branch mobile)))) (not (pair? (branch-structure (right-branch mobile)))))
           (equal? (* (branch-length (left-branch mobile)) (branch-structure (left-branch mobile)))
                   (* (branch-length (right-branch mobile)) (branch-structure (right-branch mobile)))))
      (else #f)))

(define branch (make-branch 2 1))
(define branch-2 (make-branch 2 2))
(define balanced-mobile (make-mobile branch branch))

;; (define mobile (make-mobile branch
;;                             (make-branch 2 (make-mobile (make-branch 2 balanced-mobile)
;;                                                         (make-branch 2 balanced-mobile)))))

;; (define mobile (make-mobile (make-branch (make-mobile (make-branch 2 balanced-mobile)
;;                                                       (make-branch 2 balanced-mobile))                                     
;;                                          (make-mobile (make-branch 2 balanced-mobile)
;;                                                       (make-branch 2 balanced-mobile)))                           
;;                             (make-branch (make-mobile (make-branch 2 balanced-mobile)
;;                                                       (make-branch 2 balanced-mobile))
;;                                          (make-mobile (make-branch 2 balanced-mobile)
;;                                                       (make-branch 2 balanced-mobile)))))  

(define mobile (make-mobile (make-branch (make-mobile (make-branch 2 balanced-mobile)
                                                      (make-branch 2 1))                                         
                                         (make-mobile (make-branch 2 balanced-mobile)
                                                      (make-branch 2 1)))                           
                            (make-branch (make-mobile (make-branch 2 balanced-mobile)
                                                      (make-branch 2 1))
                                         (make-mobile (make-branch 2 balanced-mobile)
                                                      (make-branch 2 1)))))             

                                  
(show (mobile-balance-check mobile))


