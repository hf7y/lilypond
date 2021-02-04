\version "2.20.0"
print-dots = #(define-music-function
	(head max-dots)
	(number? number?)
	#{
		#(if (> max-dots 0)
			#{ \print-dots #head #(- max-dots 1) #}
			#{ #})
		\scaleDurations 5/2
		\scaleDurations #(cons (expt 2 (+ head max-dots)) (- (expt 2 (+ 1 max-dots)) 1))
		\shiftDurations #head #max-dots c''1 ^\markup {
			\fraction #(number->string (- (expt 2 (+ 1 max-dots)) 1) 2) 
					  #(number->string (expt 2 (+ head max-dots)) 2)}
	#})

print-heads = #(define-music-function
	(min-head max-dots)
	(number? number?)
	#{
		<<
			#(if (> min-head 0)
				 (begin
				    #{ \print-heads #(- min-head 1) #max-dots #}))
			\new Staff \with { 
				\remove "Clef_engraver" 
				\remove "Time_signature_engraver"
				\remove "Bar_engraver"
			}{
				\print-dots #min-head #max-dots
			}
		>>
	#})

\layout { indent = 0 }

\score { \print-heads 4 5 }