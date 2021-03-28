\version "2.20.0"
\include "./lib.ly"


%Just a sketch, delete? - zvp 3/28/21

#(define pitches
	(list-elems #{ a b c d e f g #} 'pitch))

#(define (make-node datum children)
	(cons datum children))

#(define (make-leaf datum)
	(make-node datum '()))

#(define (datum node)
	(car node))

#(define (children node)
	(cdr node))

#(define (leaf? t)
	(null? (children t)))

#(define (leaves? forest)
	(if (null? forest)
		#t
		(and (leaf? (car forest))
			 (leaves? (cdr forest)))))


#(define* (distribute x tree proc #:optional proc-leaves)
	;takes tree does proc x to each node
	(if (leaf? tree)
		(if (procedure? proc-leaves)
			(proc-leaves x tree)
			(proc x tree))
		(let ((next (proc x tree)))
			 (cons (datum next)
			 	   (map 
						(lambda (t)
								(distribute x t proc proc-leaves))
						(children next))))))

#(define (distribute-to-leaves x tree proc)
	(define (identity x y) y)
	(distribute x tree identity proc))

#(define my-pitch-tree
	(make-node
		(ly:make-pitch 0 0)
		(list
			(make-node (ly:make-pitch 0 3) '())
			(make-node (ly:make-pitch 0 4) '()))))

#(define (transpose-datum x t)
	(make-node
		(ly:pitch-transpose x (datum t))
		(children t)))

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

#(define (pitch-inker oct-i step-i)
	(define octave oct-i)
	(define step step-i)
	(lambda ()
			(if (= step 6)
				(begin
					(set! step 0)
					(set! octave (+ octave 1)))
				(set! step (+ step 1)))
			(ly:make-pitch octave step)))

#(define next-p (pitch-inker -1 0))

#(define* (random-pitch-tree depth bredth)
	(if (<= depth 1)
		(make-leaf (next-p))
		(make-node
			(next-p)
			(random-pitch-forest (- depth 1) bredth))))

#(define* (random-pitch-forest depth bredth)
	(if (zero? bredth)
		'()
		(cons (random-pitch-tree depth bredth)
			  (random-pitch-forest depth (- bredth 1)))))

#(define* (n-forest n tree)
	(if (zero? n)
		'()
		(cons tree
			  (n-forest (- n 1) tree))))

#(define list->forest
	(lambda (lst)
		(if (null? lst)
			lst
			(cons (make-leaf (car lst))
				  (list->forest (cdr lst))))))

% #(display-scheme-music (random-pitch-tree 5))

%%%%%%%%%%%%END TREE STUDY

%%%%MATRICIES?


\include "./pitch-class-set.ly"


#(define num #b1111110)
% #(display-scheme-music
% 	(int->pset-normed num))
% #(display-scheme-music
% 	(int->pset num))

#(define alf (list 'a 'b 'c))

#(define (map-over-tree func tree)
	;func has domain: datum
	(if (null? tree)
		'()
		(make-node
			(func (datum tree))
			(map (lambda (t)
						 (map-over-tree func t))
				 (children tree)))))

% #(define (map-over-forest func forest)
% 	(if (null? forest)
% 		'()
% 		(cons 
% 			(map-over-tree func (car forest))
% 			(map-over-forest func (cdr forest)))))

#(define grow-leaves
	(let ((identity (lambda (datum1 datum2) datum1)))
		(lambda* (tree forest #:optional proc)
			(if (leaf? tree)
				(make-node
					(datum tree)
					(map
						(lambda (t)
							(map-over-tree
								(lambda (d)
									(ly:pitch-transpose
										d 
										(datum tree)))
								t))
						forest))
				(make-node
					(datum tree)
					(map
						(lambda (t)
							(grow-leaves t forest proc))
						(children tree)))))))

% #(define x-tree-tree
% 	(let ((identity (lambda (datum1 datum2) datum1)))
% 		(lambda* (t1 t2 #:optional (proc identity))
% 		if (null? t1)
% 		   t1
% 		   (make-node
% 		   		(proc (datum t1) (datum t2))
% 		   		(map
% 		   			(lambda (tree)
% 		   				(x-tree-tree tree t2 proc))
% 		   			(children t1))))))

% #(define x-forests
% 	(let ((identity (lambda (datum1 datum2) datum1)))
% 		(lambda* (pf1 pf2 #:optional (proc identity))
% 			(if (null? pf1)
% 				'()
% 				(cons 
% 					(make-node (datum (car pf1))
% 							   (map (lambda (tree)
% 								   		(make-node
% 								   			(proc (datum tree) (datum (car pf1)))
% 								   			(children tree)))
% 							   		pf2))
% 					(x-forests (cdr pf1) pf2 proc))))))

#(define ly:deep-transpose 
	(lambda (p delta)
		(ly:pitch-transpose 
			(ly:music-deep-copy p)
			delta)))

#(define d (ly:make-duration 0))

#(define dia-tree
	(make-node
		(ly:make-pitch -1 0)
		(list->forest
			(int->pset-normed #b101))))

\score {
	\autochange{
		% #(pitch-tree->notes (grow-leaves dia-tree
		% 	(list->forest (int->pset #b1111111))))
		\break
		#(pitch-tree->notes (grow-leaves
			(grow-leaves dia-tree
				(list->forest (int->pset-normed #b1011)))
			(list->forest (int->pset-normed #b1101))))
	}
}