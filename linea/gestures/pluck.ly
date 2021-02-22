\version "2.20.0"

#(ly:set-option 'relative-includes #t)
\include "../math.ly"

pluckScale = \relative c' { c d e f g a bes }
m-transpose = #(define-music-function
	(from to music)
	(ly:pitch? ly:pitch? ly:music?)
	#{ \modalTranspose #from #to \pluckScale $music #})

repeatMath = #(define-music-function
	(prenum max note)
	(number? number? ly:music?)
	(let ((num (if (positive? prenum) prenum max)))
		(if (> num max) #{#}
			(cond ((= num 1) #{ $note \repeatMath #num #(- max num) \m-transpose c d $note #} )
				  ((even? num) #{ $note -. \unfold #(- num 2) $note -. $note \repeatMath #(/ num 2) #(- max num) \m-transpose c d $note #})
				  ((odd? num) #{ $note -> \unfold #(- num 2) $note -> $note \repeatMath #(/ (- num 1) 2) #(- max num) \m-transpose c d $note #})))))

pluck = #(define-music-function
    (instruments noteA noteB)
    ((list? tutti) ly:music? ly:music?)
    (letrec ((pitchB (ly:music-property noteB 'pitch))
   			 (durB (ly:music-property noteB 'duration))
			 (pitchA (ly:music-property noteA 'pitch))
			 (durA (ly:music-property noteA 'duration))
			 (randA 0)
			 (randB 0)
			 (fits (car (numFits noteA noteB)))
			 (base (car (numFits noteA noteB)))
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
   		\autoTimeSig { $noteB $noteB }
		#(function 'fl #{ \retrograde \transpose c c''
			\repeatMath #(+ randA (quotient (- base 2) 2)) #(car (numFits noteA noteB)) $noteA #} #{\clef "treble"#})
		#(function 'cl #{ \retrograde \transpose c c' 
			\repeatMath #(+ randB (quotient (- base 2) 2)) #(car (numFits noteA noteB)) $noteA #})
		#(function 'bn #{ \retrograde \inversion $pitchA $pitchA \transpose c' c 
			\repeatMath #(+ randB (quotient (- base 1) 2)) #(car (numFits noteA noteB)) $noteA #})
		#(function 'tbn  #{ \retrograde \inversion $pitchA $pitchA \transpose c' c 
			\repeatMath #(+ randA (quotient (- base 2) 2)) #(car (numFits noteA noteB)) $noteA #})
		#(function 'up #{ \retrograde \transpose c c'' 
			\repeatMath #(+ randB (quotient (- base 4) 2)) #(car (numFits noteA noteB)) $noteA #} #{\clef "treble"#})
		#(function 'down #{ \retrograde \inversion $pitchA $pitchA \transpose c' c 
			\repeatMath #(+ randB (quotient (- base 4) 2)) #(car (numFits noteA noteB)) $noteA #})
		#(function 'vn #{ \retrograde \transpose c c' 
			\repeatMath #(+ randB (quotient (- base 3) 2)) #(car (numFits noteA noteB)) $noteA #} #{\clef "treble"#})
		#(function 'va #{ \retrograde \transpose c c' 
			\repeatMath #(+ randA (quotient (- base 1) 2)) #(car (numFits noteA noteB)) $noteA #})
		#(function 'vc #{ \retrograde \inversion $pitchA $pitchA \transpose c' c 
			\repeatMath #(+ randB (quotient (- base 1) 2)) #(car (numFits noteA noteB)) $noteA #})
		#(function 'db #{ \retrograde \inversion $pitchA $pitchA \transpose c c 
			\repeatMath #(+ randA (quotient (- base 2) 2)) #(car (numFits noteA noteB)) $noteA #})
    >>
    #}))