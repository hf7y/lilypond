%linea/math.ly

\version "2.20.0"
\include "/home/zach/lilypond/z/natural-transpose.ily"

% contents
% ********
% mome2dur 
% mome3dur 
% mome4dur 

% changeDur
% giveDur

% giveDot
% trimDot
% giveDots
% trimDots

% unfold
% numFits

% momentToRests

% tuplet-q
% getTactus
% pitchFill


% frac->durs 
#(define* (frac->durs frac #:optional (depth -1))
	(if (or (zero? frac) (zero? depth)) '()
		(let* ((nume-mag (integer-length (numerator frac)))
			   (compl (logxor (numerator frac) (- (expt 2 nume-mag) 1))))
			  (if (zero? compl) 
			  	  (let ((dot-count (- nume-mag 1))
			  			(log (- (integer-length (denominator frac)) nume-mag)))
			  	  		;assumes (denominator frac) has form 2^n 
			  	  	   (list (ly:make-duration log dot-count)))
			  	  (let* ((compl-mag (integer-length compl))
			    		 (dot-count (- (- nume-mag compl-mag) 1))
			    		 (log (- (- (integer-length (denominator frac)) dot-count) 3)))
			  	  		;assumes (denominator frac) has form 2^n
			 			(cons (ly:make-duration log dot-count) 
			 	 			  (frac->durs (/ (logxor compl (- (expt 2 compl-mag) 1))
			 	 	   							 (denominator frac))
			 	 	   					   (- depth 1))))))))


#(define (mome2dur mome)
	; express mome as largest dur less than mome
	(car (frac->durs (ly:moment-main mome) 1)))

#(define (mome3dur mome)
	; express mome as list of durs
	(frac->durs (ly:moment-main mome)))

#(define (mome4dur mome)
	(letrec ((fn (lambda (frac)
					   (if (zero? (numerator frac)) '()
					   	   (cons (ly:make-duration (- (integer-length (denominator frac)) 1))
								 (fn (/ (- (numerator frac) 1) (denominator frac))))))))
			(fn (ly:moment-main mome))))


%The following *Dur and *Dot* functions presume (ly:music-length note) of the form 2^m-1/2^n
changeDur = #(define-scheme-function
	(dur note)
	(ly:duration? ly:music?)
	(let* ((durX (mome2dur (ly:music-length note))))
		 (shiftDurations (- (ly:duration-log dur) (ly:duration-log durX))
		 				 (- (ly:duration-dot-count dur) (ly:duration-dot-count durX))
		 				 	(ly:music-deep-copy note))))

giveDur = #(define-scheme-function
	(noteY noteX)
	(ly:music? ly:music?)
	(let* ((durY (mome2dur (ly:music-length noteY)))
		   (durX (mome2dur (ly:music-length noteX))))
		 (shiftDurations (- (ly:duration-log durY) (ly:duration-log durX))
		 				 (- (ly:duration-dot-count durY) (ly:duration-dot-count durX))
		 				 	(ly:music-deep-copy noteX))))

