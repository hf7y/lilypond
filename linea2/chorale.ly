\version "2.20.0"
\include "/home/zach/lilypond/linea2/contextualize.ly"

%Defines the chorale data-type
%as a (make-music 'Simultaneous music)

#(define (first-voice chorale)
	(car (ly:music-property chorale 'elements)))

#(define (butfirst-voices chorale)
	(make-music
		'SimultaneousMusic
		'elements
		(cdr (ly:music-property chorale 'elements))))

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

#(define (empty? chorale)
	(zero? (length (list-elems chorale))))

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

#(define (make-melody note-list)
	(make-music
		'SequentialMusic
		'elements
		note-list))

#(define (make-chorale melody-list)
	(make-music
		'SimultaneousMusic
		'elements
		melody-list))

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

#(define (chorale-add ch-a ch-b)
	(if (null? ch-b)
		ch-a
		(letrec ((wrapped-fxn
					(lambda (a b)
						(if (or (null? a) (empty? a))
							'()
							(cons
								(melody-add
									(first-voice a)
									(first-voice b))
								(wrapped-fxn
									(butfirst-voices a)
									(rotate b)))))))
			(make-chorale (wrapped-fxn ch-a ch-b)))))



#(define (first-note melody)
	(car (list-elems melody)))

#(define (pitch note)
	(ly:music-property note 'pitch))
#(define (duration note)
	(ly:music-property note 'duration))

#(define (empty-melody? melody)
	(zero? (length (list-elems melody))))