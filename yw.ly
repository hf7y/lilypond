\version "2.20.0"

#(define* (row lefts #:optional (rights '()))
	(define pair (cons lefts rights))
	(lambda (proc)
		(let ((proc-result (proc pair)))
			(set! pair (cdr proc-result))
			(car proc-result))))

#(define (left pair)
	(let ((lefts (car pair))
		  (rights (cdr pair)))
		(if (null? lefts) 
			(left (cons (reverse rights) '()))
			(cons (car lefts)
				  (cons (cdr lefts)
				  		(cons (car lefts)
				  			  rights))))))
#(define (right pair)
	(let ((lefts (car pair))
		  (rights (cdr pair)))
		(if (null? rights) 
			(right (cons '() (reverse lefts)))
			(cons (car rights)
				(cons (cons (car rights) 
								 lefts)
				  	  (cdr rights))))))

#(define (pair p)
	(cons p p))

#(define* (list-elems music #:optional property)
	(if property 
		(map (lambda (x)
				(ly:music-property x property))
			(ly:music-property music 'elements)) 
		(ly:music-property music 'elements)))

#(define (make-note p d)
	(make-music
		'NoteEvent
		'pitch p
		'duration d))

#(define (make-rest d)
	(make-music
		'RestEvent
		'duration d))
