#lang racket/base

(define (a-plus-abs-b a b)
    ((if (> b 0) + -) a b)
)

; Functions can be returned as any other variable