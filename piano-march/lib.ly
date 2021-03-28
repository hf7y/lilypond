\version "2.20.0"

%Small Constructors
#(define (make-note p d)
	(make-music
		'NoteEvent
		'pitch p
		'duration d))

#(define (make-rest d)
	(make-music
		'RestEvent
		'duration d))

#(define (make-skip d)
	(make-music
		'SkipEvent
		'duration d))

#(define (make-drum type d)
	(make-music
		'NoteEvent
		'drum-type type
		'duration d))

#(define* (list-elems music #:optional property)
	(if property 
		(map (lambda (x)
				(ly:music-property x property))
			(ly:music-property music 'elements)) 
		(ly:music-property music 'elements)))

#(define (concat as bs)
	(if (null? as)
		bs
		(cons
			(car as)
			(concat (cdr as) bs))))
