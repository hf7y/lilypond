\version "2.20.0"

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