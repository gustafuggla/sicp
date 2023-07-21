#lang racket/base

(define (f1 n)
    (if (< n 3) 
        n 
        (+ (f1 (- n 1)) (* 2 (f1 (- n 2))) (* 3 (f1 (- n 3))))
    )
)

(define (f2 n)
    (if (< n 3) 
        n 
        (iter (- n 3) 2 1 0)
    )
)

(define (iter count n1 n2 n3)
    (if (= count 0) 
        (+ n1 (* 2 n2) (* 3 n3)) 
        (iter (- count 1) (+ n1 (* 2 n2) (* 3 n3)) n1 n2) 
    )
)