\version "2.20.0"
\include "./lib.ly"
\include "./chorale.ly"
\include "../z/natural-transpose.ily"

%rhythmic net is roughly wholenote:halfnote cells 3/2 meter
%rhythm is aberrated by dots
%homorhythmic through the ensemble

%harmonies drawn from pitch hierarchy (tree?)
%hierarchies overlap to make the progression
% explore the depth of the tree (i.e. chromaticism)
%    over the course of the phrase (shape me!)


%new chord can hit like a direct modulation
%   maybe emphasize change in chord quality


% repeat the logic of this phrase for however many
% chord qualities you like
#(define (make-chord elements)
	(make-music
		'EventChord
		'elements
		elements))

#(define (sym-chord-pitches p interval-list)
	(if (null? interval-list)
		(list p)
		(append
			(list
				(ly:pitch-transpose
					p
					(car interval-list))
				(ly:pitch-transpose
					p
					(ly:pitch-negate
						(car interval-list))))
			(sym-chord-pitches
				p 
				(cdr interval-list)))))

$(define pitch-countdown3 (countdown 1))
#(define transposition-repeat
	(let ((interv (ly:make-pitch 0 4)))
		(lambda ()
			(if (> (random 100) (pitch-countdown3 100))
				(ly:make-pitch 0 0)
				(ly:pitch-transpose
					(if (zero? (random 2))
						interv
						(ly:pitch-negate interv))
					(transposition-repeat))))))

#(define make-repeat-melody
	(lambda* (init-note
			 tactus
			 #:optional (rest-chance 0))
		(let ((num-fits
				(ly:moment-main 
					(ly:moment-div
						(ly:music-length init-note)
						(ly:duration-length tactus)))))
			(letrec ((wrapped-iter
						(lambda (note n)
							(if (zero? n)
								'()
								(if (> (random 100)
										rest-chance)
									(cons 
										(transpose-note
											transposition-repeat
											note)
										(wrapped-iter 
											note
											(- n 1)))
									(cons
										(make-rest
											tactus)
										(wrapped-iter 
											note
											(- n 1))))))))
					(let ((elements
							(wrapped-iter
								(make-note
									(pitch init-note)
									tactus)
								(floor num-fits))))
						(make-melody
							(append
								elements
								(make-rests
									(moment->durations
										(ly:make-moment
											(- num-fits
											   (floor num-fits))))))))))))
#(define make-repeat-chorale
	(lambda* (num-voices
			  init-note
			  tactus
			  #:optional (rest-chance 0))
		(map-to-voices
			(lambda (melody)
				(make-repeat-melody
					init-note
					tactus
					rest-chance))
			(make-empty-chorale num-voices))))

#(define* (repeat-music melody #:optional (n 8) (cohere 50))
	(make-repeat-chorale
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
		(duration (first-note melody))
		(+ cohere (decoherence 100))))