\version "2.20.0"

#(define (fit notes lower upper)
	(if (null? notes)
		'()
		(if (null? (ly:music-property (car notes) 'pitch))
			(cons (car notes) (fit (cdr notes) lower upper))
			(let ((car-pitch
					(ly:music-property
						(car notes)
						'pitch)))
				 (cond ((ly:pitch<?	car-pitch lower)
			   			(fit (cons
								(ly:music-transpose
									(ly:music-deep-copy (car notes))
									(ly:make-pitch 1 0))
								(cdr notes))
							lower
						 	upper))
			  		   ((ly:pitch<? upper car-pitch)
			  		   	(fit (cons
			  		   			(ly:music-transpose
									(ly:music-deep-copy (car notes))
			  		   				(ly:make-pitch -1 0))
			  		   			(cdr notes))
			  		   		lower
			  		   		upper))
			  		   (#t (cons (car notes)
			  		   			 (fit (cdr notes)
			  		   			 	  lower
			  		   			 	  upper))))))))
#(define (fit-range-by-id melody id)
	(make-music
		'SequentialMusic
		'elements
		(fit (ly:music-property melody 'elements) 
			 (car (range id))
			 (cdr (range id)))))

contextualize = #(define-music-function
	(type id music)((symbol? 'Staff) string? ly:music?)
		(make-music
			'ContextSpeccedMusic
			'context-type type
			'element (fit-range-by-id music id)
			'context-id id
			))

#(define (contextualize-each-voice chorale ids)
	(if (null? ids)
		'()
		(cons
			(contextualize (first-voice chorale (car ids)))
			(contextualize-each-voice
				(butfirst-voices chorale)
				(cdr ids)))))