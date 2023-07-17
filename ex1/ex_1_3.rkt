#lang racket/base
(define (sum-of-two-largest a b c)
      (cond ((and (< a b) (< a c)) (+ (square b) (square c)))
            ((and (< b a) (< b c)) (+ (square a) (square c)))
            (else (+ (square a) (square b)))
      )
)

(define (square x) (* x x))

(sum-of-two-largest 3 4 5)
(sum-of-two-largest 4 3 5)
(sum-of-two-largest 3 4 4)
(sum-of-two-largest 4 4 4)