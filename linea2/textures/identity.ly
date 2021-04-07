\version "2.20.0"
\include "/home/zach/lilypond/linea2/lib.ly"
\include "/home/zach/lilypond/linea2/chorale.ly"

%chorale->texture calls a proc that takes chorale and list
%this is one of those procs

%turn music into bigger moments
#(define (map-to-bars proc melody)
	(if (or (null? melody) (empty-melody? melody))
		melody
		(melody-add
			(proc (first-bar melody))
			(map-to-bars proc (butfirst-bars melody)))))

#(define (identity pitch duration)
	;simplest form of buzz
	(make-note pitch duration))

#(define (identity-bar bar)
	;bar is a list of note events that does not include a bar line
		(make-melody
			(cons
				(make-timesig (ly:music-length bar))
				(list-elems bar))))

#(define* identity-proc
	(lambda (chorale id)
		(map-to-bars identity-bar
			(first-voice chorale))))