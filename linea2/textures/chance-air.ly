\version "2.20.0"
\include "/home/zach/lilypond/linea2/lib.ly"
\include "/home/zach/lilypond/linea2/chorale.ly"
\include "./contextualize.ly"
\include "../z/staff.ily"
\include "../z/square.ily"

%chorale->texture calls a proc that takes chorale and list
%this is one of those procs

#(define center-line
	;place to define ranges for insts
	(lambda (id)
		(cond ((element? id (list "fl" "cl" "vn"))
			   (ly:make-pitch 0 6))
			  ((element? id (list "va"))
			   (ly:make-pitch 0 0))
			  ((element? id (list "bn" "tbn" "vc"))
			   (ly:make-pitch -1 1))
			  ((element? id (list "db"))
			   (ly:make-pitch -2 1))
			  (#t
			   (ly:make-pitch 0 6)))))

#(define first-time
	(lambda ()
		(define id-list '())
	;place to define ranges for insts
		(lambda* (id #:optional msg)
			(if (equal? 'set msg)
				(set! id-list (cons id id-list))
				(element? id id-list)))))

#(define air-before? (first-time))

#(define chance-air 50)

#(define* (air-bar bar id #:optional last-bar?)
	;bar is a list of note events that does not include a bar line
	(let ((tie-fxn
				(if last-bar?
					make-tied-notes
					make-tied-notes*)))
		#{
			<<
				#(if (not (air-before? id))
					 (begin
					 	(air-before? id 'set)
					 	#{ s1*0^\markup \italic "toneless" #}))

				#(make-timesig (ly:music-length bar))
				\no-line \square
				#(make-melody		
					(tie-fxn
						(center-line id)
						(moment->durations
							(ly:music-length bar))))
			>>
		#}))

#(define (identity-bar bar)
	;bar is a list of note events that does not include a bar line
	(make-melody
		(cons
			(make-timesig (ly:music-length bar))
			(list-elems bar))))


#(define (chance-air-melody melody id)
	(if (> chance-air (random 100))
		(melody-add
			(map-to-bars 
				(lambda (bar)
					(air-bar
						bar
						id))
				(butlast-bars melody))
			(map-to-bars
				(lambda (bar)
					(air-bar
						bar
						id
						#t))
				(last-bar melody)))				
		(map-to-bars
			identity-bar
			melody)))


#(define* chance-air-proc
	(lambda (n)
		(begin
			(set! chance-air n)
			(lambda (chorale id)
				(chance-air-melody
					(first-voice chorale)
					id)))))