giveDot = #(define-scheme-function
    (noteX noteY)
    (ly:music? ly:music?)
    (let ((dots (ly:duration-dot-count (ly:music-property noteX 'duration)))
          (log (ly:duration-log (ly:music-property noteX 'duration))))
        (if (= dots 0) #{  \changeDur #(ly:make-duration (+ log 2) 0) $noteY #}
                       #{  \changeDur #(ly:make-duration (+ dots log) 0) $noteY #} )))

trimDot = #(define-scheme-function
    (noteX)
    (ly:music?)
    (let ((dots (ly:duration-dot-count (ly:music-property noteX 'duration)))
          (log (ly:duration-log (ly:music-property noteX 'duration))))
        (if (= dots 0) #{  \shiftDurations #1 #1  $noteX #}
                       #{  \shiftDurations #0 #-1 $noteX #} )))

giveDots = #(define-scheme-function
	(noteX noteY)
	(ly:music? ly:music?)
	(if (= 0 (ly:duration-dot-count (ly:music-property noteX 'duration)))
		#{ #}
		#{  \shiftDurations #1 #-1 \giveDur $noteX $noteY #} ))

trimDots = #(define-scheme-function
	(noteX)
	(ly:music?)
	(if (= 0 (ly:duration-dot-count (ly:music-property noteX 'duration)))
		noteX
		#{  \shiftDurations #0 #(- 0 (ly:duration-dot-count (ly:music-property noteX 'duration))) $noteX #} ))

unfold = #(define-music-function (n mus) (index? ly:music?)
   ;; via Lukas-Fabian Moser lfm@gmx.de
   (if (positive? n)
       #{ \repeat unfold #n { #mus } #}
       #{ #} ))

numFits = #(define-scheme-function
	;; returns list number of times noteX fits into noteY
	;; and ly:moment of remaining time
	(noteX noteY)
	(ly:music? ly:music?)
	(let ((lenX (ly:duration-length (ly:music-property noteX 'duration)))
          (lenY (ly:duration-length (ly:music-property noteY 'duration))))
		 (if (ly:moment<? lenX lenY)
			 (let ((nume (ly:moment-main-numerator
			 			  (ly:moment-div lenY lenX)))
			 	   (den (ly:moment-main-denominator
			 	   	     (ly:moment-div lenY lenX))))
			       (let ((q (/ (- nume (remainder nume den)) den)))
			       		(cons q 
			       			  (ly:moment-sub lenY (ly:moment-mul lenX 
			       			  	                  (ly:make-moment q))))))
			 	   (cons 0 lenY))))

momentToRests = #(define-scheme-function
	(moment)
	(ly:moment?)
	(let ((momeLog (/ (log (ly:moment-main-denominator moment)) (log 2)))
		  (num (ly:moment-main-numerator moment)))
	     (let ((x #{ \unfold #num {
	     				\shiftDurations #(inexact->exact momeLog) #0 {
	     					r1 }} #}))
		      (if (> num 0) x))))

#(define reduce-tuplets #t)
tuplet-q = #(define-music-function
	(frac music)
	(fraction? ly:music?)
	(if (and (= (logand (car frac) (- (car frac) 1)) 0)
			 (= (logand (cdr frac) (- (cdr frac) 1)) 0))
		#{ 
			\shiftDurations #(inexact->exact (/ (log (/ (car frac) (cdr frac))) (log 2))) #0 $music #}
		(if (and reduce-tuplets (and (even? (car frac)) (even? (cdr frac))))
				#{ \tuplet #(cons (/ (car frac) 2) (/ (cdr frac) 2)) $music #}
				#{ \tuplet $frac $music #})))

getTactus = #(define-scheme-function
	(min music)
	((number? 1) ly:music?)
	(let* ((mome (ly:music-length music))
		   (nume (ly:moment-main-numerator mome))
		   (den  (ly:moment-main-denominator mome)))
		(if (< nume min) (let ((x (getTactus (/ min 2) (shiftDurations 1 0 music))))
							  (cons (car x) (* 2 (cdr x))))
			(cons (ly:make-duration (- (integer-length den) 1)) nume))))

pitchFill = #(define-music-function
	(min init final semis)
	((number? 4) ly:music? ly:music? (number? 0))
	(letrec ((tactus (getTactus min #{ $init $final #}))
		     (function (lambda (m s i f)
			    (if (<= m 1) (list f)
					(let ((transposition (round (/ s (- m 1)))))
			     		(cons i (function (- m 1) (- s transposition)
			     			#{\n-transpose c #(ly:make-pitch -1 0 (/ transposition 4)) $i #} f)))))))
			(make-music
				'SequentialMusic
				'elements
				(function (cdr tactus) (* 2 semis) (changeDur (car tactus) init) 
							  (changeDur (car tactus) final)))))