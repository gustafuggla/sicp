#lang racket/base

(define (pascal row col)
  (cond ((> col row) 0) ; not allowed
        ((= col 1) 1)
        ((= col row) 1)
        (else (+ (pascal (- row 1) (- col 1)) (pascal (- row 1) col)))
  )
)

