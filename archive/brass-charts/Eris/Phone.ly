\version "2.24.0"

% from Global.ly 2026
highlightColor = "gainsboro"

#(define (format-mark-padded-circle-letters mark context)
 (make-bold-markup
 	 #{ \markup \with-color #highlightColor
	   #(make-circle-markup
	     (make-pad-markup-markup 0.5
	       (markup #:with-color black
	       	(make-markletter-markup
	         mark)))) #} ))

#(define-markup-command (when-property layout props symbol markp) (symbol? 
markup?)
  (if (chain-assoc-get layout props symbol)
      (interpret-markup layout props markp)
      empty-stencil))


% old

\header {
  tagline=""
}

\pointAndClickOff

%Mandatory Layout Variables
cue-pad = #0.5
cue-offset = #-8
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
				\line { \small #arg }
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
	% ragged-last = ##f
	\context {
		\Score
		rehearsalMarkFormatter = #format-mark-box-alphabet
       % \override RehearsalMark.font-name = #"Bitstream Charter"
       \override RehearsalMark.padding = #0.5
       \override RehearsalMark.X-offset = #-2
       \override RehearsalMark.font-size = #3
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
  (cons '("phone" . (cons (* 5.5 in) (* 2.5 in))) paper-alist))

\paper {
  system-system-spacing =
    #'((basic-distance . 10)
       (minimum-distance . 0)
       (padding . 2)
       (stretchability . 12))
  markup-system-spacing =
    #'((basic-distance . 10)
       (minimum-distance . 0)
       (padding . 0)
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

#(set-global-staff-size 14)

makePercent =
#(define-music-function (note) (ly:music?)
   "Make a percent repeat the same length as NOTE."
   (make-music 'PercentEvent
               'length (ly:music-length note)))

\defineBarLine "||-.|:" #'("||" ".|:" ".|:")
\defineBarLine "|.-.|:" #'("|." ".|:" ".|:")


% from Global.ly 2026
highlightColor = "gainsboro"

#(define (format-mark-padded-circle-letters mark context)
 (make-bold-markup
 	 #{ \markup \with-color #highlightColor
	   #(make-circle-markup
	     (make-pad-markup-markup 0.5
	       (markup #:with-color black
	       	(make-markletter-markup
	         mark)))) #} ))

#(define-markup-command (when-property layout props symbol markp) (symbol? 
markup?)
  (if (chain-assoc-get layout props symbol)
      (interpret-markup layout props markp)
      empty-stencil))
