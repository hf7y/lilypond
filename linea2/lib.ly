\version "2.20.0"

%Small Constructors
#(define (make-note p d)
	(make-music
		'NoteEvent
		'pitch p
		'duration d))

#(define (make-rest d)
	(make-music
		'RestEvent
		'duration d))

#(define (make-rests ds)
  (if (null? ds)
      '()
      (cons (make-rest (car ds))
            (make-rests (cdr ds)))))

#(define (make-skip d)
	(make-music
		'SkipEvent
		'duration d))

#(define (make-drum type d)
	(make-music
		'NoteEvent
		'drum-type type
		'duration d))

#(define (make-timesig moment)
  (define factor 1)
  (if (= 1 (ly:moment-main-denominator moment))
      (set! factor (* 2 factor)))
  (if (= 1 (ly:moment-main-numerator moment))
      (set! factor (* 2 factor)))
  (make-music
    'TimeSignatureMusic
    'beat-structure
    '()
    'denominator
    (* factor (ly:moment-main-denominator moment))
    'numerator
    (* factor (ly:moment-main-numerator moment))))

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