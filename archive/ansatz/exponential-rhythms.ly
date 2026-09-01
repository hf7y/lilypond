\version "2.24.3"

\include "pentachords.ly"

exponentiate = #(define-music-function
	(music) (ly:music?)
	(if (music-is-of-type? music 'event-chord)
		(let ((log-smallest
			  (let halve-durations ((elements (ly:music-property music 'elements)))
				 (if (null? elements)
				 	 1
				 	 (let ((duration (ly:music-property (car elements) 'duration))
				 	 	   (depth (halve-durations (cdr elements))))
				 	 	(set! 
					 	 	(ly:music-property (car elements) 'duration)
					 	 	(ly:make-duration
					 	 		(+ (ly:duration-log duration) depth)
					 	 		(ly:duration-dot-count duration)))
				 	 	(+ depth 1))))))
			 (make-music
			 	'SequentialMusic
			 	'elements
			 	(cons
			 		(make-music
			 			'RestEvent
			 			'duration (ly:make-duration (- log-smallest 1) 0))
			 		(ly:music-property music 'elements))))
		music))

short-exponentiate = #(define-music-function
	(music) (ly:music?)
	(if (music-is-of-type? music 'event-chord)
		(let ((log-smallest
			  (let halve-durations ((elements (ly:music-property music 'elements)))
				 (if (null? elements)
				 	 1
				 	 (let ((duration (ly:music-property (car elements) 'duration))
				 	 	   (depth (halve-durations (cdr elements))))
				 	 	(set! 
					 	 	(ly:music-property (car elements) 'duration)
					 	 	(ly:make-duration
					 	 		(+ (ly:duration-log duration) depth)
					 	 		(ly:duration-dot-count duration)))
				 	 	(+ depth 1))))))
			  (make-music 'SequentialMusic
			  			  'elements
			  			  (ly:music-property music 'elements)))
		music))

retro-exponentiate = #(define-music-function
	(music) (ly:music?)
    (define (prefatory? m)
      (or ((music-type-predicate
            '(apply-context apply-output-event layout-instruction-event)) m)
          (and
           (music-is-of-type? m 'music-wrapper-music)
           (prefatory? (ly:music-property m 'element)))))
	(define (musiclistreverse lst)
      (let loop ((lst lst) (res '()) (zeros '()))
        (cond ((null? lst) (reverse! zeros res))
              ((prefatory? (car lst))
               (loop (cdr lst) res (cons (car lst) zeros)))
              (else
               (loop (cdr lst) (reverse! zeros (cons (car lst) res)) '())))))
	(if (music-is-of-type? music 'event-chord)
		(begin
			(set! (ly:music-property music 'elements) (musiclistreverse (ly:music-property music 'elements)))
			(let ((log-smallest
				   (let halve-durations ((elements (ly:music-property music 'elements)))
					 (if (null? elements)
					 	 1
					 	 (let ((duration (ly:music-property (car elements) 'duration))
					 	 	   (depth (halve-durations (cdr elements))))
					 	 	(set! 
						 	 	(ly:music-property (car elements) 'duration)
						 	 	(ly:make-duration
						 	 		(+ (ly:duration-log duration) depth)
						 	 		(ly:duration-dot-count duration)))
					 	 	(+ depth 1))))))
				 (make-music
				 	'SequentialMusic
				 	'elements
				 	(cons
				 		(make-music
				 			'RestEvent
				 			'duration (ly:make-duration (- log-smallest 1) 0))
				 		(ly:music-property music 'elements)))))
			music))

tie-on-note = #(define-music-function
	(music)(ly:music?)
	(if (music-is-of-type? music 'sequential-music)
		(let ((elements (ly:music-property music 'elements)))
			(make-music
				'SequentialMusic
				'elements
				(let tie-last-note ((elems elements))
					 (if (null? (cdr elems))
					 	 (list
					 	 	(make-music
                'NoteEvent
                'articulations
                (list (make-music 'TieEvent))
                'duration (ly:music-property (car elems) 'duration)
                'pitch (ly:music-property (car elems) 'pitch))
					 	 	(make-music
					 	 		'NoteEvent
					 	 		'duration (ly:make-duration 0 0)
					 	 		'pitch (ly:music-property (car elems) 'pitch)))
					 	 (cons (car elems) (tie-last-note (cdr elems)))))))
    music))

\layout {
  \enablePolymeter
}

\score {
	\new PianoStaff {
		<<
			\new Staff {
				\numericTimeSignature
				\time 4/4
				\clef "treble"
					#(make-music
						'SequentialMusic
						'elements
						(let loop ((times 48))
							(if (zero? times)
								'()
								(cons
									(sharpen (quotient (- times 1) 8)
											 (tie-on-note (exponentiate 
												(make-pentachord (- times 1)))))
									(loop (- times 1))))))
			}
			\new Staff {
				\time 4/4
				\clef "bass"
				#(make-music
					'SequentialMusic
					'elements
					(let loop ((times 48))
						(if (zero? times)
							'()
							(cons
								(sharpen (quotient (- times 1) 8)
									(tie-on-note (exponentiate
										(music-invert 
											(ly:make-pitch 0 1)
											(ly:make-pitch 0 1)
											;; (sharpen (quotient times 8) 
													 (make-pentachord (- times 1))))))
								(loop (- times 1))))))
			}
		>>
	}
	\midi {}
}
