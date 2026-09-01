\version "2.24.0"
\header {
  tagline="zvp"
}

\pointAndClickOff

%Mandatory Layout Variables
cue-pad = #2
cue-offset = #-10
label-pad = #2

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
		\markup \fill-line {
			\box \pad-markup #cue-pad \column { 
				\line { #arg }
			}
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
	      \tweak padding #0
	      \tweak X-offset #-2
	      \textMark 
	      \markup \pad-markup #1 { \huge #arg } #})

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


%These can be redefined locally , I think
\layout {
	indent = #0
	ragged-last = ##f
	\context {
		\Score
		rehearsalMarkFormatter = #format-mark-box-alphabet
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

\paper {
  system-system-spacing =
    #'((basic-distance . 17)
       (minimum-distance . 0)
       (padding . 6.5)
       (stretchability . 12))
  markup-system-spacing =
    #'((basic-distance . 10)
       (minimum-distance . 10)
       (padding . 1)
       (stretchability . 12))
	#(set-default-paper-size "letter")
}