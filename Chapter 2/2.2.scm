(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

(define (average x y) (/ (+ x y) 2))

(define (make-segment n d) (cons n d))
(define (start-segment x) (car x))
(define (end-segment x) (cdr x))

(define (make-point n d) (cons n d))
(define (x-point x) (car x))
(define (y-point x) (cdr x))

(define (midpoint-segment x)
  (let ((start-point (start-segment x))
        (end-point (end-segment x)))
    (make-point
      (average (x-point start-point) (x-point end-point))
      (average (y-point start-point) (y-point end-point)))))
  
;(print-point (make-segment (make-point 2 3) (make-point 3 4))) 
(define s (make-segment (make-point 2 3) (make-point 3 4)))
(print-point (midpoint-segment s))


;; Рассмотрим задачу представления отрезков прямой на плоскости. Каждый отрезок представляется
;; как пара точек: начало и конец. Определите конструктор make-segment и селекторы start-
;; segment и end-segment, которые определяют представление отрезков в терминах точек. Далее,
;; точку можно представить как пару чисел: координата x и координата y. Соответственно, напиши-
;; те конструктор make-point и селекторы x-point и y-point, которые определяют такое пред-
;; ставление. Наконец, используя свои селекторы и конструктор, напишите процедуру midpoint-
;; segment, которая принимает отрезок в качестве аргумента и возвращает его середину (точку,
;; координаты которой являются средним координат концов отрезка). Чтобы опробовать эти проце-
;; дуры, Вам потребуется способ печатать координаты точек:
;; (define (print-point p)
;; (newline)
;; (display "(")
;; (display (x-point p))
;; (display ",")
;; (display (y-point p))
;; (display ")"))