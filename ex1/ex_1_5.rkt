#lang racket/base
(define (p) (p))
(define (test x y) (if (= x 0) 0 y))

(test 0 (p))

; Applicative order -> Infinite loop because (p) in (test 0 (p))
; is being evaluated before reaching the if-statement

; Normal order -> 0 because (p) is never evaluated when if-statement is true
