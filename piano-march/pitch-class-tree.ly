\version "2.20.0"

\include "./lib.ly"
\include "./pitch-class-set.ly"
\include "./tree.ly"

%trees/forests -> music
% #(define* (pitch-tree->notes t #:optional (d (ly:make-duration 0)))
% 	(if (leaf? t)
% 		(make-note (datum t) d)
% 		(make-music
% 			'SequentialMusic
% 			'elements
% 			(list
% 				(make-note (datum t) d)
% 				(pitch-forest->notes (children t) d)))))

% #(define* (pitch-forest->notes ts #:optional (d (ly:make-duration 0)))
% 	(if (leaves? ts)
% 		(make-music
% 				'EventChord
% 				'elements
% 				(map (lambda (t) 
% 							 (make-note (datum t)
% 							 			d))
% 					 ts))
% 		(make-music
% 			'SequentialMusic
% 			'elements
% 			(map (lambda (t)
% 						 (pitch-tree->notes t d))
% 			 	ts))))

#(define (pitch-tree->note-tree tree dur)
	(distribute-leaves-first 
		(lambda (t)
			(pitch-tree->note-tree-proc
				t dur))
		tree))
#(define (pitch-tree->note-tree-proc tree dur)
	;note-tree has property that each parent has duration equal to all of its children
	(if (leaf? tree)
		(make-leaf
			(make-note
				(datum tree)
				dur))
		(let ((dur-list 
				(moment->durations
					(note-forest->moment
						(children tree)))))
			(if (= (length dur-list) 1)
				(make-node
					(make-note
						(datum tree)
						(car dur-list))
					(children tree))
				(make-node
					(make-music
						'SequentialMusic
						'elements
						(list
							(make-note
								(datum tree)
								(car dur-list))
							(map make-rest (cdr dur-list))))
					(children tree))))))

#(define (note-tree->moment tree)
	(ly:music-length (datum tree)))
#(define (note-forest->moment forest)
	(if (null? forest)
		(ly:make-moment 0)
		(ly:moment-add
			(note-tree->moment (car forest))
			(note-forest->moment (cdr forest)))))

 #(define gong
	(make-node
		(ly:make-pitch -3 0) ;this is the gong note
		'()))

#(define kempul (elaborate gong
	(lambda (datum)
		(ly:pitch-transpose datum (ly:make-pitch 1 0)))))

#(define kenong (elaborate kempul
	(lambda (datum)
		(ly:pitch-transpose datum (ly:make-pitch 0 4)))))

#(define my-note-tree
	(pitch-tree->note-tree 
		kenong
		(ly:make-duration 3)))

\score {
	<<
		\new Staff {
			\clef "bass"
			#(make-music
				'SequentialMusic
				'elements
				(extract-layer 2
					my-note-tree))
		}
		\new Staff {
			\clef "bass"
			#(make-music
				'SequentialMusic
				'elements
				(extract-layer 1
					my-note-tree))
		}
		\new Staff {
			\clef "bass_8"
			#(make-music
				'SequentialMusic
				'elements
				(extract-layer 0
					my-note-tree))
		}
	>>
}