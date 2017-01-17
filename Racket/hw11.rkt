;Question 1

(define (Ackermann s t) ;Size-n problem
  (cond
    ((= s 0)(+ t 1)) ;Stopping condition (= s 0) and return value (+ t 1)
    ;Construction of size-n solution from size-m definition (2 lines below)
    ((and (> s 0) (= t 0)) (Ackermann (- s 1) 1)) ;Size-m problem
    ((and (> s 0) (> t 0)) (Ackermann (- s 1) (Ackermann s (- t 1)))) ;Size-m problem
  )
)

(display "(#1) Ackermann test: ")
(newline)
(display "Ackermann(1,1) = ")
(Ackermann 1 1)
(display "Ackermann(3,7) = ")
(Ackermann 3 7)
(newline)



;Question 2

(define (combine-four lst1 lst2 lst3 lst4)
  (append lst1 lst2 lst3 lst4)
)

(display "(#2)combine-four test: ")
(newline)
(display "(combine-four '(1 2) '(3 4) ‘(5 6) ‘(7 8 9)) = ")
(combine-four '(1 2) '(3 4) '(5 6) '(7 8 9))
(newline)



;Question 3
;3.1

(define (last-n lst n)
  (list-tail lst (- (length lst) n))
)

(display "(#3.1) last-n test: ")
(newline)
(display "(last-n '(1 6 3 4 5) 2) = ")
(last-n '(1 6 3 4 5) 2)

;3.2

(display "(#3.2) = ")
((lambda (lst n) (list-tail lst (- (length lst) n))) '(1 6 3 4 5) 2)  
(newline)



;Question 4

(define (first-n lst)
  (display "Enter n: ")
  (define n (read))
  (display "= ")
  (first lst n)
)

(define (first lst n)
  (if (= n 0) '()
    (cons (car lst) (first (cdr lst) (- n 1))))
)

(display "(#4) first-n test: ")
(newline)
(display "(first-n '(1 5 3 4 5)) with input n = ")
(newline)
(first-n '(1 5 3 4 5))
(newline)



;Question 5

(define (shuffle lst1 lst2)
  (if (null? lst1) lst2
    (if (null? lst2) lst1
      (cons (car lst1) (cons (car lst2) (shuffle (cdr lst1) (cdr lst2))))
    )
  )
)

(display "(#5) shuffle test: ")
(newline)
(display "(shuffle '(1 2 3) '(a b c)) = ")
(shuffle '(1 2 3) '(a b c))
(newline)



;Question 6

(define (shufflePairs one two)
  (if (null? one) two
    (if (null? two) one
      (cons (cons (car one) (car two)) (shufflePairs (cdr one) (cdr two)))
    )
  )
)

(display "(#6) shufflePairs test: ")
(newline)
(display "(shufflePairs '(1 2 3) '(a b c)) = ")
(shufflePairs '(1 2 3) '(a b c)) 
(newline)



;Question 7

(define (addSquare lst)
  (if (null? lst) (display "empty list.")
      (addNonEmptyList lst)
  )
)

(define (addNonEmptyList lst)
  (if (null? lst) 0
    (+ (* (car lst) (car lst)) (addNonEmptyList (cdr lst)))
  )      
)

(display "(#7) addSquare & addNonEmptyList tests: ")
(newline)
(display "(addSquare '()) = ")
(addSquare '())
(newline)
(display "(addNonEmptyList '()) = ")
(addNonEmptyList '()) 
(display "(addNonEmptyList '(1 4 3 2)) = ")
(addNonEmptyList '(1 4 3 2)) 
(newline)
