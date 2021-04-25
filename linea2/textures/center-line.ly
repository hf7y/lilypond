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

#(define center-line-before? (first-time))

#(define chance-center-line 50)

#(define* (center-line-bar bar id #:optional last-bar?)
	;bar is a list of note events that does not include a bar line
	(let ((tie-fxn
				(if last-bar?
					make-tied-notes
					make-tied-notes*)))
			(make-melody		
				(tie-fxn
					(center-line id)
					(moment->durations
						(ly:music-length bar))))))

#(define (identity-bar bar)
	;bar is a list of note events that does not include a bar line
	(make-melody
		(cons
			(make-timesig (ly:music-length bar))
			(list-elems bar))))


#(define (chance-center-line-melody melody id)
	(if (> chance-center-line (random 100))
		(melody-add
			(map-to-bars 
				(lambda (bar)
					(center-line-bar
						bar
						id))
				(butlast-bars melody))
			(map-to-bars
				(lambda (bar)
					(center-line-bar
						bar
						id
						#t))
				(last-bar melody)))				
		(map-to-bars
			identity-bar
			melody)))


#(define* center-line-proc
	(lambda ()
		(begin
			(set! chance-center-line 100)
			(lambda (chorale id)
				(chance-center-line-melody
					(first-voice chorale)
					id)))))