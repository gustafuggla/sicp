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

(define a 0.0000005)
(define b (sqrt a))
(abs (- a (square b)))

(define c 5e12)
(define d (sqrt c))
(abs (- c (square d)))





(define (new-sqrt-iter guess prev-guess x)
    (if (new-good-enough? guess prev-guess) guess (new-sqrt-iter (improve guess x) guess x))
)

(define (new-good-enough? guess prev-guess)
    (< (abs (- guess prev-guess)) 0.001)
)

(define (new-sqrt x) (new-sqrt-iter 1.0 0 x))


(define e 0.0000005)
(define f (new-sqrt e))
(abs (- e (square f)))

(define g 5e12)
(define h (new-sqrt g))
(abs (- g (square h)))