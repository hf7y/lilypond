\version "2.20.0"

#(ly:set-option 'relative-includes #t)
\include "../math.ly"

$(define-public tutti
	(list 'fl 'cl 'bn 'tbn
		'up 'down
		'vn 'va 'vc 'db))

clap = #(define-music-function
    (instruments note)
    ((list? tutti) ly:music?)
    (let* ((pitch (ly:music-property note 'pitch))
    	   (dur (ly:music-property note 'duration))
   		   (tactus (getTactus 4 note))
		   (randA (random 2))
		   (randB (random 2)))
    	(letrec ((function 
    				(lambda* (inst music #:optional (before #{#}))
    					(if (memq inst instruments)
    						(let* ((length (ly:moment-main-numerator (ly:music-length music)))
    							   (rand (random (+ 1 (- (cdr tactus) length)))))
	    		 				  #{ \context Staff = #(symbol->string inst) << 
	    		 				  		\context Voice = #(symbol->string inst) {
	    		 				  			$before
	    		 				  			$(make-music 'SequentialMusic 'elements 
	    		 				  				(map (lambda (x) (make-music 'RestEvent 'duration x)) 
	    		 				  					 (mome4dur (ly:moment-mul 
	    		 				  						(ly:duration-length (car tactus))
	    		 				  			 			(ly:make-moment rand)))))
	    		 				  			\shiftDurations #(ly:duration-log (car tactus))
		    		 				  						#(ly:duration-dot-count (car tactus)) {
		    		 				  			$music }

		    		 				  		$(make-music 'SequentialMusic 'elements 
	    		 				  				(map (lambda (x) (make-music 'RestEvent 'duration x)) 
	    		 				  					 (reverse (mome4dur (ly:moment-mul 
	    		 				  						(ly:duration-length (car tactus))
	    		 				  			 			(ly:make-moment (- (- (cdr tactus) length) rand)))))))
	    		 				  		}
	    		 				  		\context Lyrics = #(symbol->string inst) \lyricsto #(symbol->string inst) {} >> #})
    						))))
   #{
    \autoTimeSig
    <<
    	#(function 'fl   #{ \n-transpose c,, $pitch c1 #} #{\clef "treble"#})
    	#(function 'cl   #{ \n-transpose c,, $pitch c1 #} #{\clef "treble"#})
    	#(function 'bn   #{ \n-transpose c,  $pitch c1 #} #{\clef "tenor"#})
    	#(function 'tbn  #{ \n-transpose c   $pitch c1 #} #{\clef "bass"#})
    	#(function 'down #{ \n-transpose c   $pitch { 
    		f1 \change Staff = "up" c'' c'  \change Staff = "down" f, } #} #{\clef "bass"#})
    	#(if (= 0 (random 2)) 
            (function 'vn   #{ \n-transpose c $pitch <c' g' d'' a''>1\arpeggio\pizz #} #{\clef "treble"#})
            (function 'vn   #{ \n-transpose c $pitch c'1\pizz #} #{\clef "treble"#}))
    	#(if (= 0 (random 2)) 
            (function 'va   #{ \n-transpose c $pitch <c g d' a'>1\arpeggio\pizz #} #{\clef "alto"#})
            (function 'va   #{ \n-transpose c $pitch c'1\pizz #} #{\clef "alto"#}))
    	#(function 'vc   #{ c,1\snappizzicato( \n-transpose c #pitch f,) #} #{\clef "bass"#})
    	#(function 'db   #{ e,,1\snappizzicato( \n-transpose c' $pitch c) #} #{\clef "bass_8"#})
    >>
    #})))