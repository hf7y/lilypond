\version "2.20.0"
\include "../linea/math.ly"

on = #(define-music-function
	(name music)(string? ly:music?)
	#{ \context Staff = #name {
			#music } #})

scale = \relative c { c d e f g a b }

head = #(define-music-function
	(pitchA pitchB dur)(ly:pitch? (ly:pitch?) ly:duration?)
	(let ((note (make-music 'NoteEvent
							'pitch (if pitchB pitchB pitchA)
							'duration dur)))
	(if pitchB (make-music
			 	'EventChord
			 	'elements
			 	(list (ly:music-deep-copy note)
			 	 	  (ly:music-transpose note pitchA)))
		note)))

tail = #(define-music-function
	(depth note)((number? 4) ly:music?)
	(if (zero? depth) #{#} )
		(let ((tup-info (mome->tup-info (ly:music-length note) depth)))
			 (n-tuplet (car tup-info)
			 		   (make-music
			 		   		'SequentialMusic
			 		   		'elements
			 		   		(arp-note (changeDur (cdr tup-info) note) depth)))))

headxtail = #(define-music-function
	(depth pitchA pitchB dur)((number? 1) ly:pitch? (ly:pitch?) ly:duration?)
	(if (zero? depth) #{#}
		(let ((chord (head pitchA (if pitchB pitchB) dur)))
			 (if (= depth 1) chord
			 	 (tail depth chord)))))

headntail = #(define-music-function
	(depth pitchA pitchB dur)((number? 1) ly:pitch? (ly:pitch?) ly:duration?)
	(if (zero? depth) #{#}
		(let* ((note (make-music 'NoteEvent
							'pitch (if pitchB pitchB pitchA)
							'duration dur))
			   (tup-info (mome->tup-info (ly:music-length note) depth)))
			  (n-tuplet (car tup-info)
				 		(make-music
				 		   	'SequentialMusic
				 		   	'elements
				 		   	(cons (head pitchA (if pitchB pitchB) (cdr tup-info))
				 		   	      (cdr (arp-note (changeDur (cdr tup-info) note) depth))))))))

#(define* (arp-note note depth)
	(let ((transposition (- 2 (floor (/ (random 3) 2)))))
		(if (zero? depth) '()
			(cons (ly:music-deep-copy note) 
				  (arp-note (modalTranspose 
				  				(ly:make-pitch 0 0)
				  				(ly:make-pitch 0 transposition)
				  				scale
				  				note)
				  			(- depth 1))))))

#(define (mome->tup-info mome nume)
	(let ((pulse-log (ly:moment-main-denominator mome))
		  (pair (unreduce (cons (ly:moment-main-numerator mome)
		  						(ly:moment-main-denominator mome))
		  				   nume)))
		 (cons (cons nume (car pair))
		 	   (ly:make-duration (- (integer-length (cdr pair)) 1)))))

#(define (unreduce pair num)
	(let ((double-den (* (cdr pair) 2)))
		 (if (> double-den num) pair
		 	 (unreduce (cons (* (cdr pair) 2)
		 	 					 double-den)
		 	 			num))))

n-tuplet = #(define-music-function
	(pair music)(pair? ly:music?)
	(if (zero? (logand (car pair) (- (car pair) 1))) music
			 (tuplet pair music)))

getElements = #(define-scheme-function
	(music)(ly:music?)
	(let ((elements (ly:music-property music 'elements)))
		 (if (null? elements) (list music)
		 	 elements)))


#(define (not-music? x) (not (ly:music? x)))
distributeFunction = #(define-music-function
	(func argA argB music)(ly:music-function? (not-music?) (not-music?) ly:music?)
	(let ((elements (getElements music)))
		 (make-music
		 	'SequentialMusic
		 	'elements 
		 	(map (lambda (x) (func (if argA argA)
		 						   (if argB argB)
		 						   x))
		 		 elements))))