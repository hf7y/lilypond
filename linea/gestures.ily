\version "2.20.0"

#(ly:set-option 'relative-includes #t)
\include "./math.ly"

\include "./gestures/clap.ly"
\include "./gestures/buzz.ly"
\include "./gestures/crackle.ly"
\include "./multiphonics.ily"

\include "/home/zach/lilypond/z/timesignature.ily"
\include "/home/zach/lilypond/z/triangle-heads.ly"
\include "/home/zach/lilypond/z/note.ily"
\include "/home/zach/lilypond/z/natural-transpose.ily"
\include "/home/zach/lilypond/z/square.ily"
\include "/home/zach/lilypond/z/staff.ily"


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

pizz = ^\markup \italic "pizz."
ord = ^\markup \italic "ord."
arco = ^\markup \italic "arco"

% techniques = #(list (cons "fl" "ord.") (cons "cl" "ord.")
% 					(cons "bn" "ord.") (cons "tbn" "ord.")
% 					(cons "up" "ord.") (cons "down" "ord.")
% 					(cons "vn" "arco") (cons "va" "arco")
% 					(cons "vc" "arco") (cons "db" "arco"))


#(define-public autoSig #f)
autoTimeSig = #(define-music-function
	(music)
	(ly:music?)
	(if (not autoSig) #{#} 
		#{ \context Score { \time #(let* ((moment (ly:music-length music))
										 (nume (ly:moment-main-numerator moment))
										 (den  (ly:moment-main-denominator moment)))
										 (if (= 1 nume) (cons (* 2 nume) (* 2 den))
									         			(cons nume den))) } #} ))


hiss = #(define-music-function
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
    #})
