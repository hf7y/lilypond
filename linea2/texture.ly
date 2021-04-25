\version "2.20.0"
\include "./contextualize.ly"
\include "./textures/chance-rest.ly"

#(define* (chorale->texture proc chorale #:optional ids)
	;run proc on chorale for each id
	;creating context specced output per id
	;wrapped in simultaneous
	(letrec ((wrapped-fxn 
				(lambda (proc chorale ids)
					(if (null? ids)
						'()
						(cons (contextualize
								(car ids)
								(proc
									chorale
									(car ids)))
							  (wrapped-fxn
							  	proc
							  	(rotate chorale)
							  	(cdr ids))))))
			 (handle-absence ;so missing instruments get a skip sent to the score engraver
				(lambda (chorale ids all-instruments)
					(cond ((null? all-instruments)
						  '())
						  ((element? (car all-instruments) ids)
						   (handle-absence chorale ids (cdr all-instruments)))
						  (#t
						   (cons (car all-instruments)
						   		 (handle-absence chorale ids (cdr all-instruments))))))))
			(make-music
				'SimultaneousMusic
				'elements
				(append
					(wrapped-fxn proc chorale ids)
					(wrapped-fxn rest-proc chorale (handle-absence chorale ids (list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db")))))))


#(define* (chorale->texture* proc chorale ids #:optional first-dynamics last-dynamics)
	;this version handles dynamics
	(letrec ((wrapped-fxn 
				(lambda (proc chorale ids)
					(if (null? ids)
						'()
						(cons (contextualize
								(car ids)
								(add-dynamics
									(proc
										chorale
										(car ids))
									first-dynamics
									last-dynamics))
							  (wrapped-fxn
							  	proc
							  	(rotate chorale)
							  	(cdr ids))))))
			 (handle-absence ;so missing instruments get a skip sent to the score engraver
				(lambda (chorale ids all-instruments)
					(cond ((null? all-instruments)
						  '())
						  ((element? (car all-instruments) ids)
						   (handle-absence chorale ids (cdr all-instruments)))
						  (#t
						   (cons (car all-instruments)
						   		 (handle-absence chorale ids (cdr all-instruments))))))))
			(make-music
				'SimultaneousMusic
				'elements
				(append
					(wrapped-fxn proc chorale ids)
					(wrapped-fxn rest-proc chorale (handle-absence chorale ids (list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db")))))))

#(define* (chorale->texture** proc chorale ids #:optional first-dynamics last-dynamics)
	;this version handles dynamics
	(letrec ((wrapped-fxn 
				(lambda (proc chorale ids)
					(if (null? ids)
						'()
						(cons (contextualize
								(car ids)
								(add-dynamics**
									(proc
										chorale
										(car ids))
									first-dynamics
									last-dynamics))
							  (wrapped-fxn
							  	proc
							  	(rotate chorale)
							  	(cdr ids))))))
			 (handle-absence ;so missing instruments get a skip sent to the score engraver
				(lambda (chorale ids all-instruments)
					(cond ((null? all-instruments)
						  '())
						  ((element? (car all-instruments) ids)
						   (handle-absence chorale ids (cdr all-instruments)))
						  (#t
						   (cons (car all-instruments)
						   		 (handle-absence chorale ids (cdr all-instruments))))))))
			(make-music
				'SimultaneousMusic
				'elements
				(append
					(wrapped-fxn proc chorale ids)
					(wrapped-fxn rest-proc chorale (handle-absence chorale ids (list "fl" "cl" "bn" "tbn" "vn" "va" "vc" "db")))))))

#(define (note? x)
	(equal? (ly:music-property x 'name) 'NoteEvent))

#(define (first-note* elements)
	(if (null? elements)
		'()
		(if (note? (car elements))
			elements
			(first-note* (cdr elements)))))

#(define note?**
	(lambda (x)
		(or (equal? (ly:music-property x 'name) 'NoteEvent)
			(or (equal? (ly:music-property x 'name) 'RestEvent)
				(equal? (ly:music-property x 'name) 'SkipEvent)))))

#(define (first-note** elements)
	(if (null? elements)
		'()
		(if (note?** (car elements))
			elements
			(first-note* (cdr elements)))))


#(define (before-first-note* elements)
	(if (null? elements)
		'()
		(if (note? (car elements))
			'()
			(cons
				(car elements)
				(before-first-note* (cdr elements))))))

#(define (before-first-note** elements)
	(if (null? elements)
		'()
		(if (note?** (car elements))
			'()
			(cons
				(car elements)
				(before-first-note* (cdr elements))))))

#(define (last-note* elements)
	(letrec ((before-and-first-note*
			(lambda (elements)
				(if (null? elements)
					'()
					(if (note? (car elements))
						(list (car elements))
						(cons
							(car elements)
							(before-and-first-note* (cdr elements))))))))
		(reverse (before-and-first-note* (reverse elements)))))

#(define (before-last-note* elements)
	(letrec ((after-first-note* 
		(lambda (elements)
			(if (null? elements)
				'()
				(if (note? (car elements))
					(cdr elements)
					(after-first-note* (cdr elements)))))))
	(reverse (after-first-note* (reverse elements)))))

#(define add-first-dynamics
	(lambda (melody dynamics)
		(if dynamics
			(let ((note-and-beyond (first-note* (list-elems melody))))
				(if (null? note-and-beyond)
					melody
					(begin
						(ly:music-set-property! (car note-and-beyond) 'articulations 
							(append
								(ly:music-property (car note-and-beyond) 'articulations)
								dynamics))
						(make-melody
							(append
								(before-first-note* (list-elems melody))
								note-and-beyond)))))
			melody)))

#(define add-first-dynamics**
	;first anything, not just note
	(lambda (melody dynamics)
		(if dynamics
			(let ((note-and-beyond (first-note** (list-elems melody))))
				(if (null? note-and-beyond)
					melody
					(begin
						(ly:music-set-property! (car note-and-beyond) 'articulations 
							(append
								(ly:music-property (car note-and-beyond) 'articulations)
								dynamics))
						(make-melody
							(append
								(before-first-note** (list-elems melody))
								note-and-beyond)))))
			melody)))


#(define add-last-dynamics
	(lambda (melody dynamics)
		(if dynamics
			(let ((note-and-beyond (last-note* (list-elems melody))))
				(if (null? note-and-beyond)
					melody
					(begin
						(ly:music-set-property! (car note-and-beyond) 'articulations dynamics)
						(make-melody
							(append
								(before-last-note* (list-elems melody))
								note-and-beyond)))))
			melody)))

#(define add-dynamics
	(lambda (melody first-dynamics last-dynamics)
		(add-last-dynamics (add-first-dynamics melody first-dynamics) last-dynamics)))

#(define add-dynamics**
	(lambda (melody first-dynamics last-dynamics)
		(add-last-dynamics (add-first-dynamics** melody first-dynamics) last-dynamics)))

#(define chain
	(lambda (proc1 proc2)
		(lambda (chorale id)
			(proc2
				(make-chorale
					(proc1 chorale id))
				id))))

% #(define test #{ c1 #})
% #(display-scheme-music
% 	(ly:music-property test 'name))