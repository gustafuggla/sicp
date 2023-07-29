#lang racket/base

(define (cube x) (* x x x))

(define (p x) (- (* 3 x) (* 4 (cube x))))

(define (sine angle)
    (if (not (> (abs angle) 0.1))
        angle
        (p (sine (/ angle 3.0)))
    )
)

; a) 5. 12.15 / 3^5 = 0.05, which is smaller than 0.1

; b) The number of operations as well as the space required grows linearly with the size 
;    of the argument 'angle'