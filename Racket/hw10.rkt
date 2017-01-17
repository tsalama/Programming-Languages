; Tarek Salama


;Question 1

(display "Question 1: ")(newline)

(+ 3 5 7)

(+ 3 3 5 7)

(+ (* 3 2) (* 3 8 8))

(+ (* 3 2) (* 9 9) (/ 18 3))

(/ (+ 2 3 6 8 10 12 14) (+ 2 3 6))
(newline)





;Question 2 (Simple arithmetic that shows how defined "three" can replace the number 3)

(display "Question 2: ")(newline)

(define three 3)

(+ three 5 7)

(+ three three 5 7)

(+ (* three 2) (* three 8 8))

(+ (* three 2) (* 9 9) (/ 18 three))

(/ (+ 2 three 6 8 10 12 14) (+ 2 three 6))
(newline)





;Question 3 (Returns the area of a rectangle)

(define base 2)
(define height 3)

(define (RectArea baseIn heightIn)
  (* baseIn heightIn)
)

(display "Question 3 (b: 2, h: 3):")(newline)
(RectArea base height)(newline)





;Question 4 

;Prints and returns area
(define (printVal input)
  (begin
    (display "Area: ")
    (display input)
    (newline)
    input
   ) 
)  

;Returns the volume of a rectangle
(define (RectVol baseIn heightIn)
  (display "Enter depth: ")
  (define depth (read))
  (* (printVal (RectArea baseIn heightIn)) depth)
)

(display "Question 4 (b: 2, h: 3):")(newline)
(RectVol base height)(newline)





;Question 5 (Returns the volume difference of two rectangles)

(define base2 5) 
(define height2 6)

(define (DiffVol baseIn heightIn baseIn2 heightIn2)
  (- (RectVol baseIn heightIn) (RectVol baseIn2 heightIn2))
)

(display "Question 5 (b: 2, h: 3, b2: 5, h2: 6):")(newline)
(DiffVol base height base2 height2) (newline)





;Question 6 (Returns the area of a rectangle, after using let-form for the base and height.)
;           (No parameters in order to test the let-form values.)

(define (RectAreaLet)
  (let((base 8) (height 9))
    (* base height)
  )
)  

(display "Question 6 (b: 8, h: 9):")(newline)
(RectAreaLet)(newline)



;Question 7 (Returns the volume of a rectangle, after using let-form for the base and height.)
;           (No parameters in order to test the let-form values.)

(define (RectVolLet)
  (let((base 10) (height 11))
    (display "Enter depth: ")
    (define depth (read))
    (* (printVal (RectArea base height)) depth)
  )
)  

(display "Question 7 (b: 10, h: 11):")(newline)
(RectVolLet)(newline)

(display "End of program!")