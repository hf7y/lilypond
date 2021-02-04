\version "2.20.0"

\include "/home/zach/lilypond/z/triangle-heads.ly"
\include "/home/zach/lilypond/z/note.ily"
\include "/home/zach/lilypond/z/natural-transpose.ily"
\include "/home/zach/lilypond/z/square.ily"
\include "/home/zach/lilypond/z/staff.ily"
\include "./multiphonics.ily"

$(define-public tutti
	(list 'fl 'cl 'bn 'tbn
		'up 'down
		'vn 'va 'vc 'db))
$(define-public gestures
	(list 
		'buzz
		'clap
		'crackle
		'hiss
		'howl
		'hum
		'kick
		'pluck
		'rev
		'ring
		'rumble
		'snap
		'strum
		'whine
		'whistle
		))

#(define (mome2dur mome)
	(let* ((nume (ly:moment-main-numerator mome))
		  			 (den  (ly:moment-main-denominator mome))
					 (n (- (string-length (number->string nume 2)) 1))
					 (m (- (string-length (number->string den 2)) (+ n 1))))
					 (ly:make-duration m n)))

#(define (mome3dur mome)
	(let ((nume (ly:moment-main-numerator mome))
		  (den  (ly:moment-main-denominator mome)))
	 	 (if (= nume 0) '()
	 	 	 (let ((index (logxor nume (- (expt 2 (integer-length nume)) 1))))
	 	 	 	  (cond ((= index 0) (list (mome2dur mome)))
	 	 	 	  		(#t (let* ((shift (- 1 (integer-length index)))
	 	 	 	  				   (big (ash (ash nume shift) (- shift))))
	 	 	 	  				  (cons (mome2dur (ly:make-moment big den))
	 	 	 	  				  		(mome3dur (ly:make-moment (- nume big) den))))))))))

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
		   (durX (ly:music-property noteX 'duration)))
		 (shiftDurations (- (ly:duration-log durY) (ly:duration-log durX))
		 				 (- (ly:duration-dot-count durY) (ly:duration-dot-count durX))
		 				 	(ly:music-deep-copy noteX))))

