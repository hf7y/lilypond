\version "2.20.0"

%% Basic constructors and predicates

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

%% more abstract fxns
#(define list->forest
	(lambda (lst)
		(if (null? lst)
			lst
			(cons (make-leaf (car lst))
				  (list->forest (cdr lst))))))

%GET
#(define extract-leaves
	(lambda (tree)
		(if (leaf? tree)
			(list (datum tree))
			(extract-leaves-forest (children tree)))))
#(define extract-leaves-forest
	(lambda (forest)
		(if (null? forest)
			'()
			(concat
				(extract-leaves (car forest))
				(extract-leaves-forest (cdr forest))))))

#(define extract-layer 
	(lambda (layer tree)
		(if (zero? layer)
			(list (datum tree))
			(extract-layer-forest (- layer 1) (children tree)))))
#(define extract-layer-forest
	(lambda (layer forest)
		(if (null? forest)
			'()
			(concat
				(extract-layer layer (car forest))
				(extract-layer-forest layer (cdr forest))))))

%CHANGE
#(define (distribute proc tree)
	;takes tree does proc to each tree! not datum
	(if (leaf? tree)
		(proc tree)
		(let ((processed (proc tree)))
			 (if (null? processed)
			 	 '()
			 	 (make-node
			 	 	(datum processed)
			 		(distribute-forest 
			 			proc
			 			(children processed)))))))
#(define* (distribute-forest proc forest)
	(if (null? forest)
		'()
		(cons (distribute proc (car forest))
			  (distribute-forest proc (cdr forest)))))

#(define (distribute-leaves-first proc tree)
	;takes tree does proc to each tree! not datum
	(if (leaf? tree)
		(proc tree)
		(let ((processed-forest
				(distribute-forest-leaves-first
					proc
					(children tree))))
			 (proc (make-node
				 	(datum tree)
				 	processed-forest)))))

#(define* (distribute-forest-leaves-first proc forest)
	(if (null? forest)
		'()
		(cons (distribute-leaves-first proc (car forest))
			  (distribute-forest-leaves-first proc (cdr forest)))))

%based on elaborate, of lower order (i.e. proc on datum)
#(define elaborate
	;gives leaves two children
	;proc domain is data
	(let ((identity (lambda (datum) datum)))
		(lambda* (tree #:optional (proc identity))
			(if (leaf? tree)
				(make-node
					(datum tree)
					(list
						(make-leaf (datum tree))
						(make-leaf (proc (datum tree)))))
				(make-node
					(datum tree)
					(elaborate-forest (children tree) proc))))))
#(define (elaborate-forest forest proc)
	(if (null? forest)
		'()
		(cons
			(elaborate (car forest) proc)
			(elaborate-forest (cdr forest) proc))))

%DELETE
#(define (prune-node node)
	(make-leaf
		(datum node)))
#(define (prune-x-y x y tree)
	(if (zero? x)
		(prune-node tree)
		(make-node 
			(datum tree)
			(prune-x-y-forest (- x 1) y (children tree)))))
#(define (prune-x-y-forest x y forest)
	(if (null? forest)
		'()
		(if (zero? x)
			(if (zero? y)
				(cdr forest)
				(cons (car forest)
					(prune-x-y-forest x (- y 1) (cdr forest))))
			(cons (prune-x-y x y (car forest))
				  (prune-x-y-forest x y (cdr forest))))))