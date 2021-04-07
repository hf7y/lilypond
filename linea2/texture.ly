\version "2.20.0"
\include "./contextualize.ly"

#(define* (chorale->texture proc chorale #:optional ids)
	;run proc on chorale for each id
	;creating context specced output per id
	;wrapped in simultaneous
	(letrec ((wrapped-fxn 
				(lambda (proc chorale ids)
					(if (null? ids)
						'()
						(cons (contextualize
								(car ids)
								(proc
									chorale
									(car ids)))
							  (wrapped-fxn
							  	proc
							  	(rotate chorale)
							  	(cdr ids)))))))
			(make-music
				'SimultaneousMusic
				'elements
				(wrapped-fxn proc chorale ids))))