giveDot = #(define-scheme-function
	(noteX noteY)
	(ly:music? ly:music?)
	(if (= 0 (ly:duration-dot-count (ly:music-property noteX 'duration)))
		#{ #}
		#{  \shiftDurations #(let ((x (ly:music-property noteX 'duration)))
			                      (+ (ly:duration-log x) (ly:duration-dot-count x)))
			                #0 \giveDur s1 $noteY #} ))

trimDot = #(define-scheme-function
	(noteX)
	(ly:music?)
	(if (= 0 (ly:duration-dot-count (ly:music-property noteX 'duration)))
		noteX
		#{  \shiftDurations #0 #-1 $noteX #} ))
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
#(define-public autoSig #f)
autoTimeSig = #(define-music-function
	(music)
	(ly:music?)
	(if (not autoSig) 
		#{ #}
		#{ \context Score { \time #(let* ((moment (ly:music-length music))
										 (nume (ly:moment-main-numerator moment))
										 (den  (ly:moment-main-denominator moment)))
										 (if (= 1 nume) (cons (* 2 nume) (* 2 den))
									         			(cons nume den))) } #} ))
makeTimeSig = #(define-music-function
	(music)
	(ly:music?)
	#{ #}
	#{ \time #(let* ((moment (ly:music-length music))
					 (nume (ly:moment-main-numerator moment))
					 (den  (ly:moment-main-denominator moment)))
					(if (= 1 nume) (cons (* 2 nume) (* 2 den))
				       			   (cons nume den))) 
	   $music #} )


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

pizz = ^\markup \italic "pizz."
ord = ^\markup \italic "ord."
arco = ^\markup \italic "arco"

techniques = #(list (cons "fl" "ord.") (cons "cl" "ord.")
					(cons "bn" "ord.") (cons "tbn" "ord.")
					(cons "up" "ord.") (cons "down" "ord.")
					(cons "vn" "arco") (cons "va" "arco")
					(cons "vc" "arco") (cons "db" "arco"))

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


buzz = 
#(define-music-function
    (instruments noteA noteB)
    ((list? tutti) ly:music? ly:music?)
   (define pitchA (ly:music-property noteA 'pitch))
   (define durA (ly:music-property noteA 'duration))
   (define pitchB (ly:music-property noteB 'pitch))
   (define durB (ly:music-property noteB 'duration))
   #{
    <<
    	\autoTimeSig { $noteA $noteB }
    	#(if (memq 'fl instruments) 
    		#{
    			\context Staff = "fl" {
    				\clef "treble"
					\n-transpose c des' \giveDot $noteA $noteB :32 \glissando
					\n-transpose c c' \trimDot $noteA :32 \glissando
					\n-transpose c bis \trimDot $noteB :32
					\giveDot $noteB r
		        }
    		#})
		#(if (memq 'cl instruments) 
    		#{
    			\context Staff = "cl" {
    				\clef "treble"
    				<<
    					{
	    					\giveDur $noteA s
	    					\once \override NoteHead.X-offset = #0.4
	    					<< \tag #'verbose \footnote #'(0 . 0) "overtone" \giveDur $noteB \hide r1
	    					\n-transpose $pitchB c
	    						\tiny \stemless \parenthesize
      							\giveDur $noteB g'' >>
      					}\\{
      						\n-transpose c c' {
      							\oneVoice \giveDur $noteA $noteB ~
    							\voiceTwo $noteB
    						}
    					}
    				>>
		        }
		    #})
		#(if (memq 'bn instruments) 
    		#{
    			\context Staff = "bn" {
    				\clef "bass"
    				\no-line
    				<< 
    				\tag #'verbose { \footnote #'(0 . 0) "remove reed" \hide \giveDur $noteA r1}
    				{ \giveDur $noteA d\>^\markup \tiny "crow" \giveDur $noteB r\! } >> 
		        }
			#})
		#(if (memq 'tbn instruments) 
    		#{
    			\context Staff = "tbn" {
    				\clef "tenor"
    				\n-transpose c c' { $noteA :32 \glissando 
    					\shiftDurations #1 0 {
    						$noteB \giveDur $noteB r } }
		        }
			#})
		#(if (memq 'up instruments) 
    		#{
    			\context Staff = "up" {
    				\clef "treble"
    				\n-transpose c c''
    				<<
    					\n-transpose c c'
    					\giveDur r8 $noteA ^- \\
    					\giveDur r8 $noteB _.
    					\\
    					{ \giveDur $noteA s
    						\giveDur $noteB s }
    				>>
		        }		        
			#})
		#(if (memq 'down instruments) 
    		#{
    			\context Staff = "down" {
    				\clef "bass"
    				\shiftDurations #1 #0 {
    					\giveDur $noteA r
    					$noteA :32 \<
    				}
    				\giveDur $noteB r\!
		        }	        
			#})
		#(if (memq 'vn instruments) 
    		#{
    			\context Staff = "vn" {
    				\clef "treble"
    				\shiftDurations #(ly:duration-log durA)
    					#(ly:duration-dot-count durA)
    				\n-transpose c,, $pitchA
    					<c geh>1\>_~^\markup {\italic "vib."}
    				\shiftDurations #(ly:duration-log durB)
    					#(ly:duration-dot-count durB) {
	    				\n-transpose c,, $pitchA
	    					<c aes>2
	    					r2\!
    				}
		        }		        
			#})
		#(if (memq 'va instruments) 
    		#{		        
		        \context Staff = "va" {
		        	\clef "alto"
		        	\n-transpose c, $pitchB {
			        	\shiftDurations #(ly:duration-log durA) 
	    					#(ly:duration-dot-count durA) {
	    					r2 <c aes>2\<_~^\markup {\italic "vib."}
	    				}
	    				\shiftDurations #(ly:duration-log durB)
	    					#(ly:duration-dot-count durB) {
		    				<c geh>1\! }
	    			}
		        }
			#})
		#(if (memq 'vc instruments) 
    		#{		        
		        \context Staff = "vc" {
		        	\clef "bass"
	    			\n-transpose c $pitchA
	    			#(let ((ls (mome3dur (ly:moment-add (ly:duration-length durA)
    							 						(ly:duration-length durB)))))
    						(make-sequential-music 
    							(list (changeDur (car ls) #{ <c f\harmonic>2\>
    														 ^\markup \italic "sul pont." #})
    								  (if (null? (cdr ls)) #{#} 
    								  	  (changeDur (cadr ls) #{ r1 #})))))
		        }
			#})
		#(if (memq 'db instruments) 
    		#{		        
		        \context Staff = "db" {
		        	\clef "bass_8"
	    			\n-transpose c' $pitchB
	    			#(let ((ls (mome3dur (ly:moment-add (ly:duration-length durA)
    							 						(ly:duration-length durB)))))
    						(make-sequential-music 
    							(list (if (null? (cdr ls)) #{#} 
    								  	  (changeDur (cadr ls) #{ r1 #}))
    								  (changeDur (car ls) #{ <c f\harmonic>2\>
    								  						 ^\markup \italic "sul pont." #}))))
		        }
		    #})
    >>
    #})

clap = 
#(define-music-function
    (instruments note)
    ((list? tutti) ly:music?)
   (define pitch (ly:music-property note 'pitch))
   (define dur (ly:music-property note 'duration))
   (define randA (random 2))
   (define randB (random 2))
   #{
    <<
    	\autoTimeSig $note
    	#(if (memq 'fl instruments) 
    		#{
    			\context Staff = "fl" <<
    				\context Voice = "fl" {
	    				\clef "treble"
	    				\n-transpose c, $pitch
			        	\tuplet-q #(cons (- 6 randB) 4)
			        	\shiftDurations #(ly:duration-log dur)
			        		#(ly:duration-dot-count dur) {
			        		r2
			        		c4
			        		\shiftDurations #0 #(- randB) r2.
			        	} } 
			        \context Lyrics = "fl" \lyricsto "fl" { p } >>
	    			
    		#})
		#(if (memq 'cl instruments) 
    		#{
    			\context Staff = "cl" {
    				\clef "treble"
    				\n-transpose c, $pitch
		        	\tuplet-q #(cons (- 6 randB) 4)
		        	\shiftDurations #(ly:duration-log dur)
		        		#(ly:duration-dot-count dur) {
		        		r4
		        		c4-+
		        		\shiftDurations #randB #randB r1
		        	}
    			}
		    #})
		#(if (memq 'bn instruments) 
    		#{
    			\context Staff = "bn" {
    				\clef "bass"
    				\tuplet-q #(cons (- 6 randB) 4)
		        	\shiftDurations #(ly:duration-log dur) #(ly:duration-dot-count dur) {
		        		\shiftDurations #0 #(- randB) r2.
	        			\n-transpose c' $pitch c4 -+
		        		r2
		        	}
		        }
			#})
		#(if (memq 'tbn instruments) 
    		#{
    			\context Staff = "tbn" {
    				\clef "bass"
    				\tuplet-q #(cons (- 6 randB) 4)
		        	\shiftDurations #(ly:duration-log dur) #(ly:duration-dot-count dur) {
		        		r4.
	        			\n-transpose c' $pitch c8 -+
		        		\shiftDurations #randB #randB r1
		        	}
		        }
			#})
		#(if (memq 'up instruments) 
    		#{
    			\context Staff = "up" {
    				\giveDur $note s
		        }		        
			#})
		#(if (memq 'down instruments) 
    		#{
    			\context Staff = "down" {
		        	\clef "bass"
		        	\autochange
		        	\tweak positions #'(5 . 5)
  					\tweak edge-height #'(0 . 0)
		        	\tuplet-q #(cons (+ 5 randA) 4)
		        	\n-transpose c $pitch
		        	\shiftDurations #(ly:duration-log dur) #(ly:duration-dot-count dur) {
		        		f4 #(if randA #{ r #}) c''[ c' ] f, r }
				}	        
			#})
		#(if (memq 'vn instruments) 
    		#{
    			\context Staff = "vn" {
    				\clef "treble"
    				\n-transpose f, $pitch
		        	\tuplet-q #(cons 5 4)
		        	\shiftDurations #(ly:duration-log dur)
		        		#(ly:duration-dot-count dur) {
		        		d'4-.^\markup \italic "pizz."
		        		#(if randB #{r4#})
		        		<c g d' a'>4-.
		        		\shiftDurations #0 #(- randB) r2.
		        	}
		        }		        
			#})
		#(if (memq 'va instruments) 
    		#{		        
		        \context Staff = "va" {
		        	\clef "alto"
		        	\n-transpose c $pitch
		        	\tuplet-q #(cons (- 6 randB) 4)
		        	\shiftDurations #(ly:duration-log dur)
		        		#(ly:duration-dot-count dur) {
		        		r4.
		        		<c g d' a'>8^\markup \italic "pizz."-.
		        		\shiftDurations #randB #randB r1
		        	}
		        }
			#})
		#(if (memq 'vc instruments) 
    		#{		        
		        \context Staff = "vc" {
		        	\clef "bass"
		        	\tuplet-q #(cons (+ 5 randA) 4)
		        	\shiftDurations #(ly:duration-log dur) #(ly:duration-dot-count dur) {
		        		r2
		        		c,4\snappizzicato(
		        		\n-transpose c #pitch f,)
		        		\shiftDurations #(- randA) #0 r4
		        	}
		        }
			#})
		#(if (memq 'db instruments)
    		#{	
		        \context Staff = "db" {
		        	\clef "bass_8"
		        	\tuplet-q #(cons (+ 5 randB) 4)
		        	\shiftDurations #(ly:duration-log dur) #(ly:duration-dot-count dur) {
		        		r4
		        		e,,4\snappizzicato (
		        		\n-transpose c' $pitch c)
		        		\shiftDurations #0 #randB r2
		        	}
		        }
		    #})
    >>
    #})

crackle = 
#(define-music-function
    (instruments noteA noteB)
    ((list? tutti) ly:music? ly:music?)
   (define pitchB (ly:music-property noteB 'pitch))
   (define durB (ly:music-property noteB 'duration))
   (define pitchA (ly:music-property noteA 'pitch))
   (define durA (ly:music-property noteA 'duration))
   (define randA (random 2))
   (define randB (random 2))
   (define fits (car (numFits noteA noteB)))
	#{
    <<
   		\autoTimeSig { $noteB }
    	#(if (memq 'fl instruments) 
    		#{
    			\context Staff = "fl" << \context Voice = "fl" {
    					\clef "treble"
	    				\n-transpose c c''
			        	#(if (> fits 0)
			        		 (let ((quo (floor (/ fits 3))))
			        		 	  (let ((rem (- fits (* quo 3))))
			        		 	  	   #{
			        		 	  	   \tuplet-q #(cons (+ 1 fits) fits) {
			        		 	  	   		\giveDur $noteA r
				        		 	  	   \unfold #quo {
				        		 	  	   	   		\giveDur $noteA $noteB
				        		 	  	   	   		\shiftDurations #-1 #0 \giveDur $noteA r }
				        		 	  	   \unfold #rem { $noteA -. } } #} )))
			        	#(momentToRests (cdr (numFits noteA noteB))) }
			        	\context Lyrics = "fl" \lyricsto "fl" { k t k t k t} >>
    		#})
		#(if (memq 'cl instruments) 
    		#{
    			\context Staff = "cl" {
    				\clef "treble"
    				\relative c''
		        	#(if (> fits 0)
		        		 (let ((quo (floor (/ fits 5))))
		        		 	  (let ((rem (- fits (* quo 5))))
		        		 	  	   #{
		        		 	  	   \tuplet-q #(cons (+ 1 fits) fits) {
			        		 	  	   \unfold #quo {
		        		 	  	   	   		\giveDur $noteA $noteB
		        		 	  	   	   		\giveDur $noteA r
		        		 	  	   	   		\giveDur $noteA $noteA -+
		        		 	  	   	   		\shiftDurations #-1 #0 \giveDur $noteA r
			        		 	  	   }
			        		 	  	   \giveDur $noteA $noteB
			        		 	  	   \unfold #rem { \giveDur $noteA $noteB -. } } #} )))
		        	#(momentToRests (cdr (numFits noteA noteB)))
		        }
		    #})
		#(if (memq 'bn instruments) 
    		#{
    			\context Staff = "bn" {
    				\clef "bass"
		        	#(if (> fits 0)
		        		 (let ((quo (floor (/ fits 3))))
		        		 	  (let ((rem (- fits (* quo 3))))
		        		 	  	   #{
		        		 	  	   \tuplet-q #(cons (+ 2 fits) fits) {
		        		 	  	   	   $noteA
			        		 	  	   \unfold #quo {
			        		 	  	  		\giveDur $noteA $noteB -+
			        		 	  	   	   	\shiftDurations #-1 #0 \giveDur $noteA r }
			        		 	  	   \unfold #rem { $noteA -+ }
			        		 	  	   $noteA } #} )))
		        	#(momentToRests (cdr (numFits noteA noteB)))
		        }
			#})
		#(if (memq 'tbn instruments) 
    		#{
    			\context Staff = "tbn" {
    				\clef "bass"
		        	#(if (> fits 0)
		        		 (let ((quo (floor (/ fits 6))))
		        		 	  (let ((rem (- fits (* quo 6))))
		        		 	  	   #{
		        		 	  	   \tuplet-q #(cons (+ 1 fits) fits) {
		        		 	  	   		$noteA
			        		 	  	   \unfold #quo {
		        		 	  	   	   		\shiftDurations #-1 #1 
		        		 	  	   	   		\giveDur $noteA r
		        		 	  	   	   		
		        		 	  	   	   		<< { \xNotesOn \giveDur $noteA $noteB  \xNotesOff }
		        		 	  	   	   		\tag #'verbose { \footnote #'(0 . 0) "slap-tongue" \giveDur $noteA \hide r1 } >>
		        		 	  	   	   		\giveDur $noteA r
		        		 	  	   	   		\headless \giveDur $noteA c'^\markup \tiny "ding" }
			        		 	  	   \unfold #rem { $noteA -. } } #} )))
		        	#(momentToRests (cdr (numFits noteA noteB)))
		        }
			#})
		#(if (memq 'up instruments) 
    		#{
    			\context Staff = "up" {
		        	#(if (> fits 0)
		        		 (let* ((quo (floor (/ fits 4)))
		        		 	    (rem (- fits (* quo 4))))
		        		 	   #{ \n-transpose c $pitchA
		        		 	  	  \shiftDurations #(ly:duration-log durA)
		        		 	  	   	   #(ly:duration-dot-count durA)
			        		 	  	   \tuplet-q #(cons (+ 3 fits) fits) {
			        		 	  	   		r1
			        		 	  	   	    des'1
			        		 	  	   	    #(if (> quo 1)
				        		 	  	   		#{  \shiftDurations #-2 #0 r1
				        		 	  	   			<< \unfold #(- quo 1) {
			        		 	  	   	   				ais-. b-. r des'-. } s\pizz >> #}
			        		 	  	   	    	#{ \unfold #quo {
			        		 	  	   	   		 	ais-. b-. r des'-. } #})
			        		 	  	   	    g1
				        		 	  	    \unfold #rem { ais1 -. } } #} ))
		        	%any remainder given out as rests
		        	#(momentToRests (cdr (numFits noteA noteB)))
		        }		        
			#})
		#(if (memq 'down instruments) 
    		#{
    			\context Staff = "down" {
    				\giveDur $noteB r
		        }	        
			#})
		#(if (memq 'vn instruments) 
    		#{
    			\context Staff = "vn" {
		        	#(if (> fits 0)
		        		 (let* ((quo (floor (/ fits 5)))
		        		 	  	(rem (- fits (* quo 5))))
		        		 	  	#{  \tuplet-q #(cons (+ 2 fits) fits) {
			        		 	  	   \unfold #quo {
		        		 	  	   	   		\giveDur $noteA $noteB
		        		 	  	   	   		\shiftDurations #-1 #0 \giveDur $noteA r
		        		 	  	   	   		$noteA
		        		 	  	   	   		\giveDur $noteA r }
		        		 	  	   	   \n-transpose c, des $noteA
		        		 	  	   	   \n-transpose c, cih \giveDur $noteA $noteB
			        		 	  	   \unfold #rem { \n-transpose c, c $noteA -. } } #} ))
		        	#(momentToRests (cdr (numFits noteA noteB)))
				}	        
			#})
		#(if (memq 'va instruments) 
    		#{		        
		        \context Staff = "va" {
		        	#(if (> fits 0)
		        		 (let* ((quo (floor (/ fits 5)))
		        		 	  	(rem (- fits (* quo 5))))
		        		 	  	#{  \tuplet-q #(cons (+ 2 fits) fits) {
		        		 	  	   	   \n-transpose c des $noteA
			        		 	  	   \unfold #quo {
		        		 	  	   	   		\giveDur $noteA $noteB
		        		 	  	   	   		\shiftDurations #-1 #0 \giveDur $noteA r
		        		 	  	   	   		$noteA
		        		 	  	   	   		\giveDur $noteA r }
		        		 	  	   	   \n-transpose c cih \giveDur $noteA $noteB
			        		 	  	   \unfold #rem { $noteA -. } } #} ))
		        	#(momentToRests (cdr (numFits noteA noteB)))
		        }
			#})
		#(if (memq 'vc instruments) 
    		#{		        
		        \context Staff = "vc" {
		        	\clef "bass"
		        	#(if (> fits 0)
		        		 (let* ((quo (floor (/ fits 5)))
		        		 	  	(rem (- fits (* quo 5))))
		        		 	  	#{  \tuplet-q #(cons (+ 2 fits) fits) {
		        		 	  	   	   \n-transpose c des $noteA
			        		 	  	   \unfold #quo {
		        		 	  	   	   		\giveDur $noteA $noteB
		        		 	  	   	   		\shiftDurations #-1 #0 \giveDur $noteA r
		        		 	  	   	   		$noteA
		        		 	  	   	   		\giveDur $noteA r }
		        		 	  	   	   \n-transpose c cih \giveDur $noteA $noteB
			        		 	  	   \unfold #rem { $noteA -. } } #} ))
		        	#(momentToRests (cdr (numFits noteA noteB)))
		        }
			#})
		#(if (memq 'db instruments)
    		#{	
		        \context Staff = "db" {
		        	\clef "bass_8"
		        	#(if (> fits 0)
		        		 (let ((quo (floor (/ fits 5))))
		        		 	  (let ((rem (- fits (* quo 5))))
		        		 	  	   #{
		        		 	  	   << \tuplet-q #(cons (+ 1 fits) fits) {
		        		 	  	   	   \n-transpose c c,
			        		 	  	   \unfold #quo {
		        		 	  	   	   		\giveDur $noteA $noteB
		        		 	  	   	   		\giveDur $noteA r
		        		 	  	   	   		$noteA 
		        		 	  	   	   		\giveDur $noteA r
		        		 	  	   	   		\giveDur $noteA r}
		        		 	  	   	   \giveDur $noteA e,,\snappizzicato
			        		 	  	   \n-transpose c c, \unfold #rem { $noteA -. } } 
			        		 	  	   \giveDur $noteA s \pizz >> #} )))
		        	#(momentToRests (cdr (numFits noteA noteB)))
		        }
		    #})
    >>
    #})


hiss = 
#(define-music-function
    (instruments noteA noteB)
    ((list? tutti) ly:music? ly:music?)
    (define pitchA (ly:music-property noteA 'pitch))
   (define durA (ly:music-property noteA 'duration))
   (define pitchB (ly:music-property noteB 'pitch))
   (define durB (ly:music-property noteB 'duration))
   (define randA (random 2))
   (define randB (random 2))
   #{
    <<
    	#(if (memq 'fl instruments) 
    		#{
    			\context Staff = "fl" <<
    				\context Voice = "fl" {
    					\fixed c' { \trimDot $noteA \> \giveDot $noteA r\! }
	    			}
	    			\context Lyrics = "fl" \lyricsto "fl" { ⟨s⟩ }
		        >>
    		#})
		#(if (memq 'cl instruments) 
    		#{
    			\context Staff = "cl" {
    				#(let ((ls (mome3dur (ly:moment-add (ly:duration-length durA)
    							 						(ly:duration-length durB)))))
    						(make-sequential-music 
    							(list (changeDur (car ls) multiphonic-clA)
    								  (if (null? (cdr ls)) #{#} 
    								  	  (changeDur (cadr ls) #{ r1 #})))))

		        }
		    #})
		#(if (memq 'bn instruments) 
    		#{
    			\context Staff = "bn" {
    				\shiftDurations #1 #0 {
    					\giveDur $noteA r
    					\once \override Hairpin.circled-tip = ##t
    					\once \override Hairpin.to-barline = ##f
    					$noteA ~\>
    					\shiftDurations #0 #1
    					\giveDur $noteB $noteA \!
    					\shiftDurations #1 #0 \giveDur $noteB r }
		        }
			#})
		#(if (memq 'tbn instruments) 
    		#{
    			\context Staff = "tbn" {
    					<< \tag #'verbose \footnote #'(0 . 0) "air" \hide \giveDur $noteA r1 
    					\no-line
						#(let ((ls (mome3dur (ly:moment-add (ly:duration-length durA)
    							 						(ly:duration-length durB)))))
    						(make-sequential-music 
    							(list (if (null? (cdr ls)) #{#} 
    								  	  (changeDur (cadr ls) #{ r1 #}))
    								  (changeDur (car ls) #{\square d1#})))) >>
		        }
			#})
		#(if (memq 'up instruments) 
    		#{
    			\context Staff = "up" {
		        }		        
			#})
		#(if (memq 'down instruments) 
    		#{
    			\context Staff = "down" {
		        }		        
			#})
		#(if (memq 'vn instruments) 
    		#{
    			\context Staff = "vn" {
    				\shiftDurations #1 #0 \giveDur $noteB r1
    				#(let ((ls (mome3dur (ly:music-length #{ $noteA 
    														 \shiftDurations #1 #0 $noteB #}))))
    						(make-sequential-music 
    							(list #{ \changeDur #(car ls) 
    								  				\n-transpose c,, $pitchA <c g>1\!:32
    								  			   ^\markup \italic "molto sul pont." #}
    								   (if (null? (cdr ls)) #{#} 
    								  	  (changeDur (cadr ls) #{ r1 #})))))		  	  	
		        }		        
			#})
		#(if (memq 'va instruments) 
    		#{		        
		        \context Staff = "va" {
    				\shiftDurations #1 #0 \giveDur $noteA r1
    				#(let ((ls (mome3dur (ly:music-length #{ $noteB 
    														 \shiftDurations #1 #0 $noteA #}))))
    						(make-sequential-music 
    							(list #{ \changeDur #(car ls) 
    								  				\n-transpose c, $pitchB <c g>1\!:32
    								  			   ^\markup \italic "molto sul pont." #}
    								   (if (null? (cdr ls)) #{#} 
    								  	  (changeDur (cadr ls) #{ r1 #})))))
		        }
			#})
		#(if (memq 'vc instruments) 
    		#{		        
		        \context Staff = "vc" {
		        	\clef "tenor"
    				#(let ((ls (mome3dur (ly:music-length #{ $noteB 
    														 \shiftDurations #1 #0 $noteA #}))))
    						(make-sequential-music 
    							(list (if (null? (cdr ls)) #{#} 
    								  	  (changeDur (cadr ls) #{ r1 #}))
    								  #{ \changeDur #(car ls) 
    								  			<<	\n-transpose c, $pitchA <c gih>1:32
    								  			   		^\markup \italic "molto sul pont."
    								  			   {s2\< s2\>} >> #})))
		        	\shiftDurations #1 #0 \giveDur $noteA r1\!
		        }
			#})
		#(if (memq 'db instruments) 
    		#{		        
		        \context Staff = "db" {
    				#(let ((ls (mome3dur (ly:music-length #{ $noteA 
    														 \shiftDurations #1 #0 $noteB #}))))
    						(make-sequential-music 
    							(list (if (null? (cdr ls)) #{#} 
    								  	  (changeDur (cadr ls) #{ r1 #})) 
    								  #{ \changeDur #(car ls) 
    								  			<< \n-transpose c' $pitchB <c f>1:32
    								  			   		^\markup \italic "molto sul pont." 
    								  			   {s2\< s2\>} >>#}
    								   )))
		        	\shiftDurations #1 #0 \giveDur $noteB r1\!
		        }
		    #})
    >>
    #})

howl = 
#(define-music-function
    (instruments noteA noteB)
    ((list? tutti) (ly:music?) ly:music?)
   #{
    <<
    	#(if (memq 'fl instruments) 
    		#{
    			\context Staff = "fl" {
		        }
    		#})
		#(if (memq 'cl instruments) 
    		#{
    			\context Staff = "cl" {
		        }
		    #})
		#(if (memq 'bn instruments) 
    		#{
    			\context Staff = "bn" {
		        }
			#})
		#(if (memq 'tbn instruments) 
    		#{
    			\context Staff = "tbn" {
		        }
			#})
		#(if (memq 'up instruments) 
    		#{
    			\context Staff = "up" {
		        }		        
			#})
		#(if (memq 'down instruments) 
    		#{
    			\context Staff = "down" {
		        }		        
			#})
		#(if (memq 'vn instruments) 
    		#{
    			\context Staff = "vn" {
		        }		        
			#})
		#(if (memq 'va instruments) 
    		#{		        
		        \context Staff = "va" {
		        }
			#})
		#(if (memq 'vc instruments) 
    		#{		        
		        \context Staff = "vc" {
		        }
			#})
		#(if (memq 'db instruments) 
    		#{		        
		        \context Staff = "db" {
		        }
		    #})
    >>
    #})

hum = 
#(define-music-function
    (instruments noteA noteB)
    ((list? tutti) (ly:music?) ly:music?)
   #{
    <<
    	#(if (memq 'fl instruments) 
    		#{
    			\context Staff = "fl" {
		        }
    		#})
		#(if (memq 'cl instruments) 
    		#{
    			\context Staff = "cl" {
		        }
		    #})
		#(if (memq 'bn instruments) 
    		#{
    			\context Staff = "bn" {
		        }
			#})
		#(if (memq 'tbn instruments) 
    		#{
    			\context Staff = "tbn" {
		        }
			#})
		#(if (memq 'up instruments) 
    		#{
    			\context Staff = "up" {
		        }		        
			#})
		#(if (memq 'down instruments) 
    		#{
    			\context Staff = "down" {
		        }		        
			#})
		#(if (memq 'vn instruments) 
    		#{
    			\context Staff = "vn" {
		        }		        
			#})
		#(if (memq 'va instruments) 
    		#{		        
		        \context Staff = "va" {
		        }
			#})
		#(if (memq 'vc instruments) 
    		#{		        
		        \context Staff = "vc" {
		        }
			#})
		#(if (memq 'db instruments) 
    		#{		        
		        \context Staff = "db" {
		        }
		    #})
    >>
    #})

kick = 
#(define-music-function
    (instruments noteA noteB)
    ((list? tutti) (ly:music?) ly:music?)
   #{
    <<
    	#(if (memq 'fl instruments) 
    		#{
    			\context Staff = "fl" {
		        }
    		#})
		#(if (memq 'cl instruments) 
    		#{
    			\context Staff = "cl" {
		        }
		    #})
		#(if (memq 'bn instruments) 
    		#{
    			\context Staff = "bn" {
		        }
			#})
		#(if (memq 'tbn instruments) 
    		#{
    			\context Staff = "tbn" {
		        }
			#})
		#(if (memq 'up instruments) 
    		#{
    			\context Staff = "up" {
		        }		        
			#})
		#(if (memq 'down instruments) 
    		#{
    			\context Staff = "down" {
		        }		        
			#})
		#(if (memq 'vn instruments) 
    		#{
    			\context Staff = "vn" {
		        }		        
			#})
		#(if (memq 'va instruments) 
    		#{		        
		        \context Staff = "va" {
		        }
			#})
		#(if (memq 'vc instruments) 
    		#{		        
		        \context Staff = "vc" {
		        }
			#})
		#(if (memq 'db instruments) 
    		#{		        
		        \context Staff = "db" {
		        }
		    #})
    >>
    #})

pluck = 
#(define-music-function
    (instruments noteA noteB)
    ((list? tutti) (ly:music?) ly:music?)
   #{
    <<
    	#(if (memq 'fl instruments) 
    		#{
    			\context Staff = "fl" {
		        }
    		#})
		#(if (memq 'cl instruments) 
    		#{
    			\context Staff = "cl" {
		        }
		    #})
		#(if (memq 'bn instruments) 
    		#{
    			\context Staff = "bn" {
		        }
			#})
		#(if (memq 'tbn instruments) 
    		#{
    			\context Staff = "tbn" {
		        }
			#})
		#(if (memq 'up instruments) 
    		#{
    			\context Staff = "up" {
		        }		        
			#})
		#(if (memq 'down instruments) 
    		#{
    			\context Staff = "down" {
		        }		        
			#})
		#(if (memq 'vn instruments) 
    		#{
    			\context Staff = "vn" {
		        }		        
			#})
		#(if (memq 'va instruments) 
    		#{		        
		        \context Staff = "va" {
		        }
			#})
		#(if (memq 'vc instruments) 
    		#{		        
		        \context Staff = "vc" {
		        }
			#})
		#(if (memq 'db instruments) 
    		#{		        
		        \context Staff = "db" {
		        }
		    #})
    >>
    #})

rests = 
#(define-music-function
    (instruments rest)
    ((list? tutti) ly:music?)
   #{
    <<
    	#(if (memq 'fl instruments) 
    		#{
    			\context Staff = "fl" {
    				$rest
		        }
    		#})
		#(if (memq 'cl instruments) 
    		#{
    			\context Staff = "cl" {
    				$rest
		        }
		    #})
		#(if (memq 'bn instruments) 
    		#{
    			\context Staff = "bn" {
    				$rest
		        }
			#})
		#(if (memq 'tbn instruments) 
    		#{
    			\context Staff = "tbn" {
    				$rest
		        }
			#})
		#(if (memq 'up instruments) 
    		#{
    			\context Staff = "up" {
    				$rest
		        }		        
			#})
		#(if (memq 'down instruments) 
    		#{
    			\context Staff = "down" {
    				$rest
		        }		        
			#})
		#(if (memq 'vn instruments) 
    		#{
    			\context Staff = "vn" {
    				$rest
		        }		        
			#})
		#(if (memq 'va instruments) 
    		#{		        
		        \context Staff = "va" {
    				$rest
		        }
			#})
		#(if (memq 'vc instruments) 
    		#{		        
		        \context Staff = "vc" {
    				$rest
		        }
			#})
		#(if (memq 'db instruments) 
    		#{		        
		        \context Staff = "db" {
    				$rest
		        }
		    #})
    >>
    #})

rev = 
#(define-music-function
    (instruments noteA noteB)
    ((list? tutti) (ly:music?) ly:music?)
   #{
    <<
    	#(if (memq 'fl instruments) 
    		#{
    			\context Staff = "fl" {
		        }
    		#})
		#(if (memq 'cl instruments) 
    		#{
    			\context Staff = "cl" {
		        }
		    #})
		#(if (memq 'bn instruments) 
    		#{
    			\context Staff = "bn" {
		        }
			#})
		#(if (memq 'tbn instruments) 
    		#{
    			\context Staff = "tbn" {
		        }
			#})
		#(if (memq 'up instruments) 
    		#{
    			\context Staff = "up" {
		        }		        
			#})
		#(if (memq 'down instruments) 
    		#{
    			\context Staff = "down" {
		        }		        
			#})
		#(if (memq 'vn instruments) 
    		#{
    			\context Staff = "vn" {
		        }		        
			#})
		#(if (memq 'va instruments) 
    		#{		        
		        \context Staff = "va" {
		        }
			#})
		#(if (memq 'vc instruments) 
    		#{		        
		        \context Staff = "vc" {
		        }
			#})
		#(if (memq 'db instruments) 
    		#{		        
		        \context Staff = "db" {
		        }
		    #})
    >>
    #})

ring = 
#(define-music-function
    (instruments noteA noteB)
    ((list? tutti) (ly:music?) ly:music?)
   #{
    <<
    	#(if (memq 'fl instruments) 
    		#{
    			\context Staff = "fl" {
		        }
    		#})
		#(if (memq 'cl instruments) 
    		#{
    			\context Staff = "cl" {
		        }
		    #})
		#(if (memq 'bn instruments) 
    		#{
    			\context Staff = "bn" {
		        }
			#})
		#(if (memq 'tbn instruments) 
    		#{
    			\context Staff = "tbn" {
		        }
			#})
		#(if (memq 'up instruments) 
    		#{
    			\context Staff = "up" {
		        }		        
			#})
		#(if (memq 'down instruments) 
    		#{
    			\context Staff = "down" {
		        }		        
			#})
		#(if (memq 'vn instruments) 
    		#{
    			\context Staff = "vn" {
		        }		        
			#})
		#(if (memq 'va instruments) 
    		#{		        
		        \context Staff = "va" {
		        }
			#})
		#(if (memq 'vc instruments) 
    		#{		        
		        \context Staff = "vc" {
		        }
			#})
		#(if (memq 'db instruments) 
    		#{		        
		        \context Staff = "db" {
		        }
		    #})
    >>
    #})

rumble = 
#(define-music-function
    (instruments noteA noteB)
    ((list? tutti) (ly:music?) ly:music?)
   #{
    <<
    	#(if (memq 'fl instruments) 
    		#{
    			\context Staff = "fl" {
		        }
    		#})
		#(if (memq 'cl instruments) 
    		#{
    			\context Staff = "cl" {
		        }
		    #})
		#(if (memq 'bn instruments) 
    		#{
    			\context Staff = "bn" {
		        }
			#})
		#(if (memq 'tbn instruments) 
    		#{
    			\context Staff = "tbn" {
		        }
			#})
		#(if (memq 'up instruments) 
    		#{
    			\context Staff = "up" {
		        }		        
			#})
		#(if (memq 'down instruments) 
    		#{
    			\context Staff = "down" {
		        }		        
			#})
		#(if (memq 'vn instruments) 
    		#{
    			\context Staff = "vn" {
		        }		        
			#})
		#(if (memq 'va instruments) 
    		#{		        
		        \context Staff = "va" {
		        }
			#})
		#(if (memq 'vc instruments) 
    		#{		        
		        \context Staff = "vc" {
		        }
			#})
		#(if (memq 'db instruments) 
    		#{		        
		        \context Staff = "db" {
		        }
		    #})
    >>
    #})

snap = 
#(define-music-function
    (instruments noteA noteB)
    ((list? tutti) (ly:music?) ly:music?)
   #{
    <<
    	#(if (memq 'fl instruments) 
    		#{
    			\context Staff = "fl" {
		        }
    		#})
		#(if (memq 'cl instruments) 
    		#{
    			\context Staff = "cl" {
		        }
		    #})
		#(if (memq 'bn instruments) 
    		#{
    			\context Staff = "bn" {
		        }
			#})
		#(if (memq 'tbn instruments) 
    		#{
    			\context Staff = "tbn" {
		        }
			#})
		#(if (memq 'up instruments) 
    		#{
    			\context Staff = "up" {
		        }		        
			#})
		#(if (memq 'down instruments) 
    		#{
    			\context Staff = "down" {
		        }		        
			#})
		#(if (memq 'vn instruments) 
    		#{
    			\context Staff = "vn" {
		        }		        
			#})
		#(if (memq 'va instruments) 
    		#{		        
		        \context Staff = "va" {
		        }
			#})
		#(if (memq 'vc instruments) 
    		#{		        
		        \context Staff = "vc" {
		        }
			#})
		#(if (memq 'db instruments) 
    		#{		        
		        \context Staff = "db" {
		        }
		    #})
    >>
    #})

strum = 
#(define-music-function
    (instruments noteA noteB)
    ((list? tutti) (ly:music?) ly:music?)
   #{
    <<
    	#(if (memq 'fl instruments) 
    		#{
    			\context Staff = "fl" {
		        }
    		#})
		#(if (memq 'cl instruments) 
    		#{
    			\context Staff = "cl" {
		        }
		    #})
		#(if (memq 'bn instruments) 
    		#{
    			\context Staff = "bn" {
		        }
			#})
		#(if (memq 'tbn instruments) 
    		#{
    			\context Staff = "tbn" {
		        }
			#})
		#(if (memq 'up instruments) 
    		#{
    			\context Staff = "up" {
		        }		        
			#})
		#(if (memq 'down instruments) 
    		#{
    			\context Staff = "down" {
		        }		        
			#})
		#(if (memq 'vn instruments) 
    		#{
    			\context Staff = "vn" {
		        }		        
			#})
		#(if (memq 'va instruments) 
    		#{		        
		        \context Staff = "va" {
		        }
			#})
		#(if (memq 'vc instruments) 
    		#{		        
		        \context Staff = "vc" {
		        }
			#})
		#(if (memq 'db instruments) 
    		#{		        
		        \context Staff = "db" {
		        }
		    #})
    >>
    #})

whine = 
#(define-music-function
    (instruments noteA noteB)
    ((list? tutti) (ly:music?) ly:music?)
   #{
    <<
    	#(if (memq 'fl instruments) 
    		#{
    			\context Staff = "fl" {
		        }
    		#})
		#(if (memq 'cl instruments) 
    		#{
    			\context Staff = "cl" {
		        }
		    #})
		#(if (memq 'bn instruments) 
    		#{
    			\context Staff = "bn" {
		        }
			#})
		#(if (memq 'tbn instruments) 
    		#{
    			\context Staff = "tbn" {
		        }
			#})
		#(if (memq 'up instruments) 
    		#{
    			\context Staff = "up" {
		        }		        
			#})
		#(if (memq 'down instruments) 
    		#{
    			\context Staff = "down" {
		        }		        
			#})
		#(if (memq 'vn instruments) 
    		#{
    			\context Staff = "vn" {
		        }		        
			#})
		#(if (memq 'va instruments) 
    		#{		        
		        \context Staff = "va" {
		        }
			#})
		#(if (memq 'vc instruments) 
    		#{		        
		        \context Staff = "vc" {
		        }
			#})
		#(if (memq 'db instruments) 
    		#{		        
		        \context Staff = "db" {
		        }
		    #})
    >>
    #})

whistle = 
#(define-music-function
    (instruments noteA noteB)
    ((list? tutti) (ly:music?) ly:music?)
   #{
    <<
    	#(if (memq 'fl instruments) 
    		#{
    			\context Staff = "fl" {
		        }
    		#})
		#(if (memq 'cl instruments) 
    		#{
    			\context Staff = "cl" {
		        }
		    #})
		#(if (memq 'bn instruments) 
    		#{
    			\context Staff = "bn" {
		        }
			#})
		#(if (memq 'tbn instruments) 
    		#{
    			\context Staff = "tbn" {
		        }
			#})
		#(if (memq 'up instruments) 
    		#{
    			\context Staff = "up" {
		        }		        
			#})
		#(if (memq 'down instruments) 
    		#{
    			\context Staff = "down" {
		        }		        
			#})
		#(if (memq 'vn instruments) 
    		#{
    			\context Staff = "vn" {
		        }		        
			#})
		#(if (memq 'va instruments) 
    		#{		        
		        \context Staff = "va" {
		        }
			#})
		#(if (memq 'vc instruments) 
    		#{		        
		        \context Staff = "vc" {
		        }
			#})
		#(if (memq 'db instruments) 
    		#{		        
		        \context Staff = "db" {
		        }
		    #})
    >>
    #})
