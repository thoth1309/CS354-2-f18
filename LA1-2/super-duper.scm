#!/bin/guile -s
!#
;*******************************************************************************
; Program: Super-Duper program
; Function: takes atoms from source and iterates them count times
; Class: CS354-002
; Date: 09/17/2018
; Author: Jason Egbert
;*******************************************************************************

(define (replicate element count)
	(if (null? element)
		(list '())
	)

	(if (list? element)
		(super-duper element count)
	)	

	(if (> count 1)
		(list (cons element (replicate element (+ count -1))))
	)
		
  	(if (< count 2)
		(cons element '())
	)
)

(define (super-duper source count)
	(if (null? (car source)) ; source is empty
		(list '())

		(list (replicate (car source) count) (super-duper (cdr source) count))
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
(define (super-duper source count)
	(if (null? source)
	(list '())
	(list (replicate (car source) count) (super-duper (cdr source) count))
	)
)

(display (replicate '1 2))
(display "(super-duper 123 1) = ")
(display (super-duper 123 1))
(display (super-duper '() 0))
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
(display (super-duper '(1) 2))
(display "\n")
