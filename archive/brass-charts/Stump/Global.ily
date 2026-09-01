\version "2.24.0"

#(set-default-paper-size "letter")
#(set-global-staff-size 20)

highlightColor = "gainsboro"
% highlightColor = "grey"

global-header = \header {
  tagline=""
  enteredby = "zvp"
}

omitClef = {
	\once\hideNotes\grace c64
	\omit Staff.Clef
}

onceOmitClef = {
	\once \omit Staff.Clef
}

boxLine = \markup {
		\with-color #highlightColor \draw-line #'(30 . 0)
}

watermark = \markup
\with-dimensions-from\null {
  \translate #'(-70 . -120)
  \rotate #50
  \fontsize #13
  \pattern #2 #Y #3 
  \pattern #3 #X #5
  \bold\with-color #(rgb-color .95  .95  .95) "draft 2025"
}

% \include "./ripped-staff.ily"

markSection = #(define-scheme-function
	(arg)(markup?)
	#{
		\sectionLabel \markup \smaller { #arg }
	#})
\pointAndClickOff

%Mandatory Layout Variables
cue-pad = #2
cue-offset = #-4
label-pad = #1

extendLV = #(define-music-function (parser location further) (number?) #{
   \once \override LaissezVibrerTie.X-extent = #'(0 . 0)
   \once \override LaissezVibrerTie.details.note-head-gap = #(/ further
-2)
   \once \override LaissezVibrerTie.extra-offset = #(cons (/ further 2)
0)
#})

#(define-markup-command (when-property layout props symbol markp) (symbol? 
markup?)
  (if (chain-assoc-get layout props symbol)
      (interpret-markup layout props markp)
      empty-stencil))

% #(define (format-mark-rounded-box-letters mark context)
%  (make-bold-markup
%    (make-rounded-box-markup
%      (make-pad-markup-markup 1
%        (make-markletter-markup
%          mark)))))

% #(define (format-mark-padded-box-letters mark context)
%  (make-bold-markup
%  	 #{ \markup \with-color #highlightColor
% 	   #(make-box-markup
% 	     (make-pad-markup-markup 0.5
% 	       (markup #:with-color black
% 	       	(make-markletter-markup
% 	         mark)))) #} ))

#(define (format-mark-padded-box-letters mark context)
 (make-bold-markup
   #{ \markup \combine
      \with-color #white \filled-box #'(-1 . 4) #'(-1`1  . 4) #0
      \with-color #highlightColor
       \box
       \pad-markup #0.5
         #(markup #:with-color black
          (make-markletter-markup
           mark)) #} ))

#(define (format-mark-padded-circle-letters mark context)
 (make-bold-markup
 	 #{ \markup \with-color #highlightColor
	   #(make-circle-markup
	     (make-pad-markup-markup 0.5
	       (markup #:with-color black
	       	(make-markletter-markup
	         mark)))) #} ))

#(define-public (format-mark-rounded-box-numbers mark context)
  (make-bold-markup
    (make-rounded-box-markup
      (make-pad-markup-markup 2
        (number->string mark)))))

makeCircleMarks = {
	\set Score.rehearsalMarkFormatter = #format-mark-padded-circle-letters
	% \override Score.RehearsalMark.font-size = #6
}

