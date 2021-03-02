\version "2.20.0"

#(ly:set-option 'relative-includes #t)
\include "../math.ly"

twoNoteRandom = #(define-music-function
	(noteX noteY)
	(ly:music? ly:music?)
	(let ((f (car (numFits noteX noteY))))
		(if (<= f 0) noteB
		 (letrec ((loop (lambda (n)
		 	(if (= n 0) '()
		 		(let ((r (random 3)))
		 			 (cons (cond ((= r 0) (giveDur noteX #{ r1 #}))
		 			 			 ((= r 1) #{ $noteX -. #})
		 			 			 (#t #{ \giveDur $noteX $noteY -. #}))
		 			 	   (loop (- n 1))))))))
			(make-music 'SequentialMusic 'elements (loop f))))))

threeNoteRandom = #(define-music-function
	(noteX noteY noteZ)
	(ly:music? ly:music? ly:music?)
	(let ((f (car (numFits noteX noteY))))
		(if (<= f 0) noteB
		 (letrec ((loop (lambda (n)
		 	(if (= n 0) '()
		 		(let ((r (random 4)))
		 			 (cons (cond ((= r 0) (giveDur noteX #{ r1 #}))
		 			 			 ((= r 1) #{ $noteX -. #})
		 			 			 ((= r 2) #{ \giveDur $noteX $noteZ #})
		 			 			 (#t #{ \giveDur $noteX $noteY -. #}))
		 			 	   (loop (- n 1))))))))
			(make-music 'SequentialMusic 'elements (loop f))))))

pizzRandom = #(define-music-function
	(noteX noteY noteZ)
	(ly:music? ly:music? ly:music?)
	(let ((f (car (numFits noteX noteY))))
		(if (<= f 0) noteB
		 (letrec ((loop (lambda (n)
		 	(if (<= n 1) '()
		 		(let ((r (random 4)))
		 			 (cons (cond ((= r 0) (giveDur noteX #{ r1 #}))
		 			 			 ((= r 1) #{ $noteX -. #})
		 			 			 ((= r 2) #{ \giveDur $noteX $noteZ -. #})
		 			 			 (#t #{ \giveDur $noteX $noteY -. #}))
		 			 	   (loop (- n 1))))))))
			(make-music 'SequentialMusic 'elements 
				(cons #{ $noteX -. \pizz #} (loop f)))))))

crackle = #(define-music-function
    (instruments noteA noteB)
    ((list? tutti) ly:music? ly:music?)
    (letrec ((pitchB (ly:music-property noteB 'pitch))
   			 (durB (ly:music-property noteB 'duration))
			 (pitchA (ly:music-property noteA 'pitch))
			 (durA (ly:music-property noteA 'duration))
			 (randA (random 2))
			 (randB (random 2))
			 (fits (car (numFits noteA noteB)))
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
   		\autoTimeSig { $noteB }
		#(function 'fl #{  \transpose c c' \threeNoteRandom $noteA $noteB { \once \override NoteHead.style = #'cross $noteA }
		    #(momentToRests (cdr (numFits noteA noteB))) #} #{\clef "treble"#} #{ \lyricmode {k t k k t k t k k t k t k k t} #})
		#(function 'cl #{  \transpose c c' #(threeNoteRandom noteA noteB #{ \once \override NoteHead.style = #'cross $noteA #})
		    #(momentToRests (cdr (numFits noteA noteB))) #} #{\clef "treble"#})
		#(function 'bn #{  \relative c' \threeNoteRandom $noteA $noteB { \xNotesOn $noteA \xNotesOff }
		    #(momentToRests (cdr (numFits noteA noteB))) #} #{\clef "tenor"#})
		#(function 'tbn #{  \transpose c g \twoNoteRandom $noteA $noteB
		    #(momentToRests (cdr (numFits noteA noteB))) #} #{\clef "bass"#})
		#(function 'up #{  \transpose c c'' \threeNoteRandom $noteA $noteB \transpose c c $noteB
		    #(momentToRests (cdr (numFits noteA noteB))) #} #{\clef "treble"#})
		#(function 'down #{  \transpose c c'' \threeNoteRandom $noteA $noteB \transpose c cis $noteB
		    #(momentToRests (cdr (numFits noteA noteB))) #} #{\clef "treble"#})
		#(function 'vn #{  \transpose c c' \pizzRandom $noteA $noteB \transpose c cis $noteB
		    #(momentToRests (cdr (numFits noteA noteB))) #} #{\clef "treble"#})
		#(function 'va #{  \transpose c g' #(pizzRandom (giveDur noteA noteB) noteB #{ \transpose c ces $noteB #})
		    #(momentToRests (cdr (numFits noteA noteB))) #} #{\clef "alto"#})
		#(function 'vc #{  \transpose c c #(pizzRandom (giveDur noteA noteB) noteB #{ \transpose c ces $noteB #})
		    #(momentToRests (cdr (numFits noteA noteB))) #} #{\clef "bass"#})
		#(function 'db #{  \transpose c f, #(pizzRandom (giveDur noteA noteB) noteB #{ \transpose c ces $noteB #})
		    #(momentToRests (cdr (numFits noteA noteB))) #} #{\clef "bass_8"#})
    >>
    #}))