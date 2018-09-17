; Scheme super-duper program 

(define (super-duper '(x y))
  (if (null? '(x y)
      0
      (+ (car seq) (sum (cdr seq)))))

(display (super-duper '(x y)))
(display "\n")