\paper {

  system-system-spacing =
    #'((basic-distance . 8)
       (minimum-distance . 4)
       (padding . 1)
       (stretchability . 20))
  markup-system-spacing =
    #'((basic-distance . 18)
       (minimum-distance . 0)
       (padding . 0.5)
       (stretchability . 20))



	#(set-default-paper-size "letter")
	#(set! paper-alist
  (cons '("phone" . (cons (* 6.5 in) (* 9.5 in))) paper-alist))


	top-margin = 0.5\in
	left-margin = 0.75\in
	right-margin = 0.75\in
	bottom-margin = 0.5\in

	ragged-bottom = ##t
	% ragged-last = ##t
	% ragged-right = ##t

	indent = #0

  % #(define fonts
  %   (set-global-fonts
  %    #:music "beethoven"
  %    #:brace "beethoven"
  %  ))

  % bookTitleMarkup = \markup {
  % 	\center-column {
  % 		\fontsize #4 \fromproperty #'header:supertitle
  % 		\when-property #'header:supertitle \vspace #0.3
  % 		\fill-line { 
  % 			\pad-to-box #'(0 . 20) #'(-4 . 0) \fromproperty #'header:instrument 
  % 			\center-column {
  % 				\fontsize #10 \fromproperty #'header:title 
  % 				\lower #1 \fontsize #4 \fromproperty #'header:subtitle
  % 			}
  % 			\fromproperty #'header:composer 
  % 		}
  %   }
  % }
  % % bookTitleMarkup = \markup {
  % % 	\center-column {
	% %     \vspace #5
	% %     \fill-line { \fontsize #15 \fromproperty #'header:title }
	% %     \vspace #5
	% %     \fill-line { \fontsize #10 \fromproperty #'header:instrument }
	% %   }
  % % }
  % oddHeaderMarkup = \markup {
  % 	\combine\watermark
  % 	\if \should-print-page-number
  % 		\fill-line { 
  % 			\null 
  % 			\unless \on-first-page-of-part \concat {
  % 				\fromproperty #'header:title
  % 				\when-property #'header:subtitle { " " }
  % 				\fromproperty #'header:subtitle
  % 				" – "
  % 				\fromproperty #'header:instrument
  % 			}
  % 			\fromproperty #'page:page-number-string 
  % 		}
  % }

  % evenHeaderMarkup = \markup {
  % 	\combine\watermark
  % 	\if \should-print-page-number
  % 		\fill-line { 
  % 			\fromproperty #'page:page-number-string
  % 			\unless \on-first-page-of-part \concat {
  % 				\fromproperty #'header:title
  % 				\when-property #'header:subtitle { " " }
  % 				\fromproperty #'header:subtitle
  % 				" – "
  % 				\fromproperty #'header:instrument
  % 			}
  % 			\null 
  % 		}
  % }
}


numRepeats = #(define-scheme-function
	(arg)(markup?)
	#{
		% \tweak direction #DOWN
		% \tweak Y-offset #cue-offset
		\textEndMark
		\markup \concat { "×" #arg }
	#})

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

lineNote =
	#(define-scheme-function
	     (arg)
	     (markup?)
	    #{ 
	      \tweak padding #0
	      \tweak X-offset #0
	      \textMark 
	      \markup \pad-markup #1 { \italic \large #arg } #})

lineLabel =
	#(define-scheme-function
	     (arg)
	     (markup?)
	    #{ 
	      % \tweak padding #1
	      \tweak X-offset #label-pad
	      \textMark 
	      \markup \pad-to-box #'(0 . 1) #'(-1 . 4) { \italic \huge #arg } #})





%These can --- NO.
\layout {
	% indent = #0
	% ragged-last = ##f


	\context {
		\Score
		rehearsalMarkFormatter = #format-mark-padded-box-letters
			 % \override Clef.break-visibility = ##(#f #f #t)
       % \override RehearsalMark.font-name = #"Bitstream Charter"
       % \override RehearsalMark.padding = #3
       % \override RehearsalMark.X-offset = #-1
       \override RehearsalMark.font-size = #5

       \override SectionLabel.font-size = #5
       \override SectionLabel.padding = #3
       \override SectionLabel.X-offset = #-1

       % \omit BarNumber

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
    #'((basic-distance . 8)
       (minimum-distance . 6)
       (padding . 0.5)
       (stretchability . 10))
				% \override CueClef.break-visibility = ##(#f #f #f)
	}
}



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

% unfoldToChart = #(define-music-function
% 	(m) (ly:music?)
% 	(make-music
% 		'UnfoldedRepeatedMusic
% 		'elements
% 		'()
% 		'repeat-count
% 		(ly:music-property m 'repeat-count)
% 		'element
% 		(ly:music-property m 'element)))

second-only-spanner = {
	% \once\override TextSpanner.bound-details.left.text = "2nd time only"
  % \once\override TextSpanner.bound-details.right.text =
  %   \markup { \draw-line #'(0 . -1) }
}

repeatTieForward = { 
  \once \override RepeatTie.direction = #1
  \shape #'((2 . 0) (2 . 0) (2 . 0) (2 . 0)) RepeatTie
}