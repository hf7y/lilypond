\version "2.20.0"
\include "./lib.ly"
\include "./pitch-class-set.ly"
\include "./tree.ly"

#(define my-tree
	(make-node
		(ly:make-pitch -5 0) ;this is the gong note
		(list
			(make-leaf
				(ly:make-pitch -4 0))
			(make-leaf
				(ly:make-pitch -3 0)))))

 #(define gong
	(make-node
		(ly:make-pitch -5 0) ;this is the gong note
		'()))

#(define kempul (elaborate gong
	(lambda (datum)
		(ly:pitch-transpose datum (ly:make-pitch 1 0)))))

#(define kenong (elaborate kempul
	(lambda (datum)
		(ly:pitch-transpose datum (ly:make-pitch 0 4)))))
#(newline)
#(display-scheme-music kenong)
#(display-scheme-music
	(prune-x-y 2 1 kenong))