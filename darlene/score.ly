\version "2.20.0"
\include "../z/note.ily"
%Decolonizing Aquarius

makeTimeSig = #(define-music-function
	(base tup music)
	((number? 4) (list? 1) ly:music?)
	;Get Moment ;Decompose Fraction ;Engrave
	(let* ((l (ly:music-length music))
		     (d (ly:moment-main-denominator l))
		     (n (ly:moment-main-numerator l)))
		  (letrec ((tome (lambda (m)
				  	#{ 
				  	    \time #m 
						\set Timing.beamExceptions = #'()
						\set Timing.baseMoment = #(ly:make-moment 1 base)
						\set Timing.beatStructure = #tup
						#music #})))
			  (if (> d base) 
			  	(tome (cons n d))
			  	(tome (cons (* n (/ base d)) base))))))


\score {
	\new Staff = "guitar" {
		\numericTimeSignature
		\tempo "Allegro"
		\makeTimeSig #8 #'(3 3 3 3)
			\relative c'' {
				g8-\3 ais b b\2
				\repeat unfold #11 b8
				r8  }
	}

	\layout {
		\context { 
			\Staff
		}
	}
}