\version "2.20.0"
\include "/home/zach/lilypond/linea2/lib.ly"
\include "/home/zach/lilypond/linea2/chorale.ly"
\include "/home/zach/lilypond/linea2/textures/chance-air.ly"

%chorale->texture calls a proc that takes chorale and list
%this is one of those procs


#(define chance-rest 50)

#(define chance-rest-air
	(lambda ()
		50))

#(define (rest-bar bar)
	(make-melody
		(cons
			(make-timesig (ly:music-length bar))
			(map
				make-skip
				(moment->durations (ly:music-length bar))))))

#(define (chance-rest-bar bar id air)
	;bar is a list of note events that does not include a bar line
	(if (> chance-rest (random 100))
		(if (> air (random (chance-rest-air)))
			(air-bar bar id)
			(rest-bar bar))
		(make-melody
			(cons
				(make-timesig (ly:music-length bar))
				(list-elems bar)))))

#(define* chance-rest-proc
	(lambda* (n #:optional (air 1))
		(begin
			(set! chance-rest n)
			(lambda (chorale id)
				(map-to-bars 
					(lambda (bar)
						(chance-rest-bar
							bar
							id
							air))
					(first-voice chorale))))))

#(define* rest-proc
	(lambda (chorale id)
		(map-to-bars 
			rest-bar
			(first-voice chorale))))