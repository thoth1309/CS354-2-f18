#!/bin/guile -s
!#
;*******************************************************************************
; Program: Super-Duper program
; Function: takes atoms from source and iterates them count times
; Class: CS354-002
; Date: 09/17/2018
; Author: Jason Egbert
;*******************************************************************************

(define (iterate element count iteration)
   	(cond
		((> iteration 0)
	  		(cons (super-duper element count) (iterate element count (+ iteration -1)))
		)
		(else
		  	'()
		)
	)
)

(define (copy element count)
    (cond
		((list? element)
				(iterate element count count)
		)
    	((> count 0)
			(cons element (copy element (+ count -1))) 
		)
		(else
			'()
		)
	)
)

(define (super-duper source count)
	(cond
		((< count 2)
			(cons source '())
		)
		((not (list? source))
			(cons source '())
		)
		((null? source)
			(cons source '())
		)
		((null? (cdr source))
			(cons (copy (car source) count) '())
		) 
		(else
			(cons (copy (car source) count) (super-duper (cdr source) count))
		)
	)
)



; below are tests for the program super-duper. To run them, simply remove the
; comment blocks above (#|) and below (|#) to run the tests and see the results


(display "(super-duper 123 1) = ")
(display (super-duper 123 1))
(display "\n")

(display "(super-duper 123 2) = ")
(display (super-duper 123 2))
(display "\n")

(display "(super-duper '() 1) = ")
(display (super-duper '() 1))
(display "\n")

(display "(super-duper '() 2) = ")
(display (super-duper '() 2))
(display "\n")

(display "(super-duper '(x) 1) = ")
(display (super-duper '(x) 1))
(display "\n")

(display "(super-duper '(x) 2) = ")
(display (super-duper '(x) 2))
(display "\n")

(display "(super-duper '(x y) 1) = ")
(display (super-duper '(x y) 1))
(display "\n")

(display "(super-duper '(x y) 2) = ")
(display (super-duper '(x y) 2))
(display "\n")

(display "(super-duper '((a b) y) 3) = ")
(display (super-duper '((a b) y) 3))
(display "\n")

(display "(super-duper '(y (a b)) 3) = ")
(display (super-duper '(y (a b)) 3))
(display "\n")

(display "(super-duper '((a b c) (x y z)) 3) = ")
(display (super-duper '((a b c) (x y z)) 3))
(display "\n")

