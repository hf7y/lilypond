\version "2.20.0"

%functions specific to pianoforte control

%CONTENTS
%  For Engraving
%    (make-pf harmony)
%    (rest-pf harmony)
%    (skip-pf harmony)
%  Helpers
%    (octave-fit pitch pitch)
%    (around-fit pitch pitch)


make-pf = #(define-music-function
	;takes some pre-generated input and spits out a simultaneous music event for the piano
	;must think about register
	;to be combined with itself to make two-hands
	;must fit within one hand/octave then
	(h)(harmony?)
	(let ((dur1 (car (harmony-durations h)))
		  (pitches (harmony-pitches h)))
		 (letrec ((used '())
		 		  (make-elements 
				 	(lambda (ps d)
						(if (null? ps) '()
						  	(let ((fit (around-fit (car ps) (car pitches))))	
						  	 (if (elem? fit used) (make-elements (cdr ps) d)
						  	 	 (begin
						  	 	 	(set! used (cons fit used))
								    (cons (make-note fit d)
								  		  (make-elements (cdr ps) d))))))))
		 		   (wrap-notes-hand
		 		   	(lambda* (music hand #:optional (ott 0))
		 		   		#{
		 		   			\context Staff = #hand {
		 		   				#(ottava ott)
		 		   				#music
		 		   				#(ottava 0)
		 		   				#(make-rest (cdr (harmony-durations h)))
		 		   			}
		 		   		#}))
		 		   (wrap-music-in-function 
		 		   	(lambda* (music)
		 		   		(lambda* (hand #:optional (ott 0))
		 		   			#{
		 		   				\context Staff = #hand {
			 		   				#(ottava ott)
			 		   				$music
			 		   				#(ottava 0)
			 		   				#(make-rest (cdr (harmony-durations h)))
			 		   				\! }
		 		   			#}))))
		 		 (let* ((arp
		 		 		(wrap-music-in-function
		 		 			(let* ((num-pitches (length pitches))
		 		 				  (tup-dur (ly:make-duration
									(+ (ly:duration-log dur1)
									   (integer-length num-pitches)
									   -1))))
			 		 			  (n-tuplet (cons num-pitches (integer-length num-pitches)) 
			 		 					#{
				 		 					#(make-note
				 		 						(car pitches) tup-dur)
				 		 					#(if (zero? (random 2))
												#{ \> #}
												#{ \< #})
				 		 					#(make-music
				 		 						'SequentialMusic
				 		 						'elements
				 		 						(make-elements
				 		 							(cdr pitches)
				 		 							(ly:make-duration
				 		 								(+ (ly:duration-log dur1)
				 		 								   (integer-length num-pitches)
				 		 								   -1))))
				 		 				#}))))
		 		 	   (chord (wrap-music-in-function	 		 				
	 		 				(make-music
								 	'EventChord
								 	'elements (make-elements pitches dur1))))
		 		 	   (trmlo (wrap-music-in-function
		 		 	   			(make-music
		 		 	   				'TremoloRepeatedMusic
		 		 	   				'repeat-count (expt 2 (- 4 (ly:duration-log dur1)))
		 		 	   				'element
		 		 	   				#{
		 		 	   					#(make-note (car pitches) (ly:make-duration 5))
		 		 	   					#(if (zero? (random 2))
												#{ \> #}
												#{ \< #})
		 		 	   					#(make-note 
		 		 	   						(if (null? (cdr pitches))
		 		 	   							(car pitches)
		 		 	   							(octave-fit (cadr pitches) (car pitches)))
		 		 	   						(ly:make-duration 5))
		 		 	   				#})))
		 		 	   (wait
		 		 	   		(lambda (hand)
		 		 	   		 #{
		 		 	   		 	\context Staff = #hand {
			 		 	  			#(make-skip dur1)
						 		 	#(make-skip (cdr (harmony-durations h))) }
					 		 #}))
		 		 	   	(play-func (let ((log (ly:duration-log dur1)))
		 		 	   	;;assigns the piano motive based on duration information
		 		 	   					(cond ((= (length pitches) 1) chord)
		 		 	   						  ((= log 2) arp)
		 		 	   						  ((= log 1) trmlo)
		 		 	   						  (#t chord)))))
					 #{
					 	\context GrandStaff = "pf" {
			 			 	#(cond ((or (ly:pitch<? (ly:make-pitch 3 2) (car pitches))
			 			 		;;cond uses pitch to determine staff up or down
			 			 				(ly:pitch<? (car pitches) (ly:make-pitch -4 5)))
			 			 			#{ << #(wait "up")
			 			 				  #(wait "down") >> #})
			 			 		   ((ly:pitch<? (ly:make-pitch -1 3) (car pitches))
			 			 			#{
			 			 				<< #(play-func "up" 
			 			 						  (max (- (ly:pitch-octave (car pitches)) 1)
			 			 							   0))
			 			 				   #(wait "down") >> #})
			 			 		   (#t
			 			 		   	 #{
			 			 		   	 	<< #(wait "up")
			 			 		   	 	   #(play-func "down" 
			 			 						  (min (if (ly:pitch<?
			 			 						  			(car pitches)
			 			 						  			(ly:make-pitch -3 5))
			 			 						  		   -1
			 			 								   0))) >> #}))
					 	}

					 #} ))))

rest-pf = #(define-music-function
	(h)(harmony?)
	(let ((rests 
			(make-music
			 	'SequentialMusic
			 	'elements
				(list 
					(make-rest (car (harmony-durations h)))
					(make-rest (cdr (harmony-durations h)))))))
	 #{
	 	\context GrandStaff = "pf" <<
			\context Staff = "up" { #rests }
			\context Staff = "down" { #rests }
		>>
	#}))

skip-pf = #(define-music-function
	(h)(harmony?)
	(let ((skips
			(make-music
			 	'SequentialMusic
			 	'elements
				(list 
					(make-skip (car (harmony-durations h)))
					(make-skip (cdr (harmony-durations h)))))))
	 #{
	 	\context GrandStaff = "pf" <<
			\context Staff = "up" { \no-line #skips }
			\context Staff = "down" { \no-line #skips }
		>>
	#}))

%HELPERS

octave-fit = #(define-scheme-function
	;finds octave equivalent of pitch p
	;closest to pitch c
	(p d c)(ly:pitch? (ly:duration?) ly:pitch?)
	(let* ((diff (ly:pitch-diff p c))
		   (fit-p
			 (cond ((ly:pitch<? diff (ly:make-pitch 0 0))
			 	 	(octave-fit (ly:pitch-transpose p (ly:make-pitch 1 0)) c))
			 	   ((ly:pitch<? (ly:make-pitch 1 0) diff)
			 	 	(octave-fit (ly:pitch-transpose p (ly:make-pitch -1 0)) c))
			 	   (#t p))))
		(if d (make-note fit-p d) fit-p)))

around-fit = #(define-scheme-function
	;finds octave equivalent of pitch p
	;closest to pitch c
	(p d c)(ly:pitch? (ly:duration?) ly:pitch?)
	(let* ((diff (ly:pitch-diff p c))
		   (fit-p
			 (cond ((ly:pitch<? (ly:make-pitch 0 3) diff)
			 	 	(octave-fit (ly:pitch-transpose p (ly:make-pitch -1 0)) c))
			 	   ((ly:pitch<? diff (ly:make-pitch -1 4) )
			 	 	(octave-fit (ly:pitch-transpose p (ly:make-pitch 1 0)) c))
			 	   (#t p))))
		(if d (make-note fit-p d) fit-p)))