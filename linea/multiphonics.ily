\version "2.20.0"
\include "/home/zach/lilypond/z/staff.ily"
\include "/home/zach/lilypond/z/note.ily"

%Multiphonics for Woodwinds

clA = {
 %Heather Roche Ultra-underblow #035
 	% #(print-keys-verbose 'clarinet (current-error-port))
 	\fixed c' <a\harmonic a' c''\harmonic>1
 	\tag #'part ^\markup \override #'(size . 0.5) \halign #0 \pad-markup #1
					  \woodwind-diagram #'clarinet #'((lh . (thumb R gis))
                    	(cc . (one two three))
                        (rh . (three four)))
}

clB = {
 %Heather Roche Ultra-underblow #001
 	% #(print-keys-verbose 'clarinet (current-error-port))
 	\fixed c' <gis\harmonic gis' dih''\harmonic>1
 	\tag #'part ^\markup \override #'(size . 0.5) \halign #0 \pad-markup #1
					  \woodwind-diagram #'clarinet #'((lh . (thumb R gis))
                    	(cc . (two three five six))
                        (rh . (fis)))
}

bnA = {
	\context Staff = "bn" {
		\clef "bass"
		\no-line
		<<  \tag #'verbose { \footnote #'(0 . 0) "remove reed" \hide r1}
			{ d1^\markup \tiny "crow" } >>  }
}

randomizer = #(define-music-function
	(num noteA noteB)
	(number? ly:music? ly:music?)
	(letrec ((loop (lambda (n)
				(if (= 0 n) '()
					  (if (= 0 (random 2)) (cons noteB (loop (- n 1)))
					  	  (cons noteA (loop (- n 1))))))))
			(make-music 
			  'SequentialMusic
			  'elements (loop num))))
bnB = {
	\xNotesOn \no-line \fixed c  { d8^\markup { "key clicks" \italic "ad lib." } \randomizer 7 d r \xNotesOff }
}