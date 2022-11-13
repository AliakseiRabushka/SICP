(define (square x) (* x x))

(define (sum-of-square x y)
  (+ (square x) (square y)))

(define (sum-of-square-max a b c)
   (cond ((and (> a b) (> b c)) (sum-of-square a b))
         ((and (> b a) (> a c)) (sum-of-square a b))
         ((and (> b a) (> c b)) (sum-of-square b c))
         ((and (> b a) (> c a)) (sum-of-square b c))
         (else (sum-of-square a c))))
   
   (sum-of-square-max  4 6 2) 
  


  #|Ответ 52

  Определите процедуру, которая принимает в качестве аргументов три числа и возвращает сумму
квадратов двух бо ́льших из них.