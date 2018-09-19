#!/bin/guile -s
!#
;*******************************************************************************
; Program: Super-Duper program
; Function: takes atoms from source and iterates them count times
; Class: CS354-002
; Date: 09/17/2018
; Author: Jason Egbert
;*******************************************************************************

(define (copy element count)
    (cond
;		((null? element)
;			'()	
;		)
		((list? element)
			(super-duper element count)
		)
    	((> count 0)
			(cons element (copy element (+ count -1))) 
		)
		(else
			'()
		)
	)
)

(define (super-duper list count)
	(cond
		((< count 2)
			(cons list '())
		)
		((not (list? list))
			(cons list '())
		)
		((null? list)
			(cons list '())
		)
		((null? (cdr list))
			(cons (copy (car list) count) '())
		) 
		(else
			(cons (copy (car list) count) (super-duper (cdr list) count))
		)
	)
)

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