% howl = #(define-music-function
%     (instruments noteA noteB)
%     ((list? tutti) (ly:music?) ly:music?)
%    #{
%     <<
%     	#(if (memq 'fl instruments) 
%     		#{
%     			\context Staff = "fl" {
% 		        }
%     		#})
% 		#(if (memq 'cl instruments) 
%     		#{
%     			\context Staff = "cl" {
% 		        }
% 		    #})
% 		#(if (memq 'bn instruments) 
%     		#{
%     			\context Staff = "bn" {
% 		        }
% 			#})
% 		#(if (memq 'tbn instruments) 
%     		#{
%     			\context Staff = "tbn" {
% 		        }
% 			#})
% 		#(if (memq 'up instruments) 
%     		#{
%     			\context Staff = "up" {
% 		        }		        
% 			#})
% 		#(if (memq 'down instruments) 
%     		#{
%     			\context Staff = "down" {
% 		        }		        
% 			#})
% 		#(if (memq 'vn instruments) 
%     		#{
%     			\context Staff = "vn" {
% 		        }		        
% 			#})
% 		#(if (memq 'va instruments) 
%     		#{		        
% 		        \context Staff = "va" {
% 		        }
% 			#})
% 		#(if (memq 'vc instruments) 
%     		#{		        
% 		        \context Staff = "vc" {
% 		        }
% 			#})
% 		#(if (memq 'db instruments) 
%     		#{		        
% 		        \context Staff = "db" {
% 		        }
% 		    #})
%     >>
%     #})
% hum = #(define-music-function
%     (instruments noteA noteB)
%     ((list? tutti) (ly:music?) ly:music?)
%    #{
%     <<
%     	#(if (memq 'fl instruments) 
%     		#{
%     			\context Staff = "fl" {
% 		        }
%     		#})
% 		#(if (memq 'cl instruments) 
%     		#{
%     			\context Staff = "cl" {
% 		        }
% 		    #})
% 		#(if (memq 'bn instruments) 
%     		#{
%     			\context Staff = "bn" {
% 		        }
% 			#})
% 		#(if (memq 'tbn instruments) 
%     		#{
%     			\context Staff = "tbn" {
% 		        }
% 			#})
% 		#(if (memq 'up instruments) 
%     		#{
%     			\context Staff = "up" {
% 		        }		        
% 			#})
% 		#(if (memq 'down instruments) 
%     		#{
%     			\context Staff = "down" {
% 		        }		        
% 			#})
% 		#(if (memq 'vn instruments) 
%     		#{
%     			\context Staff = "vn" {
% 		        }		        
% 			#})
% 		#(if (memq 'va instruments) 
%     		#{		        
% 		        \context Staff = "va" {
% 		        }
% 			#})
% 		#(if (memq 'vc instruments) 
%     		#{		        
% 		        \context Staff = "vc" {
% 		        }
% 			#})
% 		#(if (memq 'db instruments) 
%     		#{		        
% 		        \context Staff = "db" {
% 		        }
% 		    #})
%     >>
%     #})
% kick = #(define-music-function
%     (instruments noteA noteB)
%     ((list? tutti) (ly:music?) ly:music?)
%    #{
%     <<
%     	#(if (memq 'fl instruments) 
%     		#{
%     			\context Staff = "fl" {
% 		        }
%     		#})
% 		#(if (memq 'cl instruments) 
%     		#{
%     			\context Staff = "cl" {
% 		        }
% 		    #})
% 		#(if (memq 'bn instruments) 
%     		#{
%     			\context Staff = "bn" {
% 		        }
% 			#})
% 		#(if (memq 'tbn instruments) 
%     		#{
%     			\context Staff = "tbn" {
% 		        }
% 			#})
% 		#(if (memq 'up instruments) 
%     		#{
%     			\context Staff = "up" {
% 		        }		        
% 			#})
% 		#(if (memq 'down instruments) 
%     		#{
%     			\context Staff = "down" {
% 		        }		        
% 			#})
% 		#(if (memq 'vn instruments) 
%     		#{
%     			\context Staff = "vn" {
% 		        }		        
% 			#})
% 		#(if (memq 'va instruments) 
%     		#{		        
% 		        \context Staff = "va" {
% 		        }
% 			#})
% 		#(if (memq 'vc instruments) 
%     		#{		        
% 		        \context Staff = "vc" {
% 		        }
% 			#})
% 		#(if (memq 'db instruments) 
%     		#{		        
% 		        \context Staff = "db" {
% 		        }
% 		    #})
%     >>
%     #})
% pluck = #(define-music-function
%     (instruments noteA noteB)
%     ((list? tutti) (ly:music?) ly:music?)
%    #{
%     <<
%     	#(if (memq 'fl instruments) 
%     		#{
%     			\context Staff = "fl" {
% 		        }
%     		#})
% 		#(if (memq 'cl instruments) 
%     		#{
%     			\context Staff = "cl" {
% 		        }
% 		    #})
% 		#(if (memq 'bn instruments) 
%     		#{
%     			\context Staff = "bn" {
% 		        }
% 			#})
% 		#(if (memq 'tbn instruments) 
%     		#{
%     			\context Staff = "tbn" {
% 		        }
% 			#})
% 		#(if (memq 'up instruments) 
%     		#{
%     			\context Staff = "up" {
% 		        }		        
% 			#})
% 		#(if (memq 'down instruments) 
%     		#{
%     			\context Staff = "down" {
% 		        }		        
% 			#})
% 		#(if (memq 'vn instruments) 
%     		#{
%     			\context Staff = "vn" {
% 		        }		        
% 			#})
% 		#(if (memq 'va instruments) 
%     		#{		        
% 		        \context Staff = "va" {
% 		        }
% 			#})
% 		#(if (memq 'vc instruments) 
%     		#{		        
% 		        \context Staff = "vc" {
% 		        }
% 			#})
% 		#(if (memq 'db instruments) 
%     		#{		        
% 		        \context Staff = "db" {
% 		        }
% 		    #})
%     >>
%     #})
rests = #(define-music-function
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
% rev = #(define-music-function
%     (instruments noteA noteB)
%     ((list? tutti) (ly:music?) ly:music?)
%    #{
%     <<
%     	#(if (memq 'fl instruments) 
%     		#{
%     			\context Staff = "fl" {
% 		        }
%     		#})
% 		#(if (memq 'cl instruments) 
%     		#{
%     			\context Staff = "cl" {
% 		        }
% 		    #})
% 		#(if (memq 'bn instruments) 
%     		#{
%     			\context Staff = "bn" {
% 		        }
% 			#})
% 		#(if (memq 'tbn instruments) 
%     		#{
%     			\context Staff = "tbn" {
% 		        }
% 			#})
% 		#(if (memq 'up instruments) 
%     		#{
%     			\context Staff = "up" {
% 		        }		        
% 			#})
% 		#(if (memq 'down instruments) 
%     		#{
%     			\context Staff = "down" {
% 		        }		        
% 			#})
% 		#(if (memq 'vn instruments) 
%     		#{
%     			\context Staff = "vn" {
% 		        }		        
% 			#})
% 		#(if (memq 'va instruments) 
%     		#{		        
% 		        \context Staff = "va" {
% 		        }
% 			#})
% 		#(if (memq 'vc instruments) 
%     		#{		        
% 		        \context Staff = "vc" {
% 		        }
% 			#})
% 		#(if (memq 'db instruments) 
%     		#{		        
% 		        \context Staff = "db" {
% 		        }
% 		    #})
%     >>
%     #})
% ring = #(define-music-function
%     (instruments noteA noteB)
%     ((list? tutti) (ly:music?) ly:music?)
%    #{
%     <<
%     	#(if (memq 'fl instruments) 
%     		#{
%     			\context Staff = "fl" {
% 		        }
%     		#})
% 		#(if (memq 'cl instruments) 
%     		#{
%     			\context Staff = "cl" {
% 		        }
% 		    #})
% 		#(if (memq 'bn instruments) 
%     		#{
%     			\context Staff = "bn" {
% 		        }
% 			#})
% 		#(if (memq 'tbn instruments) 
%     		#{
%     			\context Staff = "tbn" {
% 		        }
% 			#})
% 		#(if (memq 'up instruments) 
%     		#{
%     			\context Staff = "up" {
% 		        }		        
% 			#})
% 		#(if (memq 'down instruments) 
%     		#{
%     			\context Staff = "down" {
% 		        }		        
% 			#})
% 		#(if (memq 'vn instruments) 
%     		#{
%     			\context Staff = "vn" {
% 		        }		        
% 			#})
% 		#(if (memq 'va instruments) 
%     		#{		        
% 		        \context Staff = "va" {
% 		        }
% 			#})
% 		#(if (memq 'vc instruments) 
%     		#{		        
% 		        \context Staff = "vc" {
% 		        }
% 			#})
% 		#(if (memq 'db instruments) 
%     		#{		        
% 		        \context Staff = "db" {
% 		        }
% 		    #})
%     >>
%     #})
% rumble = #(define-music-function
%     (instruments noteA noteB)
%     ((list? tutti) (ly:music?) ly:music?)
%    #{
%     <<
%     	#(if (memq 'fl instruments) 
%     		#{
%     			\context Staff = "fl" {
% 		        }
%     		#})
% 		#(if (memq 'cl instruments) 
%     		#{
%     			\context Staff = "cl" {
% 		        }
% 		    #})
% 		#(if (memq 'bn instruments) 
%     		#{
%     			\context Staff = "bn" {
% 		        }
% 			#})
% 		#(if (memq 'tbn instruments) 
%     		#{
%     			\context Staff = "tbn" {
% 		        }
% 			#})
% 		#(if (memq 'up instruments) 
%     		#{
%     			\context Staff = "up" {
% 		        }		        
% 			#})
% 		#(if (memq 'down instruments) 
%     		#{
%     			\context Staff = "down" {
% 		        }		        
% 			#})
% 		#(if (memq 'vn instruments) 
%     		#{
%     			\context Staff = "vn" {
% 		        }		        
% 			#})
% 		#(if (memq 'va instruments) 
%     		#{		        
% 		        \context Staff = "va" {
% 		        }
% 			#})
% 		#(if (memq 'vc instruments) 
%     		#{		        
% 		        \context Staff = "vc" {
% 		        }
% 			#})
% 		#(if (memq 'db instruments) 
%     		#{		        
% 		        \context Staff = "db" {
% 		        }
% 		    #})
%     >>
%     #})
% snap = #(define-music-function
%     (instruments noteA noteB)
%     ((list? tutti) (ly:music?) ly:music?)
%    #{
%     <<
%     	#(if (memq 'fl instruments) 
%     		#{
%     			\context Staff = "fl" {
% 		        }
%     		#})
% 		#(if (memq 'cl instruments) 
%     		#{
%     			\context Staff = "cl" {
% 		        }
% 		    #})
% 		#(if (memq 'bn instruments) 
%     		#{
%     			\context Staff = "bn" {
% 		        }
% 			#})
% 		#(if (memq 'tbn instruments) 
%     		#{
%     			\context Staff = "tbn" {
% 		        }
% 			#})
% 		#(if (memq 'up instruments) 
%     		#{
%     			\context Staff = "up" {
% 		        }		        
% 			#})
% 		#(if (memq 'down instruments) 
%     		#{
%     			\context Staff = "down" {
% 		        }		        
% 			#})
% 		#(if (memq 'vn instruments) 
%     		#{
%     			\context Staff = "vn" {
% 		        }		        
% 			#})
% 		#(if (memq 'va instruments) 
%     		#{		        
% 		        \context Staff = "va" {
% 		        }
% 			#})
% 		#(if (memq 'vc instruments) 
%     		#{		        
% 		        \context Staff = "vc" {
% 		        }
% 			#})
% 		#(if (memq 'db instruments) 
%     		#{		        
% 		        \context Staff = "db" {
% 		        }
% 		    #})
%     >>
%     #})
% strum = #(define-music-function
%     (instruments noteA noteB)
%     ((list? tutti) (ly:music?) ly:music?)
%    #{
%     <<
%     	#(if (memq 'fl instruments) 
%     		#{
%     			\context Staff = "fl" {
% 		        }
%     		#})
% 		#(if (memq 'cl instruments) 
%     		#{
%     			\context Staff = "cl" {
% 		        }
% 		    #})
% 		#(if (memq 'bn instruments) 
%     		#{
%     			\context Staff = "bn" {
% 		        }
% 			#})
% 		#(if (memq 'tbn instruments) 
%     		#{
%     			\context Staff = "tbn" {
% 		        }
% 			#})
% 		#(if (memq 'up instruments) 
%     		#{
%     			\context Staff = "up" {
% 		        }		        
% 			#})
% 		#(if (memq 'down instruments) 
%     		#{
%     			\context Staff = "down" {
% 		        }		        
% 			#})
% 		#(if (memq 'vn instruments) 
%     		#{
%     			\context Staff = "vn" {
% 		        }		        
% 			#})
% 		#(if (memq 'va instruments) 
%     		#{		        
% 		        \context Staff = "va" {
% 		        }
% 			#})
% 		#(if (memq 'vc instruments) 
%     		#{		        
% 		        \context Staff = "vc" {
% 		        }
% 			#})
% 		#(if (memq 'db instruments) 
%     		#{		        
% 		        \context Staff = "db" {
% 		        }
% 		    #})
%     >>
%     #})
% whine = #(define-music-function
  %   (instruments noteA noteB)
  %   ((list? tutti) (ly:music?) ly:music?)
  %  #{
  %   <<
  %   	#(if (memq 'fl instruments) 
  %   		#{
  %   			\context Staff = "fl" {
		%         }
  %   		#})
		% #(if (memq 'cl instruments) 
  %   		#{
  %   			\context Staff = "cl" {
		%         }
		%     #})
		% #(if (memq 'bn instruments) 
  %   		#{
  %   			\context Staff = "bn" {
		%         }
		% 	#})
		% #(if (memq 'tbn instruments) 
  %   		#{
  %   			\context Staff = "tbn" {
		%         }
		% 	#})
		% #(if (memq 'up instruments) 
  %   		#{
  %   			\context Staff = "up" {
		%         }		        
		% 	#})
		% #(if (memq 'down instruments) 
  %   		#{
  %   			\context Staff = "down" {
		%         }		        
		% 	#})
		% #(if (memq 'vn instruments) 
  %   		#{
  %   			\context Staff = "vn" {
		%         }		        
		% 	#})
		% #(if (memq 'va instruments) 
  %   		#{		        
		%         \context Staff = "va" {
		%         }
		% 	#})
		% #(if (memq 'vc instruments) 
  %   		#{		        
		%         \context Staff = "vc" {
		%         }
		% 	#})
		% #(if (memq 'db instruments) 
  %   		#{		        
		%         \context Staff = "db" {
		%         }
		%     #})
  %   >>
  %   #})
