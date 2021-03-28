\version "2.20.0"
\include "../z/staff.ily"

%functions specific to percussion control

%CONTENTS
%  For Engraving
%    (make-pc harmony)
%    (rest-pc harmony)
%    (skip-pc harmony)
%  Helpers
%    (durs-left-over-right ly:duration ly:duration)


%FOR ENGRAVING

make-pc = #(define-music-function
	;takes same input as harmony but reinterprets it as
	;one gesture on the percussion (needs to know if it takes two hands or not
	;if takes one hand recursive call? to make the other hand?
	(h)(harmony?)
	;durations for staccato needs to peel off the first short note
	(let* ((min 3) ;2 for quarter note
		   (durs (harmony-durations h))
		   (card-log (ly:duration-log (car durs)))
		   (stacc-durs 
		   		(durs-left-over-right-pedantic 
		   			(ly:make-duration min) 
		   			(car durs) 
		   			(cdr durs)))
		   (up2h? (zero? (random 2)))
		   (uphands (random 3)))
	#{ 
		\context GrandStaff = "pc" <<
			\context Staff = "up" {
				#(cond 
						((zero? uphands)
						   	#{
					   		{ 
					   			#(make-skip (car (harmony-durations h)))
								#(make-skip (cdr (harmony-durations h))) }
							#})
						((ly:pitch<? (ly:make-pitch 2 0)
									(car (harmony-pitches h)))
					    #{
							\ottava #2
							\set Staff.ottavation = #"Cro"

							#(if (even? uphands)
								#{
									#(make-note (car (harmony-pitches h)) (car (harmony-durations h)))
									\downbow 
									#(if (zero? (random 2))
										#{ \> #}
										#{ \< #})
									\ottava #0
									#(make-rest (cdr (harmony-durations h)))
									\!
								#}
								#{
									#(make-note (car (harmony-pitches h)) (car stacc-durs))
									#(make-rest (cadr stacc-durs))
									\ottava #0
									#(if (not (null? (cddr stacc-durs)))
							 			(make-music
							 				'SequentialMusic
							 				'elements
							 				(map make-rest (cddr stacc-durs))))
								#})
						#})
					   ((ly:pitch<? (ly:make-pitch -1 2 1/2) (car (harmony-pitches h)))
						#{
							#(if (even? uphands)
								(if (zero? (random 2))
									#{
										#(make-note (car (harmony-pitches h)) (car (harmony-durations h)))
										\downbow 
										#(if (zero? (random 2))
											#{ \> #}
											#{ \< #})
										#(make-rest (cdr (harmony-durations h)))
										\!
									#}
								  	#{
										#(make-note (car (harmony-pitches h)) (car (harmony-durations h)))
										#(trem (car (harmony-durations h)))
										#(if (zero? (random 2))
											#{ \> #}
											#{ \< #})
										#(make-rest (cdr (harmony-durations h)))
										\!
								  	#})
								#{
									#(make-note (car (harmony-pitches h)) (car stacc-durs))
										#(make-rest (cadr stacc-durs))
										#(if (not (null? (cddr stacc-durs)))
								 			(make-music
								 				'SequentialMusic
								 				'elements
								 				(map make-rest (cddr stacc-durs))))
								#})
						#})
					   (#t
					   	#{
					   		{ 
					   			#(make-skip (car (harmony-durations h)))
								#(make-skip (cdr (harmony-durations h))) }
						#}))
			}
			\context DrumStaff = "down" {
				#(cond ((= 2 uphands)
							#{
					   		{ 
					   			#(make-skip (car (harmony-durations h)))
								#(make-skip (cdr (harmony-durations h))) }
							#})
					   ((ly:pitch<? (ly:make-pitch 0 0)
									(car (harmony-pitches h)))
						#{
							#(if (zero? uphands)
								#{
									#(make-note 'snare (car (harmony-durations h)))
									#(trem (car (harmony-durations h)))
									#(if (zero? (random 2))
										#{ \> #}
										#{ \< #})
									#(make-rest (cdr (harmony-durations h)))
									\!
								#}
								#{
									#(make-drum 'snare (car stacc-durs))
									#(make-rest (cadr stacc-durs))
									#(if (not (null? (cddr stacc-durs)))
							 			(make-music
							 				'SequentialMusic
							 				'elements
							 				(map make-rest (cddr stacc-durs))))
								#})
						#})
					   (#t
						#{
							#(if (zero? uphands)
									#{
										#(make-drum 'bassdrum (car (harmony-durations h)))
										#(trem (car (harmony-durations h)))
										#(if (zero? (random 2))
											#{ \> #}
											#{ \< #})
										#(make-rest (cdr (harmony-durations h)))
										\!
								  	#}
									#{
										#(make-drum 'bassdrum (car stacc-durs))
										#(make-rest (cadr stacc-durs))
										#(if (not (null? (cddr stacc-durs)))
								 			(make-music
								 				'SequentialMusic
								 				'elements
								 				(map make-rest (cddr stacc-durs))))
									#})
						#}))
			}
		>>
	#}))

rest-pc = #(define-music-function
	(h)(harmony?)
	(let ((rests 
			(make-music
			 	'SequentialMusic
			 	'elements
				(list 
					(make-rest (car (harmony-durations h)))
					(make-rest (cdr (harmony-durations h)))))))
	 #{
	 	\context GrandStaff = "pc" <<
			\context Staff = "up" { #rests }
			\context DrumStaff = "down" { #rests }
		>>
	#}))

skip-pc = #(define-music-function
	(h)(harmony?)
	(let ((skips
			(make-music
			 	'SequentialMusic
			 	'elements
				(list 
					(make-skip (car (harmony-durations h)))
					(make-skip (cdr (harmony-durations h)))))))
	 #{
	 	\context GrandStaff = "pc" <<
			\context Staff = "up" { \no-line #skips }
			\context DrumStaff = "down" { \no-line #skips }
		>>
	#}))

%HELPERS

% durs-left-over-right = #(define-scheme-function
% 	(l r)(ly:duration? ly:duration?)
% 	(let ((logl (ly:duration-log l))
% 		  (logr (ly:duration-log r)))
% 		 (if (< logl logr)
% 		 	 (list r)
% 		 	 (let* ((dotsr (ly:duration-dot-count r))
% 		 	 		(tail (if (zero? dotsr) 
% 		 	 				  '()
% 		 	 				  (ly:make-duration (+ logr 1) (- dotsr 1)))))
% 		 	 	   (if (= logl logr) 
% 		 	 	   	   (list l tail)
% 		 	 	   	   (list l 
% 		 	 	   	   		 (ly:make-duration (+ logr 1) (- (- logl logr) 1))
% 		 	 	   	   		 tail))))))

durs-left-over-right-pedantic = #(define-scheme-function
	(l r append)(ly:duration? ly:duration? ly:duration?)
	(let ((logl (ly:duration-log l))
		  (logr (ly:duration-log r)))
		 (if (< logl logr)
		 	 (list r append)
		 	 (let* ((dotsr (ly:duration-dot-count r))
		 	 		(tail (if (zero? dotsr) 
		 	 				  append
		 	 				  (list (ly:make-duration (+ logr 1) (- dotsr 1)) append))))
		 	 	   (if (= logl logr) 
		 	 	   	   (list l tail)
		 	 	   	   (letrec ((breakdown
			 	 	   	   		(lambda (log dots tail)
		 	 	   	   				(if (zero? dots)
		 	 	   	   					(list (ly:make-duration log) tail)
		 	 	   	   					(cons (ly:make-duration (+ log dots))
		 	 	   	   					 	  (breakdown log (- dots 1) tail))))))
			 	 	   	   (cons l (breakdown (+ logr 1) 
			 	 	   	   					  (- (- logl logr) 1)
			 	 	   	   					  tail))))))))