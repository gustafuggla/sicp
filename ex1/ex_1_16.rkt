#lang racket/base


(define (faster-expt b n)
    (fei 1 b n)
)

(define (fei a b n)
    (cond ((= n 0) a)
          ((even? n) (fei a (square b) (/ n 2)))
          (else (fei (* a b) b (- n 1)))
    )
)

(define (even? n)
    (= (remainder n 2) 0)
)

(define (square x) (* x x))
