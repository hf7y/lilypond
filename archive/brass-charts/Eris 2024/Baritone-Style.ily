\version "2.24.0"

%DEFINITIONS
%	Variables
cue-offset = #-4
cue-pad = #2
highlightColor = "gainsboro" %"grey"
label-pad = #1

\include "./ripped-staff.ily"

#(define-public (format-mark-padded-box-letters mark context)
 (make-bold-markup
 	 #{ \markup \with-color #highlightColor
	   #(make-box-markup
	     (make-pad-markup-markup 0.5
	       (markup #:with-color black
	       	(make-markletter-markup
	         mark)))) #} ))

#(define-public (format-mark-padded-circle-letters mark context)
 (make-bold-markup
 	 #{ \markup \with-color #highlightColor
	   #(make-circle-markup
	     (make-pad-markup-markup 0.5
	       (markup #:with-color black
	       	(make-markletter-markup
	         mark)))) #} ))

#(define-public (format-mark-rounded-box-letters mark context)
 (make-bold-markup
   (make-rounded-box-markup
     (make-pad-markup-markup 1
       (make-markletter-markup
         mark)))))

#(define-public (format-mark-rounded-box-numbers mark context)
  (make-bold-markup
    (make-rounded-box-markup
      (make-pad-markup-markup 2
        (number->string mark)))))

#(define-markup-command (when-property layout props symbol markp) (symbol? 
markup?)
  (if (chain-assoc-get layout props symbol)
      (interpret-markup layout props markp)
      empty-stencil))

boxLine = \markup {
		\with-color #highlightColor \draw-line #'(30 . 0)
}

cueBox = #(define-scheme-function
	(arg)(markup?)
	#{
		\tag #'cueBox {
			\tweak direction #DOWN
			% \tweak Y-offset #cue-offset
			\textEndMark
			\markup \with-color #highlightColor \box \center-column {
				\fill-line {
					
						\pad-markup #cue-pad \column { 
							\with-color "black" \line { \huge #arg } 
						}
				}
			}
		}
	#})

extendLV = #(define-music-function (parser location further) (number?) #{
   \once \override LaissezVibrerTie.X-extent = #'(0 . 0)
   \once \override LaissezVibrerTie.details.note-head-gap = #(/ further
-2)
   \once \override LaissezVibrerTie.extra-offset = #(cons (/ further 2)
0)
#})

lineLabel =
	#(define-scheme-function
	     (arg)
	     (markup?)
	    #{ 
	      % \tweak padding #1
	      \tweak X-offset #label-pad

	      \textMark 
	      \markup \pad-to-box #'(0 . 1) #'(-1 . 4) { \italic \huge #arg } #})

lineNote =
	#(define-scheme-function
	     (arg)
	     (markup?)
	    #{ 
	      \tweak padding #0
	      \tweak X-offset #0
	      \textMark 
	      \markup \pad-markup #1 { \italic \large #arg } #})

makeCircleMarks = {
	\set Score.rehearsalMarkFormatter = #format-mark-padded-circle-letters
	% \override Score.RehearsalMark.font-size = #6
}

markSection = #(define-scheme-function
	(arg)(markup?)
	#{
		\sectionLabel \markup \smaller { #arg }
	#})

numRepeats = #(define-scheme-function
	(arg)(markup?)
	#{
		% \tweak direction #DOWN
		% \tweak Y-offset #cue-offset
		\textEndMark
		\markup \concat { "×" #arg }
	#})

omitClef = {
	\once\hideNotes\grace c64
	\omit Staff.Clef
}

onceOmitClef = {
	\once \omit Staff.Clef
}

watermark = \markup
\with-dimensions-from\null {
  \translate #'(-70 . -120)
  \rotate #50
  \fontsize #13
  \pattern #2 #Y #3 
  \pattern #3 #X #5
  \bold\with-color #(rgb-color .95  .95  .95) "draft 2023"
}

\pointAndClickOff

\header {
  tagline=""
  enteredby = "zvp"
}

\paper {
  system-system-spacing =
    #'((basic-distance . 10)
       (minimum-distance . 0)
       (padding . 0)
       (stretchability . 20))
  markup-system-spacing =
    #'((basic-distance . 7)
       (minimum-distance . 2)
       (padding . 1)
       (stretchability . 20))

	#(set! paper-alist
  (cons '("phone" . (cons (* 6.5 in) (* 20 in))) paper-alist))

	top-margin = 0.1\in
	left-margin = 0.9\in
	right-margin = 0.1\in
	bottom-margin = 0.1\in

	ragged-bottom = ##t
	% ragged-last = ##t
	ragged-right = ##t

	#(set-paper-size "phone")

  #(define fonts
    (set-global-fonts
     #:music "beethoven"
     #:brace "beethoven"
   ))

  bookTitleMarkup = \markup {
  	\null
		% \fromproperty #'header:supertitle
		% \fromproperty #'header:title 
		% \fromproperty #'header:subtitle
  }

  oddHeaderMarkup = \markup \fontsize #2 {
  	\combine\watermark
  	% \if \should-print-page-number
  		\fill-line { 
  			\concat {
					\fromproperty #'header:title 
					" "
					\fromproperty #'header:subtitle
  			}
  			\fromproperty #'page:page-number-string
  		}
  }

	evenHeaderMarkup = \oddHeaderMarkup
}

\layout {
	indent = #10

	\context {
		\Score
		rehearsalMarkFormatter = #format-mark-padded-box-letters
			 % \override Clef.break-visibility = ##(#f #f #t)
       % \override RehearsalMark.font-name = #"Bitstream Charter"
       \override RehearsalMark.padding = #0
       \override RehearsalMark.X-offset = #-5.5
       \override RehearsalMark.Y-offset = #-1.5
       \override RehearsalMark.outside-staff-priority = ##f
       \override RehearsalMark.font-size = #7

       \override SectionLabel.font-size = #5
       \override SectionLabel.padding = #3
       \override SectionLabel.X-offset = #-1

       \omit BarNumber

       \override TimeSignature.break-visibility = ##(#f #t #t)

      startRepeatBarType = #"[|:"
    	endRepeatBarType = #":|]"
    	doubleRepeatBarType = #":|][|:"
	}
	\context {
		\Staff
		% \RemoveAllEmptyStaves
		aDueText = #""
		soloIIText = #""
		soloText = #""

		\override VerticalAxisGroup.staff-staff-spacing =
    #'((basic-distance . 0)
       (minimum-distance . 0)
       (padding . 0)
       (stretchability . 10))
				% \override CueClef.break-visibility = ##(#f #f #f)
	}
}