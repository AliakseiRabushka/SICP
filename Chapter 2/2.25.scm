(define first (list 1 3 (list 5 7) 9))   
(display first)                                  ;(1 3 (5 7) 9)
(cadr (cadr (cdr first)))                        ; 7 не (7)

(define second (list (list 7)))   
(display second)                      ;((7))
(car (car second))                    ; 7

(define trird (list 1 (list 2 (list 3 (list 4 (list 5 (list 6 7)))))))
(display trird)                                        ; (1 (2 (3 (4 (5 (6 7))))))
(cadr (cadr (cadr (cadr (cadr (cadr trird))))))        ;7


