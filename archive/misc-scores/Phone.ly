\version "2.24.0"
\header {
  tagline=""
}

\pointAndClickOff

%Mandatory Layout Variables
cue-pad = #1.5
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
		\markup { #arg }
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
	      \tweak X-offset #2
	      \textMark 
	      \markup \pad-markup #0.5 { \italic \small #arg } #})

lineLabel =
	#(define-scheme-function
	     (arg)
	     (markup?)
	    #{ 
	      \tweak padding #0
	      \tweak X-offset #-2
	      \textMark 
	      \markup \pad-markup #1 { #arg } #})

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
       \override RehearsalMark.padding = #0.5
       \override RehearsalMark.X-offset = #-2
       \override RehearsalMark.font-size = #5
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

#(set! paper-alist
  (cons '("phone" . (cons (* 8.5 in) (* 5.5 in))) paper-alist))

\paper {
  system-system-spacing =
    #'((basic-distance . 10)
       (minimum-distance . 10)
       (padding . 2)
       (stretchability . 12))
  markup-system-spacing =
    #'((basic-distance . 10)
       (minimum-distance . 10)
       (padding . 1)
       (stretchability . 12))

  #(set-paper-size "phone")

    scoreTitleMarkup = \markup {
      \fill-line {
        % \null
        \fontsize #2 \bold \fromproperty #'header:piece
        % \fromproperty #'header:composer
      }
    }
}

% #(set-global-staff-size 14)

makePercent =
#(define-music-function (note) (ly:music?)
   "Make a percent repeat the same length as NOTE."
   (make-music 'PercentEvent
               'length (ly:music-length note)))

\defineBarLine "||-.|:" #'("||" ".|:" ".|:")
\defineBarLine "|.-.|:" #'("|." ".|:" ".|:")