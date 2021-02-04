\version "2.20.0"
\include "./gestures.ily"
\include "/home/zach/lilypond/z/list.ily"
\include "/home/zach/lilypond/z/dynamic.ily"

$(define-public winds '(fl cl bn tbn))
$(define-public piano '(up down))
$(define-public strings '(vn va vc db))
$(define-public tutti (append winds piano strings))

$(define-public basses '(bn tbn down vc db))
$(define-public trebles '(fl cl up vn vn))

$(define (sans item) 
	(filter (lambda (x) (not (equal? x item))) tutti))

timecode = { 
	\numericTimeSignature
	\accidentalStyle modern
	\tempo 4 = 72
	s1* 20 }

master = 
		% \removeWithTag #'verbose 
		\removeWithTag #'part { 
	<<	\context Staff = "bn" \relative c' { 
			\clef "tenor" r8 \n f2..\<~ f1 \pp~ f2.~ f1~ f4 } 
		{ \time 4/4 { \clap #(sans 'bn) f4 
		  				 \rests #(sans 'bn) r2. }
		  \makeTimeSig { \rests #'(fl vc va) r2 \hiss #'(fl vc va) f1 a4 }
		  \makeTimeSig { \hiss #'(fl cl tbn vn db) a1 f4 }
		}
	>>
	<<	\time 4/4
		\context Staff = "bn" \relative c' { 
			\clef "tenor" f1~ f1..\pp }
		\context Staff = "down" \relative c { e4-> r2. r1 r4 \ottava #-1 f,,2 \ottava #0 }
		\context Staff = "vc" \relative c { \clef "bass" e1 c1..}
		\context Staff = "cl" \relative c' { r4 \n a2.\< a1..\pp}
		{ << \hiss #'(tbn) f2 f2
			\rests #'(fl vn va db) r1 >>
			\makeTimeSig \hiss #'(fl tbn vn va db) c1 f2.  }
	>>
	<<
		\time 7/4
		\context Staff = "cl" { bes1\> r2\! }
		\context Staff = "tbn" { bes,,1.. }
		\crackle #'(bn) bes4 f,1..
		\crackle #'(vc) f4 bes,1..
		\hiss #'(fl vn va db) bes1. g4
	>>
	<< 
		\crackle #'(fl) bes4 bes,2..
		\makeTimeSig << \crackle #'(bn vc up) bes4 d2..
						\crackle #'(vn) f''8 d'2.. >>
	   \hiss #'(va db) bes4. f2 >>
	\makeTimeSig << 
		{ \clap #winds c'2 \rests #winds r2 }
		\crackle #'(va up) bes8 d1.
		{ \crackle #'(vc) bes4 f2. \rests #'(vc) r2. }
		{ \crackle #'(vn) bes'4 f'2. \rests #'(vn vc) r2. } >>
	\makeTimeSig << \crackle #'(fl va) d8 bes1.
					{ \rests #'(cls bn tbn) r2 \hiss #'(cl bn tbn) c2 bes2 }
					{ \crackle #piano f4 a1 \rests #piano r2 } >>
	<<  \makeTimeSig \crackle #'(fl va db) f4 bes1.
		\hiss #'(cl bn tbn vc) c2. bes2 >>
	\makeTimeSig <<  \crackle #'(fl db) c4 a1.
		\hiss #'(cl bn tbn vn va vc) c2. f2. 
		\context Staff = "up" \relative c'' { c8 f g, a bes d f, g a c e g}>>
	<<  \makeTimeSig \crackle #'(fl db) c4 e1
		\hiss #'(cl bn tbn vn va vc) c2. e4 >>
	<<  \makeTimeSig \crackle #'(fl db up vc) e4 c1.
		\hiss #'(cl bn tbn vn va) e2. c2. >>
	<<  \makeTimeSig \crackle #'(fl bn tbn up vc db) e8 c1.
		\hiss #'(cl vn va) c1 f2 >>
	\makeTimeSig \crackle e16 c2.				
	% \mark "howl" \howl f1 \bar "" \break
	% \mark "hum" \hum f1 \bar "" \break
	% \mark "kick" \kick f1 \bar "" \break
	% \mark "pluck" \pluck f1 \bar "" \break
	% \mark "rev" \rev f1 \bar "" \break
	% \mark "ring" \ring f1 \bar "" \break
	% \mark "rumble" \rumble f1 \bar "" \break
	% \mark "snap" \snap f1 \bar "" \break
	% \mark "sniff" \sniff f1 \bar "" \break
	% \mark "snort" \snort f1 \bar "" \break
	% \mark "strum" \strum f1 \bar "" \break
	% \mark "whine" \whine f1 \bar "" \break
	% \mark "whistle" \whistle f1 \bar "" \break
} 

\displayLilyMusic
\score {
	<<
		\new StaffGroup <<
			\new Staff = "fl" \with { instrumentName = "Flute" } <<
				\clef "treble^8"
				\timecode
			>>
			\new Lyrics = "fl"

			\new Staff = "cl" \with { instrumentName = "Clarinet"} <<
				\clef "treble"
				\timecode
			>>
			\new Lyrics = "cl"

			\new Staff = "bn" \with { instrumentName = "Basson"}<<
				\clef "bass"
				\timecode
			>>
			\new Lyrics = "bn"

			\new Staff = "tbn" \with { instrumentName = "Trombone"} <<
				\clef "bass"
				\timecode
			>>
			\new Lyrics = "tbn" {}
		>>

		\new PianoStaff = "pf"  \with { instrumentName = "Piano"} <<
			\new Staff = "up" <<
				\clef "treble"
				\timecode
			>>
			\new Staff = "down" <<
				\clef "bass"
				\timecode
			>>
		>>

		\new StaffGroup <<
			\new Staff = "vn" \with { instrumentName = "Violin"} <<
				\clef "treble"
				\timecode
			>>
			\new Staff = "va" \with { instrumentName = "Viola"} <<
				\clef "alto"
				\timecode
			>>
			\new Staff = "vc" \with { instrumentName = "Cello"} <<
				\clef "bass"
				\timecode
			>>
			\new Staff = "db" \with { instrumentName = "Contrabass"} <<
				\clef "bass_8"
				\timecode
			>>
		>>
	\master
	>>
	\layout {
  		\context {
    		\Staff
    		\override VerticalAxisGroup.staff-staff-spacing =
    			#'((basic-distance . 15)
				   (minimum-distance . 9)
				   (padding . 1)
				   (stretchability . 10))
    		\override TupletNumber.text = #tuplet-number::calc-fraction-text
    		tupletFullLength = ##t
			tupletFullLengthNote = ##f
  			\override TimeSignature.break-visibility = ##(#f #t #t)
  		}
  		\context {
  			\Score
  			proportionalNotationDuration = #(ly:make-moment 1/4)
  			
  		}
	}
}


 #(set-global-staff-size 16)
\paper {
  #(set! paper-alist (cons '("lepow" . (cons (* 19 cm) (* 35 cm))) paper-alist))
  #(set! paper-alist (cons '("half-lepow" . (cons (* 19 cm) (* 17 cm))) paper-alist))
  #(set-paper-size "b4")
  % #(set-paper-size "half-lepow")
}