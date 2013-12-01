;; Exercise 1.1
10
;; => 10

(+ 5 3 4)
;; => 12

(- 9 1)
;; => 8

(/ 6 2)
;; => 3

(+ (* 2 4) (- 4 6))
;; => 6

(define a 3)
;; => #<void>

(define b (+ a 1))
;; => #<void>

(+ a b (* a b))
;; => 19

(= a b)
;; => #f

(if (and (> b a) (< b (* a b)))
    b
    a)
;; => 4

(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))
;; => 16

(+ 2 (if (> b a) b a))
;; => 6

(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1))
;; => 16


;; Exercise 1.2
(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 3)))))
   (* 3 (- 6 2) (- 2 7)))

;; Exercise 1.3
(define (square x) (* x x))

(define (sum-of-squares x y) (+ (square x) (square y)))

(define (square-of-larger-two-among-three a b c)
  (cond ((and (> a c) (> b c)) (sum-of-squares a b))
        ((and (> b a) (> c a)) (sum-of-squares b c))
        (else (sum-of-squares a c))))

;; Exercise 1.4
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

;; If b > 0, then return (+ a b), else return (- a b)

;; Exercise 1.5
(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))

;; With `applicative order` (or `call by value`) evaluation, the
;; program will run into an infinite loop, since in (test 0 (p)), it will
;; evaluate the argument `(p)`, which will in turn call `p` itself.  With
;; `normal order` (or `call by name`), the program will return 0, since
;; the else will never get evaluated in this case.







