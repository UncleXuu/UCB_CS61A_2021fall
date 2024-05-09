(define (over-or-under num1 num2) 
    (if (< num1 num2) 
        -1
        (if (> num1 num2) 1 0
        )
    )
)

(define (make-adder num)
    (lambda (inc) (+ num inc))
)

(define (composed f g) 
    (lambda (x)
        (f
            (g x)
        )
    )
)

(define lst 
    (cons (cons 1 nil) 
        (cons 2 (cons (cons 3 (cons 4 nil)) (cons 5 nil))))
)

(define (remove item lst)
    (filter
        (lambda (x) (not (= x item)))
        lst
    )
)
