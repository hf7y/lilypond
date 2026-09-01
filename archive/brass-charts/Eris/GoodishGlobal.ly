\version "2.24.0"
\header {
  tagline=""
  enteredby = "zvp"
}

\pointAndClickOff

%Mandatory Layout Variables
cue-pad = #0
cue-offset = #0
label-pad = #2

#(define-markup-command (when-property layout props symbol markp) (symbol? 
markup?)
  (if (chain-assoc-get layout props symbol)
      (interpret-markup layout props markp)
      empty-stencil))

#(define (format-mark-rounded-box-letters mark context)
 (make-bold-markup
   (make-rounded-box-markup
     (make-pad-markup-markup 1
       (make-markletter-markup
         mark)))))

#(define (format-mark-padded-box-letters mark context)
 (make-bold-markup
   (make-box-markup
     (make-pad-markup-markup 1
       (make-markletter-markup
         mark)))))

#(define-public (format-mark-rounded-box-numbers mark context)
  (make-bold-markup
    (make-rounded-box-markup
      (make-pad-markup-markup 2
        (number->string mark)))))

\paper {
  system-system-spacing =
    #'((basic-distance . 15)
       (minimum-distance . 0)
       (padding . 0.5)
       (stretchability . 12))
  markup-system-spacing =
    #'((basic-distance . 10)
       (minimum-distance . 10)
       (padding . 2)
       (stretchability . 12))

	#(set-default-paper-size "letter")

	top-margin = 0.5\in
	left-margin = 0.5\in
	right-margin = 0.5\in
	bottom-margin = 0.5\in

	ragged-bottom = ##t

  bookTitleMarkup = \markup {
  	\center-column {
    	\fill-line { \fontsize #10 \fromproperty #'header:title }
    	\when-property #'header:subtitle \vspace #0.5
    	\when-property #'header:subtitle \fill-line {
    	     { \fontsize #5 \fromproperty #'header:subtitle }
    	   }
    	\fill-line { \null \fromproperty #'header:composer }
    }
  }
  % bookTitleMarkup = \markup {
  % 	\center-column {
	%     \vspace #5
	%     \fill-line { \fontsize #15 \fromproperty #'header:title }
	%     \vspace #5
	%     \fill-line { \fontsize #10 \fromproperty #'header:instrument }
	%   }
  % }
  oddHeaderMarkup = \markup {
  	\if \should-print-page-number
  		\fill-line { \null \fromproperty #'page:page-number-string }
  }

  evenHeaderMarkup = \markup {
  	\if \should-print-page-number
  		\fill-line { \fromproperty #'page:page-number-string \null }
  }
}


numRepeats = #(define-scheme-function
	(arg)(markup?)
	#{
		% \tweak direction #DOWN
		% \tweak Y-offset #cue-offset
		\textEndMark
		\markup \italic { #arg }
	#})

cueBox = #(define-scheme-function
	(arg)(markup?)
	#{
		\tweak direction #DOWN
		\tweak Y-offset #cue-offset
		\textEndMark
		\markup \center-column {
			\fill-line {
				\box \pad-markup #cue-pad \column { \line { \huge #arg } }
			}
			\combine
			\vspace #10
			\null
		}
	#})

lineNote =
	#(define-scheme-function
	     (arg)
	     (markup?)
	    #{ 
	      \tweak padding #0
	      \tweak X-offset #5
	      \textMark 
	      \markup \pad-markup #1.5 { \italic \larger #arg } #})

lineLabel =
	#(define-scheme-function
	     (arg)
	     (markup?)
	    #{ 
	      \tweak padding #1
	      \tweak X-offset #label-pad
	      \textMark 
	      \markup \pad-to-box #'(0 . 1) #'(-2 . 4) { \huge #arg } #})




%These can be redefined locally , I think
\layout {
	indent = #0
	ragged-last = ##f
	\context {
		\Score
		rehearsalMarkFormatter = #format-mark-padded-box-letters

       % \override RehearsalMark.font-name = #"Bitstream Charter"
       \override RehearsalMark.padding = #3
       \override RehearsalMark.X-offset = #-1
       \override RehearsalMark.font-size = #7

       \override TimeSignature.break-visibility = ##(#f #t #t)
	}
	\context {
		\Staff
		% \RemoveAllEmptyStaves
		aDueText = #""
		soloIIText = #""
		soloText = #""
	}
}



tubaSim = {
	\tweak direction #DOWN
	\tweak Y-offset #-6
	\tweak X-offset #1
	\textMark \markup { \small \musicglyph "clefs.F_change" \lower #1 \italic " simile" }
}

tubaUni = {
	\tweak direction #DOWN
	\tweak Y-offset #-6
	\tweak X-offset #1
	\textMark \markup { \small \musicglyph "clefs.F_change" \lower #1 \italic " unison" }
}

unfoldToChart = #(define-music-function
	(m) (ly:music?)
	(make-music
		'UnfoldedRepeatedMusic
		'elements
		'()
		'repeat-count
		(ly:music-property m 'repeat-count)
		'element
		(ly:music-property m 'element)))