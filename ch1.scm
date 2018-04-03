#lang sicp

(define size 2)
(define pi 3.14159)
(define radius 10)
(define area (* pi (* radius radius)))

(define circumference (* 2 pi radius))

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
;; (define x 6)
;; (and (> x 5) (< x 10))

;; define a predicate to test whether one number is greater than or equal to another
(define (>= x y) (or
                  (> x y) (= x y)))

;; Exercise 1.3
;; Define a procedure that takes threee numbers as arguments and returns the sum of the squares
;; of the two larger numbers
(define (max x y)
  (cond ((> x y) x)
        (else y)))

(define (second-largest x y z)
  (let ((m (max (max x y) z)))
    (cond ((= z m) (max x y))
          ((= y m) (max x z))
          ((= x m) (max y z)))))

(define (sum-of-squares-larger a b c)
  (cond ((and (>= b a) (>= c a)) (sum-of-squares b c))
        ((and (>= a c) (>= b c)) (sum-of-squares a b))
        ((and (>= a b) (>= c b)) (sum-of-squares a c))))

(sum-of-squares-larger 10 2 3)

;; ----------------------------------------------------------------

;; Square root using Newton's method

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (good-enough? guess x)
  (cond
    ((<
      (/ (abs (- (square guess) x)) x)
      0.001) true)
    (else false)))

(define (improve guess x)
  (average (/ x guess) guess))

(define (average x y)
  (/ (+ x y) 2))

(define ('sqrt x) (sqrt-iter 1.0 x))

(exact->inexact ('sqrt 2))

;; ----------------------------------------------------------------


































  