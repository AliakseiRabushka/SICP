(define (square x) (* x x))
(define nil (list))

;; (define (square-list items)
;;   (define (iter things answer)
;;     (if (null? things) 
;;         answer 
;;         (iter (cdr things)
;;               (cons (square (car things))
;;                     answer))))
;;   (iter items nil))

;;  Последний элемент с примененной к нему процедурой square из входного списка будет последний добавленный элемент
;; в (новый) результирующий список. Новый результирующий список получается перевернутым, потому-что процедура
;; проходя по списку берет элемент из начала входного списка, применяет к нему square и потом добавляет его в начало 
;; результирующего списка

(define (square-list items)
  (define (iter things answer)
    (if (null? things) 
        answer 
        (iter (cdr things)
              (cons answer
                    (square (car things))))))
  (iter items nil))

(square-list (list 1 2 3 4 5))

;; (((((() . 1) . 4) . 9) . 16) . 25)

;; Если мы поменяем местами (square (car things)) и answer, то получится, что первый аргумент cons будет список, а
;; второй аргумент число. С каждой итерацией процедура соединяет в пару список и квадрат очередного числа с входного списка
;; и помещает их в новый список.
