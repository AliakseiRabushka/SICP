#|
                            ;Линейно рекурсивный процесс   
(define (multiply a b)     
(if (= b 0)        
0
(+ a (multiply a (- b 1)))))

(multiply 6 7)
|#


#|
 (+ 6 (* 6 (- 7 1)
  (+ 6 (+ 6(* 6 (- 6 1)
    (+ 6 (+ 6 (+ 6(* 6 (- 5 1)
      (+ 6 (+ 6 (+ 6 (+ 6(* 6 (- 4 1)
        (+ 6 (+ 6 (+ 6 (+ 6 (+ 6(* 6 (- 3 1)
          (+ 6 (+ 6 (+ 6 (+ 6(+ 6 (+ 6(* 6 (- 2 1)
            (+ 6 (+ 6 (+ 6 (+ 6 (+ 6 (+ 6 (+ 6 (* 6 (- 1 1)
            (+ 6 (+ 6 (+ 6 (+ 6 (+ 6 (+ 6 (+ 6 (0)
          (+ 6 (+ 6 (+ 6 (+ 6 (+ 6 (+ 6 (+ 6)
       (+ 6 (+ 6 (+ 6 (+ 6 (+ 6 (+ 12) 
     (+ 6 (+ 6 (+ 6 (+ 6 (+ 18)
    (+ 6 (+ 6 (+ 6 (+ 24)
  (+ 6 (+ 6 (+ 30)
(+ 6 (+ 36)
42
|#


#|
                          ;Линейная итерация (дополнительное задание)
(define (multiply a b)          
  (multiply-iter a b 0))
(define (multiply-iter a counter product)
  (if (= counter 0)
      product
      (multiply-iter a
                     (- counter 1)
                     (+ a product))))

(multiply 5 6)

; 6 6 0
; 6 5 6
; 6 4 12
; 6 3 18
; 6 2 24
; 6 1 30
; 6 0 36
; 36
|#


#|
                  ;рекурсивный процесс c логарифмическим числом шагов   
(define (double x)
  (* x 2))

(define (halve x)
  (/ x 2))

(define (dec x)
  (- x 1))

(define (even? b)
  (= (remainder b 2) 0))

(define (myltiply a b)     
  (cond ((= b 0) 0)
        ((even? b) (myltiply (double a) (halve b)))
        (else (+ a (myltiply a (dec b))))))
  
(myltiply 5 4)
|#


#|
                    ;итерация c логарифмическим числом шагов 
(define (double x)
  (* x 2))

(define (halve x)
  (/ x 2))

(define (dec x)
  (- x 1))

(define (even? b)
  (= (remainder b 2) 0))

(define (myltiply a b)
(myltiply-iter a b 0))

(define (myltiply-iter a b product)               
  (cond ((= b 0) product)
        ((even? b) (myltiply-iter (double a) (halve b) product))
        (else (myltiply-iter a  (dec b) (+ a product)))))

(myltiply 6 7) 
|#
