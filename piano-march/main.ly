\version "2.20.0"
\include "lib.ly"
\include "tree.ly"

%Generate Harmonic Tree via elaboration
#(define tonic
	(make-leaf
		(ly:make-pitch -2 0)))

#(define intervals
	(letrec ((series
				(list
					(ly:make-pitch 0 0)
					(ly:make-pitch 1 0)
					(ly:make-pitch 1 4)
					(ly:make-pitch 2 0)
					(ly:make-pitch 2 2)
					(ly:make-pitch 2 4)
					(ly:make-pitch 2 6 -1/2)
					(ly:make-pitch 3 0)
					(ly:make-pitch 3 1)
					(ly:make-pitch 3 2)
					(ly:make-pitch 3 3 1/2)
					(ly:make-pitch 3 4)
					(ly:make-pitch 3 5 -1/2)
					(ly:make-pitch 3 6 -1/2)
					(ly:make-pitch 3 6)
					(ly:make-pitch 4 0)))
			 (get-intervals
			 	(lambda (lst)
					(if (null? (cdr lst))
						'()
						(cons
							(ly:pitch-diff (cadr lst) (car lst))
							(get-intervals (cdr lst)))))))
		(get-intervals series)))

#(define (elaborate-leaves tree interval)
	(if (leaf? tree)
		(make-node
			(datum tree)
			(list
				(make-leaf (datum tree))
				(make-leaf
					(ly:pitch-transpose 
						(datum tree)
						interval))))
		(make-node
			(datum tree)
			(elaborate-leaves-forest
				(children tree)
				interval))))
#(define (elaborate-leaves-forest forest interval)
	(if (null? forest)
		'()
		(cons
			(elaborate-leaves (car forest) interval)
			(elaborate-leaves-forest (cdr forest) interval))))

#(define* (elaborate-w-list tree intervals #:optional (depth -1))
	(if (or (null? intervals) (zero? depth))
		tree
		(elaborate-w-list
			(elaborate-leaves
				tree
				(car intervals))
			(cdr intervals)
			(- depth 1))))

#(define harmonic-tree (elaborate-w-list tonic intervals 7))

%Generate forest (melody) of transposed harmonic tree
#(define (pitch-tree-transpose tree pitch)
	(distribute
		(lambda (t)
			(make-node
				(ly:pitch-transpose
					(datum t)
					pitch)
				(children t)))
		tree))

#(define make-forest-melody
	(lambda* 
		(pitch-list 
		 #:optional (tree
						(make-leaf
							(ly:make-pitch 0 0))))
		(if (null? pitch-list)
			'()
			(cons
				(pitch-tree-transpose
					tree
					(car pitch-list))
				(make-forest-melody
					(cdr pitch-list)
					tree)))))

#(define melody
	(list
		(ly:make-pitch 0 0)
		(ly:make-pitch 0 0)
		(ly:make-pitch 0 4)
		(ly:make-pitch 0 4)
		(ly:make-pitch 0 5)
		(ly:make-pitch 0 5)
		(ly:make-pitch 0 4)))

#(define melody-forest
	(make-forest-melody melody harmonic-tree))

%Grab branch of tree and elaborate

%Aleatoric substitution for drone

%Harmonic tree -> note tree
%%Log rhythm
%%Dot rhythm
%%Binary rhythm

#(define* (pitch-tree->note-tree tree dur-proc #:optional (breadth 0) (depth 0))
	(make-node
		(make-note
			(datum tree)
			(dur-proc breadth depth))
		(pitch-forest->note-forest 
			(children tree)
			dur-proc
			breadth
			(+ depth 1))))

#(define (pitch-forest->note-forest forest dur-proc breadth depth)
	(if (null? forest)
		'()
		(cons
			(pitch-tree->note-tree
				(car forest)
				dur-proc
				breadth
				depth)
			(pitch-forest->note-forest
				(cdr forest)
				dur-proc
				(+ breadth 1)
				depth))))

#(define (log-dur-proc log)
	(lambda (breadth depth)
		(ly:make-duration log)))

#(define (dot-dur-proc log)
	(lambda (breadth depth)
		(ly:make-duration (+ log breadth))))

#(define (bin-dur-proc log)
	(lambda (breadth depth)
		(ly:make-duration (+ log depth))))


#(define my-note-tree
	(pitch-tree->note-tree
		harmonic-tree
		(dot-dur-proc 0)))

%Note-tree to piano gestures
%of varying depth

% #(display-scheme-music intervals)
\score {
	\autochange {
		#(make-music
			'SequentialMusic
			'elements
			(extract-layer 5 my-note-tree))
	}
}