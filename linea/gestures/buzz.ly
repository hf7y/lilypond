\version "2.20.0"

#(ly:set-option 'relative-includes #t)
\include "../math.ly"


flutterTongue = #(define-music-function
    (noteX noteY)
    (ly:music? ly:music?)
    (let* ((durs (mome3dur (ly:music-length #{ $noteX $noteY #})))
           (main (changeDur (car durs) noteX)))
         #{ <<  \oneVoice
                $main #(make-music 'TremoloEvent 'tremolo-type
                    (expt 2 (+ (+ 3 (ly:duration-log (car durs))) (max (- 2 (ly:duration-log (car durs))) 0)))) \\
                \stemless \shiftDurations #1 #0 {
                    \hideNotes $main \glissando \unHideNotes
                    \once \override Dots.stencil = ##f
                    \tiny \parenthesize
                    #(changeDur (car durs) noteY) }
            >> 
            #(make-music 'SequentialMusic 'elements
                (letrec ((fill-rests (lambda (ls)
                    (if (null? ls) '()
                        (cons (make-music 'RestEvent 'duration (car ls))
                              (fill-rests (cdr ls)))))))
                    (fill-rests (cdr durs))))
          #}))

stringTrem = #(define-music-function
    (note noteB)
    (ly:music? ly:music?)
    (let* ((durs (mome3dur (ly:music-length #{ $note $noteB #})))
           (main (changeDur (car durs) note)))
         #{ $main #(make-music 'TremoloEvent 'tremolo-type
                    (expt 2 (+ (+ 3 (ly:duration-log (car durs))) (max (- 2 (ly:duration-log (car durs))) 0))))
            #(letrec ((fill-rests (lambda (ls)
                (if (null? ls) #{#}
                    #{ \changeDur #(car ls) r1
                       #(fill-rests (cdr ls)) #}))))
                (fill-rests (cdr durs)))
            #}))

jette = #(define-music-function
    (min init final semis)
    ((number? 4) ly:music? ly:music? (number? 0))
    (letrec ((tactus (getTactus min #{ $init $final #}))
             (function (lambda (m s i f)
                (if (<= m 1) (list f)
                    (let ((transposition (round (/ s (- m 1)))))
                        (cons i (function (- m 1) (- s transposition)
                            #{\n-transpose c #(ly:make-pitch -1 0 (/ transposition 4)) $i #} f)))))))
            (let ((ls (function (cdr tactus) (* 2 semis) (changeDur (car tactus) init) 
                              (changeDur (car tactus) final))))
                (make-music
                    'SequentialMusic
                    'elements
                    (cons #{ #(car ls) ([ ^\markup \italic "jetté" #} (cdr ls))))))

buzz = #(define-music-function
    (instruments noteA noteB)
    ((list? tutti) ly:music? ly:music?)
    (letrec ((pitchA (ly:music-property noteA 'pitch))
             (durA (ly:music-property noteA 'duration))
             (pitchB (ly:music-property noteB 'pitch))
             (durB (ly:music-property noteB 'duration))
             (function 
                (lambda* (inst music #:optional (before #{#}))
                    (if (memq inst instruments)
                      #{ \context Staff = #(symbol->string inst) << 
                            \context Voice = #(symbol->string inst) {
                                $before $music }
                            \context Lyrics = #(symbol->string inst) 
                                \lyricsto #(symbol->string inst) {} >> #}))))
   #{
    <<
    	% \autoTimeSig { $noteA $noteB }
        #(function 'fl (flutterTongue #{ \transpose c c'' $noteA #} 
                                      #{ \transpose c c'' $noteB #} )
                            #{\clef "treble"#})
        #(function 'cl (flutterTongue #{ \transpose c c'' $noteB #} 
                                      #{ \transpose c c'' $noteA #} )
                            #{\clef "treble"#})
        #(function 'bn (flutterTongue #{ \transpose c c $noteB #} 
                                      #{ \inversion $pitchB $pitchB $noteA #} )
                            #{\clef "bass"#})
        #(function 'tbn (flutterTongue #{ \transpose c c $noteA #} 
                                       #{ \inversion $pitchA $pitchA $noteB #})
                        #{\clef "bass"#})
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
        #(function 'vn (jette 4 #{ \transpose c,, $pitchA \giveDur $noteA <c g> -. #} 
            #{ \transpose c,, $pitchB \giveDur $noteB <c g> -.)] #} 
            (- (ly:pitch-semitones pitchB) (ly:pitch-semitones pitchA)))
                     #{\clef "treble"#})
        #(function 'va (jette 3  #{ \transpose g,, $pitchB \giveDur $noteA <c g> -. #}
            #{ \transpose g,, $pitchA \giveDur $noteB <c g> -.)] #}
            (- (ly:pitch-semitones pitchA) (ly:pitch-semitones pitchB)))
                     #{\clef "treble"#})
		#(function 'vc (stringTrem #{ \transpose c $pitchA \giveDur $noteA <c f\harmonic> ^\markup \italic "sul pont."#} noteB )
                        #{\clef "bass"#})
        #(function 'db (stringTrem #{ \transpose c' $pitchB \giveDur $noteA <c f\harmonic> ^\markup \italic "sul pont."#} noteB )
                        #{\clef "bass_8"#})
    >>
    #}))