\version "2.20.0"
\include "/home/zach/lilypond/linea2/lib.ly"
\include "/home/zach/lilypond/linea2/chorale.ly"
\include "./contextualize.ly"

%chorale->texture calls a proc that takes chorale and list
%this is one of those procs


#(define chance-zing 50)

#(define zing-first-time
	(lambda ()
		(define zing-list '())
	;place to define ranges for insts
		(lambda* (id #:optional msg)
			(if (equal? 'set msg)
				(begin
					(set! zing-list (cons id zing-list)))
				(element? id zing-list)))))

#(define zing-before? (zing-first-time))

#(define* (zing-bar pitch bar id #:optional last-bar?)
	;bar is a list of note events that does not include a bar line
	(let ((tie-fxn
			(if last-bar?
				make-tied-notes
				make-tied-notes*)))
		#{
			<<
				#(if (not (zing-before? id))
					 (begin
					 	(zing-before? id 'set)
					 	#{ s1*0^\markup \italic "highest pitch possible" #}))
				#(make-melody
					(append
						(list
							(make-timesig (ly:music-length bar))
							(make-music
					          'OttavaMusic
					          'ottava-number
					          1))
						(append 
							(tie-fxn
								pitch
								(moment->durations
									(ly:music-length bar)))
							(list (make-music
					          'OttavaMusic
					          'ottava-number
					          0)))))
			>>
		#}))

#(define (identity-bar bar)
	;bar is a list of note events that does not include a bar line
	(make-melody
		(cons
			(make-timesig (ly:music-length bar))
			(list-elems bar))))


#(define (chance-zing-melody melody id)
	(if (> chance-zing (random 100))
		(melody-add
			(map-to-bars 
				(lambda (bar)
					(zing-bar
						(cdr (range id))
						bar
						id))
				(butlast-bars melody))
			(map-to-bars 
				(lambda (bar)
					(zing-bar
						(cdr (range id))
						bar
						id
						#t))
				(last-bar melody)))
		(map-to-bars
			identity-bar
			melody)))


#(define* chance-zing-proc
	(lambda (n)
		(begin
			(set! chance-zing n)
			(lambda (chorale id)
				(chance-zing-melody
					(first-voice chorale)
					id)))))