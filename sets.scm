#lang sicp

(define (test a b)
  (+ a b))

(+
 (* 3
    (+ (* 2 4)
       (+ 3 5)))
 (+ (- 10 7)
    6))

(define size 2)
(define pi 3.14159)
(define radius 10)
(define area (* pi (* radius radius)))
area

(define circumference (* 2 pi radius))
circumference

(define (square x) (* x x))
(define (sum-of-squares x y) (+ (square x) (square y)))
(define (f a)
  (sum-of-squares (+ a 1) (* a 2)))

(define (abs x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))))
(define (abs2 x)
  (cond ((< x 0) (- x))
        (else x)))
(define (abs3 x)
  (if (< x 0)
      (- x)
      x))

;; 5 < x < 10
(define x 6)
(and (> x 5) (< x 10))

;; define a predicate to test whether one number is greater than or equal to another
(define (>= x y) (or
                  (> x y) (= x y)))

;; Exercise 1.1
