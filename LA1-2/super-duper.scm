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
	(if (list? element)
		(super-duper element count)
	
		(
  			(if (< count 2)
				(cons element '())
			)
			(if (> count 1)
				(cons element (replicate element (+ count -1)))
			)
		)
	)
)

(define (super-duper source count)
	(if (null? (car source)) ; source is empty
		(list '())

		(list (replicate (car source) count) (super-duper (cdr source) count))
	)
)

(display (replicate '1 2))
