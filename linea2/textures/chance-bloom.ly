\version "2.20.0"
\include "/home/zach/lilypond/linea2/lib.ly"
\include "/home/zach/lilypond/linea2/chorale.ly"
\include "./contextualize.ly"

%chorale->texture calls a proc that takes chorale and list
%this is one of those procs


#(define chance-bloom 50)
#(define bloom-chord #{c e g#})
#(define next-bloom
	(lambda ()
		(let ((next (car (list-elems bloom-chord))))
			 (set! bloom-chord
			 	   (make-melody
			 	   		(append
			 	   			(cdr (list-elems bloom-chord))
			 	   			(list next))))
			 (pitch next))))

#(define (bloom-bar pitch bar)
	;bar is a list of note events that does not include a bar line
	(make-melody
		(append
			(list
				(make-timesig (ly:music-length bar)))
			(append 
				(make-tied-notes*
					pitch
					(moment->durations
						(ly:music-length bar)))
				(list (make-music
		          'OttavaMusic
		          'ottava-number
		          0))))))

#(define (identity-bar bar)
	;bar is a list of note events that does not include a bar line
	(make-melody
		(cons
			(make-timesig (ly:music-length bar))
			(list-elems bar))))


#(define (chance-bloom-melody melody id)
	(let ((stable-pitch (next-bloom)))
		(if (> chance-bloom (random 100))
			(map-to-bars 
				(lambda (bar)
					(bloom-bar
						stable-pitch
						bar))
				melody)
			(map-to-bars
				identity-bar
				melody))))


#(define* chance-bloom-proc
	(lambda (chord n)
		(begin
			(set! chance-bloom n)
			(set! bloom-chord chord)
			(lambda (chorale id)
				(chance-bloom-melody
					(first-voice chorale)
					id)))))