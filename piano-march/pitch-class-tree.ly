\version "2.20.0"

\include "./lib.ly"
\include "./pitch-class-set.ly"
\include "./tree.ly"

%trees/forests -> music
#(define* (pitch-tree->notes t #:optional (d (ly:make-duration 0)))
	(if (leaf? t)
		(make-note (datum t) d)
		(make-music
			'SequentialMusic
			'elements
			(list
				(make-note (datum t) d)
				(pitch-forest->notes (children t) d)))))

#(define* (pitch-forest->notes ts #:optional (d (ly:make-duration 0)))
	(if (leaves? ts)
		(make-music
				'EventChord
				'elements
				(map (lambda (t) 
							 (make-note (datum t)
							 			d))
					 ts))
		(make-music
			'SequentialMusic
			'elements
			(map (lambda (t)
						 (pitch-tree->notes t d))
			 	ts))))