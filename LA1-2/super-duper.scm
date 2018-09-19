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
	(if (null? source)
	(list '())
	(list (replicate (car source) count) (super-duper (cdr source) count))
	)
)

(display (super-duper '() 0))
(display "\n")

(display (super-duper '(1) 2))
(display "\n")
