\version "2.24.0"
\header {
  tagline=""
}

\pointAndClickOff

%Mandatory Layout Variables
cue-pad = #0.5
cue-offset = #-8
label-pad = #2

% tubaSim = {
% 	\tweak direction #DOWN
% 	\tweak Y-offset #-6
% 	\tweak X-offset #1
% 	\textMark \markup { \small \musicglyph "clefs.F_change" \lower #1 \italic " simile" }
% }

% tubaUni = {
% 	\tweak direction #DOWN
% 	\tweak Y-offset #-6
% 	\tweak X-offset #1
% 	\textMark \markup { \small \musicglyph "clefs.F_change" \lower #1 \italic " unison" }
% }

#(define (format-mark-padded-box-letters mark context)
 (make-bold-markup
 	 #{ \markup % \with-color #highlightColor
	   #(make-box-markup
	     (make-pad-markup-markup 0.5
	       (markup #:with-color black
	       	(make-markletter-markup
	         mark)))) #} ))

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
	ragged-last = ##f

	\context {
				\Score
		rehearsalMarkFormatter = #format-mark-padded-box-letters
			 % \override Clef.break-visibility = ##(#f #f #t)
       % \override RehearsalMark.font-name = #"Bitstream Charter"
       \override RehearsalMark.padding = #0
       \override RehearsalMark.X-offset = #-15.5
       \override RehearsalMark.Y-offset = #-5.5
       \override RehearsalMark.outside-staff-priority = ##f
       \override RehearsalMark.font-size = #7

       \override SectionLabel.font-size = #5
       \override SectionLabel.padding = #3
       \override SectionLabel.X-offset = #-1

       % \override MetronomeMark.padding = #4
       % \override MetronomeMark.X-offset = #-0.5

       \override TimeSignature.break-visibility = ##(#f #t #t)
       % \override KeySignature.break-visibility = ##(#f #t #t)
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
  (cons '("phone" . (cons (* 5.5 in) (* 5.625 in))) paper-alist))

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

	top-margin = 0.5\in
	left-margin = 1.25\in
	right-margin = 0.25\in
	bottom-margin = 0.25\in

  #(set-paper-size "phone")

    % scoreTitleMarkup = \markup {
    %   \fill-line {
    %     \fill-line { \fontsize #10 \fromproperty #'header:instrument }
    %     \fontsize #2 \bold \fromproperty #'header:title
    %     \fromproperty #'header:composer
    %   }
    % }
  bookTitleMarkup = \markup {
  	\center-column {
  		\fill-line { 
  			\fontsize #3 \fromproperty #'header:instrument 
  			\center-column {
  				\fontsize #5 \fromproperty #'header:title 
  			}
  			\fontsize #3 \fromproperty #'header:composer 
  		}
    }
  }
oddHeaderMarkup = \markup {
  	\if \should-print-page-number
  		\fill-line { 
  			\null 
  			\unless \on-first-page-of-part \concat {
  				\fromproperty #'header:title
  				" – "
  				\fromproperty #'header:instrument
  			}
  			\fromproperty #'page:page-number-string 
  		}
  }

  evenHeaderMarkup = \markup {
  	\if \should-print-page-number
  		\fill-line { 
  			\fromproperty #'page:page-number-string
  			\unless \on-first-page-of-part \concat {
  				\fromproperty #'header:title
  				" – "
  				\fromproperty #'header:instrument
  			}
  			\null 
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
\defineBarLine ":|.-.|:" #'(":|." ".|:" ".|:")