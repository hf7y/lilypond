\version "2.20.0"
\include "/home/zach/lilypond/linea2/contextualize.ly"

%Defines the chorale data-type
%as a (make-music 'Simultaneous music)

#(define (make-chorale melody-list)
	(make-music
		'SimultaneousMusic
		'elements
		melody-list))

#(define (first-voice chorale)
	(car (list-elems chorale)))

#(define (butfirst-voices chorale)
	(make-chorale
		(cdr (list-elems chorale))))

#(define (num-voices chorale)
	(length (list-elems chorale)))

#(define (empty-chorale? chorale)
	(or (null? chorale)
		(zero? (num-voices chorale))
		(equal? (ly:make-moment 0)
				(ly:music-length chorale))))
#(define empty? empty-chorale?) %dubious sugar

#(define* (rotate chorale)
	(let ((elements
			(ly:music-property chorale 'elements)))
		(if (= 1 (length elements))
			chorale
			(make-music
				'SimultaneousMusic
				'elements
				(append (cdr elements)
						(list (car elements)))))))

#(define* (make-empty-chorale #:optional (n 0))
	(letrec ((wrapped-fxn
				(lambda (m)
					(if (zero? m)
						'()
						(cons
							(make-melody '())
							(wrapped-fxn (- m 1)))))))
		(make-chorale 
			(wrapped-fxn n))))

#(define (map-to-voices proc chorale)
	(letrec ((wrapped-fxn
				(lambda (melody-list)
					(if (null? melody-list)
						'()
						(cons
							(proc (car melody-list))
							(wrapped-fxn (cdr melody-list)))))))
			(make-chorale
				(wrapped-fxn (list-elems chorale)))))

#(define (chorale-add ch-a ch-b)
	(if (empty? ch-b)
		ch-a
		(letrec ((wrapped-fxn
					(lambda (a b)
						(if (zero? (num-voices a))
							'()
							(cons
								(melody-add
									(first-voice a)
									(first-voice b))
								(wrapped-fxn
									(butfirst-voices a)
									(rotate b)))))))
			(make-chorale (wrapped-fxn ch-a ch-b)))))

#(define (chorale-add-w-bar ch-a ch-b)
	(if (empty? ch-b)
		ch-a
		(letrec ((wrapped-fxn
					(lambda (a b)
						(if (zero? (num-voices a))
							'()
							(cons
								(melody-add-w-bar
									(first-voice a)
									(first-voice b))
								(wrapped-fxn
									(butfirst-voices a)
									(rotate b)))))))
			(make-chorale (wrapped-fxn ch-a ch-b)))))

#(define (chorale-stack chorale-a chorale-b)
	(make-chorale
		(append
			(list-elems chorale-a)
			(list-elems chorale-b))))

#(define (make-melody note-list)
	(make-music
		'SequentialMusic
		'elements
		note-list))

#(define (empty-melody? melody)
	(zero? (length (list-elems melody))))

#(define (first-note melody)
	(car (list-elems melody)))

#(define (butfirst-notes melody)
	(cdr (list-elems melody)))

#(define (first-bar melody)
	(letrec ((wrapped-fxn
				(lambda (note-list)
					(cond ((null? note-list) '())
						  ((barline? (car note-list)) '())
						  (#t (cons (car note-list)
							  		(wrapped-fxn (cdr note-list))))))))
			(make-melody
				(wrapped-fxn (list-elems melody)))))

#(define (butfirst-bars melody)
	(letrec ((wrapped-fxn
				(lambda (note-list)
				(cond ((null? note-list) '())
					  ((barline? (car note-list))
					   (cdr note-list))
					  (#t
					  	(wrapped-fxn (cdr note-list)))))))
			(make-melody
				(wrapped-fxn (list-elems melody)))))

#(define (map-to-bars proc melody)
	(if (or (null? melody) (empty-melody? melody))
		melody
		(melody-add-w-bar
			(proc (first-bar melody))
			(map-to-bars proc (butfirst-bars melody)))))

#(define (melody-add a b)
	(if (or (null? b)
			(empty-melody? b))
		a
		(make-music
			'SequentialMusic
			'elements
			(append
				(list-elems a)
				(list-elems b)))))

#(define (melody-add-w-bar a b)
	(if (or (null? b)
			(empty-melody? b))
		a	
		(make-music
			'SequentialMusic
			'elements
			(append
				(append (list-elems a)
					(list (make-music 'BarCheck)))
				(append (list-elems b))))))



%%CHORALE ELIDE

#(define* (chorale-elide chora chorb #:optional (n-bars 1))
	(chorale-add-w-bar
		(chorale-trim-right chora n-bars)
		chorb))

#(define (chorale-trim chorale n-bars)
	(cond ((zero? n-bars)
		   chorale)
		  (#t
			(chorale-trim
				(map-to-voices
					butfirst-bars
					chorale)
				(- n-bars 1)))))

#(define (chorale-trim-right chorale n-bars)
	(if (zero? n-bars)
		chorale
		(chorale-trim-right
			(map-to-voices
				butlast-bars
				chorale)
			(- n-bars 1))))

#(define (last-bar melody)
	(if (empty-melody? (butfirst-bars melody))
		(first-bar melody)
		(last-bar (butfirst-bars melody))))

#(define (butlast-bars melody)
	(let ((tail (butfirst-bars melody)))
			(if (empty-melody? tail)
				tail
				(melody-add-w-bar
					(first-bar melody)
					(butlast-bars
						tail)))))