% whistle = #(define-music-function
  %   (instruments noteA noteB)
  %   ((list? tutti) (ly:music?) ly:music?)
  %  #{
  %   <<
  %   	#(if (memq 'fl instruments) 
  %   		#{
  %   			\context Staff = "fl" {
		%         }
  %   		#})
		% #(if (memq 'cl instruments) 
  %   		#{
  %   			\context Staff = "cl" {
		%         }
		%     #})
		% #(if (memq 'bn instruments) 
  %   		#{
  %   			\context Staff = "bn" {
		%         }
		% 	#})
		% #(if (memq 'tbn instruments) 
  %   		#{
  %   			\context Staff = "tbn" {
		%         }
		% 	#})
		% #(if (memq 'up instruments) 
  %   		#{
  %   			\context Staff = "up" {
		%         }		        
		% 	#})
		% #(if (memq 'down instruments) 
  %   		#{
  %   			\context Staff = "down" {
		%         }		        
		% 	#})
		% #(if (memq 'vn instruments) 
  %   		#{
  %   			\context Staff = "vn" {
		%         }		        
		% 	#})
		% #(if (memq 'va instruments) 
  %   		#{		        
		%         \context Staff = "va" {
		%         }
		% 	#})
		% #(if (memq 'vc instruments) 
  %   		#{		        
		%         \context Staff = "vc" {
		%         }
		% 	#})
		% #(if (memq 'db instruments) 
  %   		#{		        
		%         \context Staff = "db" {
		%         }
		%     #})
  %   >>
  %   #})

\include "./gestures/clap.ly"