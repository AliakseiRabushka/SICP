;Упражнение 1.30.
;Процедура sum порождает линейную рекурсию. Ее можно переписать так, чтобы суммирование
;выполнялось итеративно. Покажите, как сделать это, заполнив пропущенные выражения в следу-
;ющем определении:

(define (sum term a next b)
  (define (iter a result)
    (if (>= a b)
      result
        (iter (term a) (+ (next a) result))))
  (iter a b))

(define (inc n) (+ n 1))
(define (identity x) x)

(define (sum-int a b)
(sum inc a identity b))

(sum-int 1 10)
  
#|
(define (sum-int a b)
(define (sum-iter a result)
  (if (>= a b)
      result 
      (sum-iter (+ a 1) (+ a result))))
  (sum-iter a b))

(sum-int 1 5)
  ;(sum-iter (2)  (6)))
  ;(sum-iter (3)  (8)))
  ;(sum-iter (4)  (11)))
  ;(sum-iter (5)  (15)))
 ; 15
|#
 #|
(define (sum term a next b)
  (if (> a b)
  0
  (+ (term a)
(sum term (next a) next b))))

(define (inc n) (+ n 1))

(define (indentity x) x)
  
(define (sum-int a b)
  (sum indentity a inc b))

(sum-int 2 3)
|#
