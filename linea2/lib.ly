\version "2.20.0"
\include "/home/zach/lilypond/z/natural-transpose.ily"

#(define (pitch note)
	(ly:music-property note 'pitch))

#(define (duration note)
	(ly:music-property note 'duration))

%Small Constructors
#(define (make-note p d)
	(make-music
		'NoteEvent
		'pitch p
		'duration d))

#(define (make-notes p ds)
	(map
		(lambda (d)
			(make-note
				p
				d))
		ds))

#(define make-tied-notes
	(let ((make-tied-note
			(lambda (p d)
				(make-music
					'NoteEvent
					'articulations (list (make-music 'TieEvent))
					'pitch p 
					'duration d))))
		(lambda (p ds)
			(if (null? (cdr ds))
				(list (make-note
						p
						(car ds)))
				(cons (make-tied-note
						p
						(car ds))
					  (make-tied-notes
					  	p
					  	(cdr ds)))))))

#(define make-tied-notes*
	;adds a tie to the last note too
	(let ((make-tied-note
			(lambda (p d)
				(make-music
					'NoteEvent
					'articulations (list (make-music 'TieEvent))
					'pitch p 
					'duration d))))
		(lambda (p ds)
			(if (null? (cdr ds))
				(list (make-tied-note
						p
						(car ds)))
				(cons (make-tied-note
						p
						(car ds))
					  (make-tied-notes
					  	p
					  	(cdr ds)))))))

#(define (make-rest d)
	(make-music
		'RestEvent
		'duration d))

#(define (make-rests ds)
  (if (null? ds)
      '()
      (cons (make-rest (car ds))
            (make-rests (cdr ds)))))

#(define (make-n-rests n d)
	(if (zero? n)
		'()
		(cons (make-rest d)
			  (make-n-rests
			  	(- n 1)
			  	d))))

#(define (make-skip d)
	(make-music
		'SkipEvent
		'duration d))

#(define (make-skips ds)
  (if (null? ds)
      '()
      (cons (make-skip (car ds))
            (make-skips (cdr ds)))))

#(define (make-drum type d)
	(make-music
		'NoteEvent
		'drum-type type
		'duration d))


#(define current-time-sig (cons 0 0))
#(define (make-timesig moment)
  (define factor 1)
  (if (= 1 (ly:moment-main-denominator moment))
      (set! factor (* 2 factor)))
  (if (= 1 (ly:moment-main-numerator moment))
      (set! factor (* 2 factor)))
  (let ((sig-pair (cons (* factor (ly:moment-main-numerator moment))
  				  		(* factor (ly:moment-main-denominator moment)))))
  	  (if (equal? current-time-sig sig-pair)
  	  	  #{#}
  	  	  (begin
  	  	  	;(set! current-time-sig sig-pair)
			  (make-music
			    'TimeSignatureMusic
			    'beat-structure
			    '()
			    'denominator
			    (cdr sig-pair)
			    'numerator
			    (car sig-pair))))))

#(define (barline? x)
	(equal? x (make-music 'BarCheck)))

#(define* (list-elems music #:optional property)
	(if property 
		(map (lambda (x)
				(ly:music-property x property))
			(ly:music-property music 'elements)) 
		(ly:music-property music 'elements)))

#(define (concat as bs)
	(if (null? as)
		bs
		(cons
			(car as)
			(concat (cdr as) bs))))

#(define (moment->duration moment)
	(let* ((frac (ly:moment-main moment))
		   (nume-mag (integer-length (numerator frac)))
		   (compl (logxor (numerator frac)
		   				  (- (expt 2 nume-mag)
		   				  	 1)))
		   (dot-count (- (- nume-mag
		   					(integer-length compl))
		   				 1))
		   (log (- (integer-length (denominator frac))
		   		   nume-mag)))
		  (ly:make-duration log dot-count)))

#(define* (moment->durations moment #:optional (max (ly:make-duration 0)))
	(let ((max-moment (ly:duration-length max)))
		(cond ((equal? moment (ly:make-moment 0))
			   '())
			  ((ly:moment<? max-moment moment)
			   (cons max
			   		 (moment->durations
			   		 	(ly:moment-sub moment max-moment))))
			  (#t
			  	(let ((dur (moment->duration moment)))
			  		 (cons dur
			  		 	   (moment->durations
			  		 	   	(ly:moment-sub
				  		 	   	moment
				  		 	   	(ly:duration-length dur)))))))))

#(define* (moment->durations* moment #:optional (max (ly:make-duration 0)))
	(let ((max-moment (ly:duration-length max)))
		(cond ((equal? moment (ly:make-moment 0))
			   '())
			  ((ly:moment<? max-moment moment)
			   (append
			   		 (moment->durations*
			   		 	(ly:moment-sub moment max-moment))
			   		 (list max)))
			  (#t
			  	(let ((dur (ly:make-duration 
			  				(- (integer-length
			  						(ly:moment-main-denominator moment))
			  				   1))))
			  		 (cons dur
			  		 	   (moment->durations*
			  		 	   	(ly:moment-sub
				  		 	   	moment
				  		 	   	(ly:duration-length dur)))))))))

#(define (autotune pitch tonic)
  (let ((temp-pitch 
          (ly:pitch-transpose 
            pitch
            (ly:pitch-negate tonic))))
       (ly:pitch-transpose
          (ly:make-pitch
            (ly:pitch-octave pitch)
            (ly:pitch-steps pitch))
          tonic)))

#(define transpose-chorale
	(lambda (t-proc chorale)
		(map-to-voices
			(lambda (melody)
				(transpose-melody
					t-proc
					melody))
			chorale)))

#(define transpose-chorale-by-bar
	(lambda (t-proc chorale)
		(let ((first-bar-chorale ;;is broken fix these lets and it will probably run
				(map-to-voices
					(lambda (melody)
						(make-melody
							(first-bar melody)))
					chorale))
			  (butfirst-bars-chorale
			  	(map-to-voices
			  		butfirst-bars
			  		chorale)))
		(chorale-add
			(transpose-chorale t-proc first-bar-chorale)
			(transpose-chorale-by-bar
				t-proc
				butfirst-bars-chorale)))))

#(define transpose-melody
	(lambda (t-proc melody)
		(naturalize
			(map-to-bars
				(lambda (bar)
					(ly:music-transpose
						(ly:music-deep-copy bar)
						(t-proc)))
				melody))))

#(define transpose-note
	(lambda (t-proc note)
		(let ((new-pitch (t-proc)))
		(naturalize
			(ly:music-transpose
				(ly:music-deep-copy note)
				new-pitch)))))

#(define countdown
	(lambda (n)
		(define scoped-count n)
		(lambda* (#:optional msg)
			(cond ((equal? msg 'max)
				   n)
				  ((number? msg)
				  	(set! scoped-count (max 0 (- scoped-count 1)))
				  	(* (/ scoped-count n) msg))
				  (#t
				  	(set! scoped-count (max 0 (- scoped-count 1)))
					scoped-count)))))

#(define countup
	(lambda (n)
		(define scoped-count 1)
		(lambda* (#:optional msg)
			(cond ((equal? msg 'max)
				   n)
				  ((number? msg)
				  	(set! scoped-count (min (- n 1) (+ scoped-count 1)))
				  	(* (/ scoped-count n) msg))
				  (#t
				  	(set! scoped-count (min (- n 1) (+ scoped-count 1)))
					scoped-count)))))

#(define element?
	(lambda (x ls)
		(if (null? ls)
			#f
			(or (equal? x (car ls))
				(element? x (cdr ls))))))