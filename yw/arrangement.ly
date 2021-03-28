\version "2.20.0"
\include "./math.ly"
% \include "../z/timesignature.ily"

tutti = #(define-music-function
	;takes music
	(m)(ly:music?)
	#{
		<<
			\context StaffGroup = "i" <<
				\context GrandStaff = "pc" <<
					\context Staff = "up" { #m }
					\context DrumStaff = "down" { #m }
				>>

				\context GrandStaff = "pf" <<
					\context Staff = "up" { #m }
					\context Staff = "down" { #m }
				>>
			>>

			\context StaffGroup = "ii" <<
				\context GrandStaff = "pc" <<
					\context Staff = "up" { #m }
					\context Staff = "down" { #m }
				>>

				\context GrandStaff = "pf" <<
					\context Staff = "up" { #m }
					\context Staff = "down" { #m }
				>>
			>>
		>>
	#})

ups = #(define-music-function
	;takes music
	(m)(ly:music?)
	#{
		<<
			\context StaffGroup = "i" <<
				\context GrandStaff = "pc" <<
					\context Staff = "up" { #m }
				>>

				\context GrandStaff = "pf" <<
					\context Staff = "up" { #m }
				>>
			>>

			\context StaffGroup = "ii" <<
				\context GrandStaff = "pc" <<
					\context Staff = "up" { #m }
				>>

				\context GrandStaff = "pf" <<
					\context Staff = "up" { #m }
				>>
			>>
		>>
	#})

tuttif = #(define-music-function
	;takes function
	(f)(procedure?)
	#{
		<<
			\context StaffGroup = "i" <<
				\context GrandStaff = "pc" <<
					\context Staff = "up" { #(f) }
					\context DrumStaff = "down" { #(f) }
				>>

				\context TimeSig { #(f) }

				\context GrandStaff = "pf" <<
					\context Staff = "up" { #(f) }
					\context Staff = "down" { #(f) }
				>>
			>>

			\context Spacer { #(f) }

			\context StaffGroup = "ii" <<
				\context GrandStaff = "pc" <<
					\context Staff = "up" { #(f) }
					\context Staff = "down" { #(f) }
				>>

				\context GrandStaff = "pf" <<
					\context Staff = "up" { #(f) }
					\context Staff = "down" { #(f) }
				>>
			>>
		>>
	#})


#(define proportion 125)
gesture = #(define-music-function
	(ps ds)(procedure? procedure?)
	(let ((durs (row (list (ds left) (ds left)))))
	(set! proportion (- proportion 1))
	#{  
		\makeTimeSig
		<<
			\context StaffGroup = "i" <<
				#(if (> (random 100) proportion)
					#{ << \skip-pc #(rows->harmony ps durs)
						  \skip-pf #(rows->harmony ps durs)
						   >> #}
					#{ << 
						  \make-pc #(rows->harmony ps durs)
					      \make-pf #(rows->harmony ps durs) 
					      >> #})
			>>
			\context StaffGroup = "ii" <<
				#(if (> (random 100) proportion)
					#{ << \skip-pc #(rows->harmony ps durs)
						  \skip-pf #(rows->harmony ps durs)
						   >> #}
					#{ << 
						  \make-pc #(rows->harmony ps durs)
					      \make-pf #(rows->harmony ps durs) 
					      >> #}
				)
			>>
		>>
	#} ))

#(define (rows->harmony ps ds)
	(letrec ((n-lefts
			(lambda* (n)
				(if (positive? n)
					(cons (ps left) (n-lefts (- n 1)))
					'()))))
		(make-harmony 
			(n-lefts (+ (random 4) 1))
			(cons (ds left) (ds left)))))

#(define (rows->harmony2 ps ds)
	(letrec ((n-lefts
			(lambda* (n)
				(if (positive? n)
					(cons (ps left) (n-lefts (- n 1)))
					'()))))
		(make-harmony2
			(n-lefts (+ (random 4) 1))
			(cons (ds left) (ds left)))))


arrangement = <<
	% #(define r (row (list -3 -2 -1 0 1 2 3)))
	% #(define (next) (make-note (ly:make-pitch 0 0 (/ (r left) 4)) (ly:make-duration 0)))
	% \tuttif #next
	% #(define pitches (row (list-elems #{ aes f e dis #} 'pitch)))

	% #(define pitches (row (list-elems #{ 
	% 	c e g b d f a #} 'pitch)))

	#(define all-pitches-list
		(letrec ((next-pitch 
					(lambda 
						(oct step)
						(cond ((> oct 3) '())
							  ((>= step 7) (next-pitch (+ oct 1) (- step 7)))
							  (#t (cons (ly:make-pitch oct step)
							  			(next-pitch oct (+ step 5))))))))
			(next-pitch -4 0)))

	% #(define* (step-through-range init inc lim)
	% 	(if (ly:pitch<? lim init) '()
	% 		(cons init 
	% 			  (let ((proto (ly:pitch-transpose init inc)))
	% 			  			(display-scheme-music
	% 			  	   			(ly:make-pitch
	% 								(ly:pitch-octave proto)
	% 								(ly:pitch-steps proto)))
	% 			  	   (step-through-range 
	% 			  	   		proto
	% 						inc
	% 						lim)))))

	% 	#(step-through-range 
	% 		(ly:make-pitch -5 0)
	% 		(ly:make-pitch 0 1)
	% 		(ly:make-pitch 4 0))

	#(define pitches (row all-pitches-list))


	#(define durs (row (list-elems #{ 1 2 4 #} 'duration)))
	#(define durp (row (list-elems #{ 1 2 4 #} 'duration)))

	\tutti s1* 72
	\ups s1\pp
	
	{ 
		\unfoldf 72 #(lambda () (gesture pitches durs))
		\bar "|."
	}

	% \gesture $pitches $durp
>>