(define (f n)             ; рекурсивный процесс
  (if (< n 3)
      n
      (+ (f (- n 1)) ;9
         (f (- n 2)) ;8
         (f (- n 3))))) ;7

(f 10) 


#|(define (f n)             ; итеративный процесс
  (define (f-iter n-1 n-2 n-3)
    (if (< n 3)
      n
    ;((f-iter (+ (n-1) (n-2) (n-3))))))  n ≥ 3

  
  