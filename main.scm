(define (last-pair items)
  (if (null? (cdr items))
      (car items)
      (last-pair (cdr items))))

(define (my-reverse items) 
  (car (last-pair items)))

(my-reverse (list 23 72 149 34 74 3 12 57 39 4567 12345))
;; (last-pair (list 23 72 149 34 74 3 12 57 39 4567 12345))  ;12345

;; Упражнение 2.18.
;; Определите процедуру reverse, которая принимает список как аргумент и возвращает список,
;; состоящий из тех же элементов в обратном порядке:
;; (reverse (list 1 4 9 16 25))
