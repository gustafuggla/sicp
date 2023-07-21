#lang racket/base

(define (new-if predicate then-clause else-clause)
    (cond (predicate then-clause)
          (else else-clause)
    )
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




; Infinite loop due to both branches of new-if being evaluated
(define (sqrt-iter guess x)
    (new-if (good-enough? guess x)
            guess
            (sqrt-iter (improve guess x) x)
    )    
)

; Produces a result as only one branch of cond is being evaluated
; (define (sqrt-iter guess x)
;     (cond ((good-enough? guess x) guess)
;           (else (sqrt-iter (improve guess x) x))
;     )
; )

(sqrt 2)