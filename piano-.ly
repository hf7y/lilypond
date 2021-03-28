\version "2.20.0"
\include "./lib.ly"


#(define pitches
	(list (ly:make-pitch 0)))

\score {
	#(map (lambda (p) (make-note p (ly:duration 0))) pitches)
}