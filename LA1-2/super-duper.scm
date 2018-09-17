#!/bin/guile -s
!#

; Scheme super-duper program 

(define (super-duper source count)
	(if (null? source)
		0
	((car source) (super-duper (cdr source) count))))
;function should not produce any output
(display (super-duper source count))
(display "\n")
