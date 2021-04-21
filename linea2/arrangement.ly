\version "2.20.0"

#(ly:set-option 'relative-includes #t)
\include "./chorale.ly"
\include "./contextualize.ly"
\include "./lib.ly"
\include "./texture.ly"
\include "./textures/buzz.ly"
\include "./textures/chance-rest.ly"
\include "./textures/chance-zing.ly"
\include "./textures/chance-bloom.ly"
\include "./textures/chance-air.ly"
\include "./textures/identity.ly"
\include "./dot-play.ly"
\include "./max-voices.ly"
\include "./jazz-stabs.ly"
\include "../z/square.ily"

br = \context Staff = "fl" \break

#(define range
	;place to define ranges for insts
	(lambda (id)
		(cond ((equal? id "fl")
			   (cons (ly:make-pitch 0 0) (ly:make-pitch 4 0)))
			  ((equal? id "cl")
			   (cons (ly:make-pitch -1 1) (ly:make-pitch 3 6 -1/2)))
			  ((equal? id "bn")
			   (cons (ly:make-pitch -3 6 -1/2) (ly:make-pitch 1 1)))
			  ((equal? id "tbn")
			   (cons (ly:make-pitch -2 2) (ly:make-pitch 1 2)))
			  ((equal? id "vn")
			   (cons (ly:make-pitch -1 4) (ly:make-pitch 4 5)))
			  ((equal? id "va")
			   (cons (ly:make-pitch -1 0) (ly:make-pitch 3 2)))
			  ((equal? id "vc")
			   (cons (ly:make-pitch -2 0) (ly:make-pitch 2 3)))
			  ((equal? id "db")
			   (cons (ly:make-pitch -3 2) (ly:make-pitch 0 4)))
			  (#t
			   (cons (ly:make-pitch -9 0) (ly:make-pitch 9 0))))))

#(define range
	;place to define ranges for insts
	(lambda (id)
		(cond ((equal? id "fl")
			   (cons (ly:make-pitch 0 0) (ly:make-pitch 4 0)))
			  ((equal? id "cl")
			   (cons (ly:make-pitch -1 1) (ly:make-pitch 3 6 -1/2)))
			  ((equal? id "bn")
			   (cons (ly:make-pitch -3 6 -1/2) (ly:make-pitch 1 1)))
			  ((equal? id "tbn")
			   (cons (ly:make-pitch -2 2) (ly:make-pitch 1 2)))
			  ((equal? id "vn")
			   (cons (ly:make-pitch -1 4) (ly:make-pitch 3 5)))
			  ((equal? id "va")
			   (cons (ly:make-pitch -1 0) (ly:make-pitch 3 2)))
			  ((equal? id "vc")
			   (cons (ly:make-pitch -2 0) (ly:make-pitch 2 3)))
			  ((equal? id "db")
			   (cons (ly:make-pitch -3 2) (ly:make-pitch -1 4)))
			  (#t
			   (cons (ly:make-pitch -9 0) (ly:make-pitch 9 0))))))



#(define transposition
		(lambda ()
			(ly:make-pitch 
				0 
				(random (floor (+ (pitch-countdown 7) 1))))))

#(define transposition-descent
		(lambda ()
			(ly:make-pitch 
				0 
				(random (floor (+ (pitch-countdown2 7) 1))))))

\include "exposition.ly"
\include "repetition.ly"
\include "partII.ly"
\include "recapitulation.ly"

$(define pitch-countdown2 (countdown 5))
$(define decoherence (countdown 1))

arrangement = {
	\exposition
	\repetition
	<< \context Staff = "fl" \bar "."
	   \partII >>
	\recapitulation
}
#(define timecode 
	(let ((factor
			(ly:music-length arrangement)))
		(display (floor (* 2 (ly:moment-main factor))))
		(make-skip
			(ly:make-duration
				0
				0
				(ly:moment-main factor)))))

%chance for bar to hold out long
% chorale -> map to voices (proc) -> chorale