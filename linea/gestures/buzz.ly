\version "2.20.0"

#(ly:set-option 'relative-includes #t)
\include "../math.ly"


flutterTongue = #(define-music-function
    (noteX noteY)
    (ly:music? ly:music?)
    (let* ((durs (mome3dur (ly:music-length #{ $noteX 
                                               $noteY #})))
           (main (changeDur (car durs) noteX)))
         #{ <<  
                \oneVoice
                $main #(trem (car durs)) 
            \\
                \stemless \shiftDurations #1 #0 {
                    \hideNotes $main \glissando \unHideNotes
                    \once \override Dots.stencil = ##f
                    \tiny \parenthesize
                    #(ly:music-transpose main 
                                         (ly:make-pitch 0 
                                                        (let ((r (- (random 4) 1)))
                                                             (if (positive? r) r
                                                                 (- r 1))))) }
            >> 
            #(make-music 'SequentialMusic 'elements
                (letrec ((fill-rests (lambda (ls)
                                             (if (null? ls) '()
                                                 (cons (make-music 
                                                            'RestEvent 
                                                            'duration (car ls))
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
    (letrec ((tactus (getTactus min #{ #init #final #}))
             (function (lambda (m s i f)
                (if (<= m 1) (list f)
                    (let ((transposition (round (/ s (- m 1)))))
                         (cons i 
                              (function (- m 1)
                                        (- s transposition)
                                        #{\n-transpose c #(ly:make-pitch -1 0 (/ transposition 4)) $i #}
                                        f)))))))
            (let ((ls (function (cdr tactus)
                                (* 2 semis)
                                (changeDur (car tactus) init) 
                                (changeDur (car tactus) final))))
                #{ #(make-music
                        'SequentialMusic
                        'elements
                        (cons #{ #(car ls) ([ ^\markup \italic "jetté" #} 
                              (cdr ls)))
                    )] #} )))

jetteTwo = #(define-music-function
    (noteX noteY shape)
    (ly:music? ly:music? ly:music?)
    (let* ((length (ly:music-length #{ #noteX #noteY #}))
           (main (ly:moment-main length)))
        (if (> main 1/4)
            #{ #(jetteTwo (shiftDurations 1 0 (ly:music-deep-copy noteX)) 
                          (shiftDurations 1 0 (ly:music-deep-copy noteY)) 
                          shape)
                #(make-music 
                    'SequentialMusic 
                    'elements
                    (map (lambda (dur)
                            (make-music
                                'RestEvent
                                'duration dur))
                        (mome4dur 
                            (ly:moment-div length
                                           (ly:make-moment 2)))))
            #}
            (letrec ((tactus (getTactus 4 #{ #noteX #noteY #}))
                     (pitchY (ly:music-property noteY 'pitch))
                     (make-steps-list 
                        (lambda (pa pb count)
                            (let ((steps-a (ly:pitch-steps pa))
                                  (steps-b (ly:pitch-steps pb)))
                             (if (zero? count) '()
                                 (let* ((diff (/ (- steps-b steps-a) count))
                                        (int (round diff))
                                        (rem (/ (round (* 4 (- diff int))) 4)))
                                     (cons pa
                                           (make-steps-list
                                                (ly:pitch-transpose
                                                    pa
                                                    (ly:make-pitch 0 int rem))
                                                pb
                                                (- count 1)))))))))
                    (letrec ((steps-list (make-steps-list
                                        (ly:music-property noteX 'pitch)
                                        pitchY
                                        (- (cdr tactus) 1)))
                             (transp-shape (lambda (p)
                                            #{ \n-transpose c #p
                                                #(changeDur (car tactus) shape) #})))
                            (let ((pitch-list (map transp-shape steps-list)))
                                #{
                                    #(car pitch-list) ([ ^\markup \italic "jetté"
                                    #(make-music
                                        'SequentialMusic
                                        'elements
                                        (cdr pitch-list))
                                    #(transp-shape pitchY) )] #} ))))))

buzz =  #(define-music-function
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
    \autoTimeSig
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
        #(function 'vn
            (if (zero? (random 3))
                (jetteTwo noteB noteA #{ <c' g'> #})
                (stringTrem #{ \transpose c,, $pitchB \giveDur $noteA <c f\harmonic> ^\markup \italic "sul pont."#} noteB ))
            #{\clef "treble"#})
        #(function 'va 
            (if (zero? (random 4))
                (jetteTwo noteB noteA #{ <c g> #})
                (stringTrem #{ \transpose c, $pitchA \giveDur $noteA <c f\harmonic> ^\markup \italic "sul pont."#} noteB ))
            #{\clef "alto"#})
		#(function 'vc 
            (if (zero? (random 5))
                (jetteTwo noteA noteB #{ <c g> #})
                (stringTrem #{ \transpose c $pitchA \giveDur $noteA <c f\harmonic> ^\markup \italic "sul pont."#} noteB ))
             #{\clef "bass"#})
        #(function 'db 
            (if (zero? (random 6))
                (jetteTwo noteA noteB #{ <c, f,> #})
                (stringTrem #{ \transpose c' $pitchB \giveDur $noteA <c f\harmonic> ^\markup \italic "sul pont."#} noteB ))
                        #{\clef "bass_8"#})
    >>
    #}))