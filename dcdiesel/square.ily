\version "2.18.2"
wholeFinesse =
  #'((moveto -0.7  0.54)
     (lineto -0.7 -0.52)
     (lineto  0.7 -0.52)
     (lineto  0.7  0.54)
     (lineto -0.7  0.54)
     (lineto -0.65  0.5 )
     (lineto  0.45  0.5 )
     (lineto  0.65 -0.48)
     (lineto -0.45 -0.48)
     (lineto -0.65 0.5  )
     (closepath)) 

halfFinesse =
  #'((moveto -0.6  0.52)
     (lineto -0.6 -0.50)
     (lineto  0.6 -0.50)
     (lineto  0.6  0.52)
     (lineto -0.6  0.52)
     (lineto -0.53  0.35)
     (lineto  0.53  0.49 )
     (lineto  0.53 -0.33)
     (lineto -0.53 -0.47)
     (lineto -0.53  0.35 )
     (closepath)) 

#(define (square-head grob)
   (let ((duration (ly:grob-property grob 'duration-log)))
     (if (>= duration 2)
         (grob-interpret-markup grob
              #{
                \markup 
		  \halign #-1.5
		  \filled-box #'(-0.6 . 0.6) #'(-0.5 . 0.5) #0
              #})
	 (if (= duration 1)
	   (grob-interpret-markup grob
		  #{
		    \markup
		      \halign #-1.5
		      \override #'(filled . #t) \path #0.1  #halfFinesse
		   #})
	   (grob-interpret-markup grob
		  #{
		    \markup {
		      %\overlay { 
			%\filled-box #'(-0.73 . 0.73) #'(-0.55 . 0.58) #0
			%\transparent
			%\with-color #white
			\halign #-0.7
			\override #'(filled . #t) \path #0.1  #wholeFinesse
		      %}
		    }
		   #})))))

square-old = \once \override NoteHead.stencil = #square-head
square = #(define-music-function (music)(ly:music?) #{
  \override NoteHead.stencil = #square-head
  $music
  \revert NoteHead.stencil
#})
