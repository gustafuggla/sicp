#lang racket/base

(define (sqrt-iter guess x)
    (if (good-enough? guess x) guess (sqrt-iter (improve guess x) x))
)

(define (improve guess x)
    (average guess (/ x guess))
)

(define (average x y)
    (/ (+ x y) 2)
)

(define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001)
)

(define (square x) (* x x))

(define (sqrt x) (sqrt-iter 1.0 x))

(define (new-sqrt-iter guess prev-guess x)
    (if (new-good-enough? guess prev-guess) guess (new-sqrt-iter (improve guess x) guess x))
)

(define (new-good-enough? guess prev-guess)
    (< (abs (- 1 (/ guess prev-guess))) 1e-7)
)

(define (new-sqrt x) (new-sqrt-iter 1.0 0.1 x))
