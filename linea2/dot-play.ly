\version "2.20.0"
% \include "./lib.ly"
% \include "./chorale.ly"
% \include "./texture.ly"
% \include "./textures/identity.ly"
% \include "../z/natural-transpose.ily"

#(define (cadence? bar)
	;cadence occurs when length of bar is greater than 8 beats
	(ly:moment<? (ly:make-moment 3/2) (ly:music-length bar)))

#(define (dp-process-cadence bar)
	(make-melody
		(cons
			(ly:music-deep-copy (first-note bar))
			(make-rests
				(moment->durations*
					(ly:moment-sub
						(ly:music-length bar)
						(ly:music-length (first-note bar))))))))

#(define (dp-process-regular bar)
	(make-melody
		(append
			(decohere (first-note bar))
			(butfirst-notes bar))))

#(define* (decohere note #:optional (n 0))
	;tactus is always 16th note
	;repeat new tactus to fill gap
	;returns note list
	(let* ((tactus
			(ly:make-duration 4))
		  (n-max (floor (ly:moment-main (ly:moment-div
		  			(ly:music-length note)
		  			(ly:duration-length tactus)))))
		  (articulations (ly:music-property note 'articulations))
		  (new-note (make-music
		  				'NoteEvent
		  				'pitch (pitch note)
		  				'duration tactus
		  				'articulations articulations)))
		(if (<= n-max 1)
			(list new-note)	
			(let* ((rest-n (max (random (floor (+ 1 (decoherence n-max)))) 0))
				   (downbeat
					(append
						;(make-n-rests
						;	rest-n
						;	tactus)
						;slower but nicer rests below
						(make-rests
							(moment->durations
								(ly:moment-mul
									(ly:duration-length tactus)
									(ly:make-moment rest-n))))
						(list new-note))))
				(append
					downbeat
					(make-rests
						(moment->durations
							(ly:moment-sub
								(ly:music-length note)
								(ly:moment-mul
									(ly:duration-length tactus)
									(ly:make-moment (+ rest-n 1)))))))))))

#(define (dp-process-bar bar)
	(if (cadence? bar)
		(dp-process-cadence bar)
		(dp-process-regular bar)))

#(define (pre-intro-chorale chorale)
	(letrec ((wrapped-fxn 
				(lambda (ch n)
					(if (zero? n)
						'()
						(cons
							(map-to-bars
								dp-process-bar
								(first-voice ch))
							(wrapped-fxn (rotate ch) (- n 1)))))))
		(transpose-chorale
			transposition
			(make-chorale
				(wrapped-fxn chorale 8)))))

%descent music

#(define make-descent-melody
	(lambda* (init-note
			 interval-list
			 tactus
			 #:optional (rest-chance 0))
		(let ((num-fits
				(ly:moment-main 
					(ly:moment-div
						(ly:music-length init-note)
						(ly:duration-length tactus)))))
			(letrec ((wrapped-iter
						(lambda (note intervals n)
							(if (zero? n)
								'()
								(if (> (random 100)
										rest-chance)
									(cons 
										note
										(wrapped-iter 
											(ly:music-transpose
												(ly:music-deep-copy note)
												(car intervals))
											(append
												(cdr intervals)
												(list (car intervals)))
											(- n 1)))
									(cons
										(make-rest
											tactus)
										(wrapped-iter 
											note
											intervals
											(- n 1))))))))
					(let ((elements
							(wrapped-iter
								(make-note
									(pitch init-note)
									tactus)
								interval-list
								(floor num-fits))))
						(make-melody
							(append
								elements
								(make-rests
									(moment->durations
										(ly:make-moment
											(- num-fits
											   (floor num-fits))))))))))))
#(define make-descent-chorale
	(lambda* (num-voices
			  init-note
			  interval-list
			  tactus
			  #:optional (rest-chance 0))
		(map-to-voices
			(lambda (melody)
				(transpose-melody
					transposition-descent
					(make-descent-melody
						init-note
						interval-list
						tactus
						rest-chance)))
			(make-empty-chorale num-voices))))

#(define* (descent-music melody #:optional (n 8) (cohere 50))
	(make-descent-chorale
		; num-voices
		; init-note
		; interval-list
		; tactus
		; rest-chance 0
		n
		(make-note
			(pitch (first-note melody))
			(moment->duration
				(ly:music-length
					melody)))
		(letrec ((get-intervals
					(lambda (note-list)
						(if (null? (cdr note-list))
							'()
							(cons
								(ly:pitch-diff
									(cadr note-list)
									(car note-list))
								(get-intervals (cdr note-list)))))))
				(get-intervals (list-elems melody 'pitch)))
		(duration (first-note melody))
		(+ cohere (decoherence 100))))