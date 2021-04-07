\version "2.20.0"
\include "/home/zach/lilypond/linea2/lib.ly"
\include "/home/zach/lilypond/linea2/chorale.ly"

%chorale->texture calls a proc that takes chorale and list
%this is one of those procs

%examples
#(define first-proc
	;takes first melody in chorale then the next one
	;works because chorale->texture calls rotate every time
	(lambda (chorale id)
		(first-voice chorale)))
#(define first-proc-fit
	;fit-range-by-id in 
	;works because chorale->texture calls rotate every time
	(lambda (chorale id)
		(fit-range-by-id (first-voice chorale) id)))

%turn music into bigger moments
#(define (map-to-bars proc melody)
	(if (or (null? melody) (empty-melody? melody))
		melody
		(melody-add
			(proc (first-bar melody))
			(map-to-bars proc (butfirst-bars melody)))))

#(define (buzz pitch duration)
	;simplest form of buzz
	(make-note pitch duration))

#(define (buzz-bar bar)
	;bar is a list of note events that does not include a bar line
	(make-melody
		(map
			(lambda (d)
				(buzz
					(pitch (first-note bar))
					d))
			(moment->durations
				(ly:music-length
					bar)))))

#(define* buzz-proc
	(lambda (chorale id)
		(map-to-bars buzz-bar
			(first-voice chorale))))