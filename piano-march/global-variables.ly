\version "2.20.0"

#(define (g-tonic) (lambda () 
	0))

#(define (g-pitch-class-set)
	(list (ly:make-pitch 0)))

#(define* (g-duration-set #:optional arg)
	(list (ly:make-duration 0)))

#(define* (g-intensity #:optional arg)
	0)

#(display (g-intensity))