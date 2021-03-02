\version "2.20.0"

hiss = #(define-music-function
    (instruments noteA noteB)
    ((list? tutti) ly:music? ly:music?)
    (letrec ((pitchA (ly:music-property noteA 'pitch))
             (durA (ly:music-property noteA 'duration))
             (pitchB (ly:music-property noteB 'pitch))
             (durB (ly:music-property noteB 'duration))
             (randA (random 2))
             (randB (random 2))
             (function 
                (lambda* (inst music #:optional (before #{#}) (lyrics #{#}))
                    (if (memq inst instruments)
                      #{ \context Staff = #(symbol->string inst) << 
                            \context Voice = #(symbol->string inst) {
                                $before $music }
                            \context Lyrics = #(symbol->string inst) 
                                \lyricsto #(symbol->string inst) { $lyrics } >> #}))))
   #{
    <<
    	#(function 'fl #{ \fixed c' { \trimDot $noteA \> \giveDot $noteA r\! } #} #{#} #{ s #} )
		#(if (memq 'cl instruments) 
    		#{
    			\context Staff = "cl" {
    				#(let ((ls (mome3dur (ly:moment-add (ly:duration-length durA)
    							 						(ly:duration-length durB)))))
    						(make-sequential-music 
    							(list (changeDur (car ls) clA)
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
    #}))