#lang racket/base
(require racket/format)

(define (validate expected actual)
  (if (= expected actual)
    "Passed!\n"
    "Failed.\n"
  )
)

(define (validate-str expected actual)
  (if (string=? expected actual)
    "Passed!\n"
    "Failed.\n"
  )
)

(define (assert-eq a b)
    (display 
        (if (= a b)
            "They're equal"
            "They're not equal"
        )
    )
)

(define (newline) (display "\n"))

(display "Exercise 1.1 \n")
(newline)

(define (one1)
  ;;;; Exercise 1.1.  Below is a sequence of expressions.
  ;;;; What is the result printed by the interpreter in response to each expression?
  ;;;; Assume that the sequence is to be evaluated in the order in which it is presented.

  (define (parse-as-str a b)
    (~a 
      10
      (+ 5 3 4)
      (- 9 1)
      (/ 6 2)
      (+ (* 2 4) (- 4 6))
      (+ a b (* a b))
      (= a b)
      (if (and (> b a) (< b (* a b)))
        b
        a)
      (cond ((= a 4) 6)
            ((= b 4) (+ 6 7 a))
            (else 25))
      (+ 2 (if (> b a) b a))
      (* (cond ((> a b) a)
               ((< a b) b)
               (else -1))
         (+ a 1))
      )
    )

  (parse-as-str 3 4)
)


(define expected-one1 (~a 10 12 8 3 6 19 #f 4 16 6 16))
(define result-one1 (~a (one1)))

(display "Expected: ") (display expected-one1)
(newline)
(display "Result: ") (display result-one1)
(newline)
(display (validate-str expected-one1 result-one1))

(newline)
(newline)

(define (one2)
  (display "Exercise 1.2")
  (newline )
  (newline )
  ;;;; Exercise 1.2.  Translate the following expression into prefix form
  ;;;; 5 + 4 + (2 - (3 - (6 + 4/3)))
  ;;;; / 3(6 - 2)(2 - 7)


  (define prefix-expression
    (/
      (+ 5 4 
         (- 2 (-
                3 (
                   + 6 (/ 4 5)
                   )
                )
            )

         )
      (* 3 (- 6 2) (- 2 7))
      )
    )
  prefix-expression
)

(define expected-one2 -37/150)
(define result-one2 (one2))

(display "Expected: ") (display expected-one2)
(newline)
(display "Result: ") (display result-one2)
(newline)
(display (validate expected-one2 result-one2))

;;;; Exercise 1.3.  Define a procedure that takes three numbers as arguments
;;;; and returns the sum of the squares of the two larger numbers.

(define (sq x)
    (* x x)
)

(define (lsqsum a b c)
  (define larger1 (max a b))
  (define larger2 (max larger1 c))

  (+ (sq larger1) (sq larger2))
)
