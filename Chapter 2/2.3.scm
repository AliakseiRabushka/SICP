(define (make-segment start-point end-point) (cons start-point end-point))
(define (start-segment x) (car x))
(define (end-segment x) (cdr x))

(define (make-point x y) (cons x y))
(define (x-point x) (car x))
(define (y-point x) (cdr x))

(define (square x) (* x x))

(define width-segment (make-segment (make-point 1 1) (make-point 5 1))) 
(define height-segment (make-segment (make-point 1 1) (make-point 1 5)))

(define (make-rectangle width-segment height-segment)
  (cons width-segment height-segment))

(define (get-width rectangle)
  (let 
    ((dx (- (x-point (end-segment (car rectangle)))
            (x-point (start-segment (car rectangle)))))
     (dy (- (y-point (end-segment (car rectangle)))
            (y-point (start-segment (car rectangle))))))
    (sqrt (+ (square dx)
             (square dy)))))

(define (get-height rectangle)
  (let
    ((dx (- (x-point (end-segment (cdr rectangle)))
            (x-point (start-segment (cdr rectangle)))))
     (dy (- (y-point (end-segment (cdr rectangle)))
            (y-point (start-segment (cdr rectangle))))))
    (sqrt (+ (square dx)
             (square dy)))))

(define (area rectangle)
  (* (get-width rectangle) (get-height rectangle)))

(define rectangle (make-rectangle width-segment height-segment))

(area rectangle) 


;; (define (make-rectangle width height)      ;                 #2
;;   (cons (cons width 2) (cons height 4)))

;; (define (get-width rectangle) (car (car rectangle)))
;; (define (get-height rectangle) (car (cdr rectangle)))

;; (define rectangle (make-rectangle 6 5))


;; (define (make-rectangle width height)  ;                     #1
;;   (cons width height))

;; (define (get-width rectangle) (car rectangle))
;; (define (get-height rectangle) (cdr rectangle))


;; (define (make-rectangle width height)                                          ; #3
;;   (cons (cons (cons 2 width) (cons 3 4)) (cons (cons 8 5) (cons height 7)))) 

;; (define (get-width rectangle) (cdr (car (car rectangle))))
;; (define (get-height rectangle) (car (cdr (cdr rectangle))))


;; (define (area rectangle)
;;   (* (get-width rectangle) (get-height rectangle)))

;; (define rectangle (make-rectangle 6 5))

;; (area rectangle) 



