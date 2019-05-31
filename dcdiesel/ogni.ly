%Suono A%
\version "2.19.82"
\include "big-paren.ily"
\include "frameEngraver25.ly"
\include "triangle-heads.ly"
\include "square.ily"
\include "arrow.ily"
\include "staff.ily"
\include "headless.ily"
\include "beams-in-markup.ily"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

slap =
#(define-music-function (music) (ly:music?)
#{
  \temporary \override NoteHead.stencil =
  #(lambda (grob)
     (grob-interpret-markup grob
      (markup #:musicglyph "scripts.sforzato")))
  \temporary \override NoteHead.stem-attachment =
  #(lambda (grob)
     (let* ((thickness (ly:staff-symbol-line-thickness grob))
            (stem (ly:grob-object grob 'stem))
            (dir (ly:grob-property stem 'direction UP)))
       (cons 1 (+ (if (= dir DOWN)
                      0.5
                      0)
                  (/ thickness 2)))))
  #music
  \revert NoteHead.stencil
  \revert NoteHead.stem-attachment
#})

frameStart =
#(make-span-event 'FrameEvent START)

frameEnd =
#(make-span-event 'FrameEvent STOP)

% There is no `frameExtenderStart' because extender is begun with \frameEnd
frameExtenderEnd =
#(make-span-event 'FrameExtenderEvent STOP)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\header {
  title = "DC Diesel"
  subtitle = "for Ogni Suono"
  composer = "Z.V. Pine"
  tagline = ""
}

one-three-three = \markup {
  \hspace #0.8
    \with-dimensions-from \null {
    \overlay {
      \with-color #white
      \filled-box #'(-3 . 3) #'(1 . 11.5) #0
      \override #'(size . 0.6)
	\woodwind-diagram 
	  #'saxophone 
	  #'((cc . (two three four five six))
	     (lh . (T)) 
	     (rh . ())) }}}

one-three-two = \markup {
  \hspace #0.8
    \with-dimensions-from \null \raise #1 {
    \overlay {
      \with-color #white
      \filled-box #'(-3 . 3) #'(1 . 11.5) #0
      \override #'(size . 0.6)
	\woodwind-diagram 
	  #'saxophone 
	  #'((cc . (one two three five six))
	     (lh . (cis)) 
	     (rh . (high-fis low-c))) }}}

saxIA = \relative c'' {
  \override Score.MetronomeMark.X-offset = #-4  
  \tempo 4 = 96
  \set tieWaitForNote = ##t
  \grace { b8~ d~}
  \set tieWaitForNote = ##f
  \textLengthOn
  <b d cis'>1\fff~ ^\markup {\one-three-three}|
      <b d cis'>4\>~ <b d>8[ r8]\! r2 

  r2 r4 b,4\pp\<~ | \repeat unfold 1 { b1~ | } b1~ | %5 
  b2\harmonic\mf~ b2\>~ | \repeat unfold 2 { b1~ | } b4~ b8[ r8]\! %7
  b2\harmonic\fp~ | \repeat unfold 1 { b1~ | } b1\<~ | %5
  b1\harmonic\mf\>~ | b2~ %3

  r2\! | r4 r8[ d'8\pp]~ d2:32~ | d1:32~ | d1:32\> | %7
  r2\! fis2\p\<~ | fis1~ | fis2~ %7
  <b, d>2~ | <b d cis'>1\ff~ | \repeat unfold 2 { <b d cis'>1~ | } <b d>2\> r4\!  %9 
  cis'4\p~ | cis1 \glissando |
  \triangle {c'1^"highest pitch"~ | c2. } s4 |
}
saxIIA = \relative c' {
  b1\harmonic\fff~ | \repeat unfold 1 { b1\harmonic~ | } b1~\> | b2.~ b8\p   %7 
  <b' d>8~^\markup {\one-three-three} |
    \repeat unfold 1 { <b d>1~ | } <b d>1\< | %5
  b,1\harmonic\f~ | \repeat unfold 1 { b1\>~ | } b1~ | b2  %7
  
  r2\! | \break d'1\pp~ | \repeat unfold 2 { d1~ } | d2.\>~ d8 r8\! % 7
  g,1\p~ | g1~ | g2\< \glissando %5
  a2~ | a1\f\<  %3
  r2\! b,2\harmonic\ff~ | \explicit-harmonic {s2 fis''4} b,,1\harmonic~ | 
    \repeat unfold 1 { \explicit-harmonic {b''4} b,,1\harmonic~ | } 
    \explicit-harmonic {dis''4} b,,1\harmonic~
    \explicit-harmonic {fis'''4} b,,,1\harmonic~
    \explicit-harmonic {a'''4} b,,,1\harmonic\>~ |
  \override NoteHead.no-ledgers = ##t
  \hide b1 | s1 | 
  \revert NoteHead.no-ledgers
}

saxIB = \relative c'' {
  \set Score.markFormatter = #format-mark-box-alphabet
  \override Score.RehearsalMark.break-align-symbols = #'(clef)
  \override Score.RehearsalMark.X-offset = #-0  
  \bar "||" \break \mark #2
  <<
    \new Voice {
      \change Staff = "Iup"
      <d f eeh'>1\mp~^\markup {\one-three-two} | <d f eeh'>2.\> r4\! |
      r1 | r2. r16[ e'!8.\fp]~ | e1~ | e1\> |
      r2\! \arrowOn \square {dis2\pp^"toneless"~ | dis1\<\glissando} dis1~\p |
      dis2.\glissando eeh4~ | eeh1~ |
      eeh4( \tuplet 5/4 {\repeat unfold 5 {eeh16--}} eeh2)~ |
      eeh1 |
    }
    \new Voice \relative c' {
      \change Staff = "Idown"
      \one-line {
	\xNotesOn
	r1 | r1 | r1 | r1 |
	r4 \tuplet 5/4 { d16[^"key clicks" e f b a ]} b4.\>\startTrillSpan r8\stopTrillSpan |
	r1\! | r1 | r1 |
	r4 \tuplet 5/4 { d,16[ e f b a ]} g4 r4 |
	r1 | r1 | r2 r8 b4.\startTrillSpan\> | \headless {c4 c c} r4\stopTrillSpan\! | 
      }
    }
  >>
  <<
    \new Voice {
      \change Staff = "Iup"
      \explicit-harmonic {bes4} bes,,1\f\harmonic~ | bes1\harmonic~ | bes1~ | 
      bes1~ | 
      <<{bes2.\>}{ s2 \one-line { s4}}>>
      \one-line { r4\! | \square {
	  \repeat unfold 2 { b'8 } b2~ b8 b8 |
	  \tuplet 3/2 { \repeat unfold 2 { b8 } b8~ } b4~
	  \repeat unfold 3 { b16 } b16~ b4~ |
	  b2~ b8 b8 \tuplet 5/4 { \repeat unfold 4 { b16 } b16~ } |
	  b1 | s1 |
	}
      }
    }
    \new Voice {
      \change Staff = "Idown"
      \xNotesOn
      \one-line {
	r1 | \repeat unfold 3 { r1 } | 
	  r8 \tuplet 3/2 { d,16[ e f]} \tuplet 3/2 { b[ a g]} r8 r2 |
	s1*5
      }
    }
  >>
}

saxIIB = {
  %\bar "||" \mark "B"
  <<
    \new Voice \relative c''' { 
      \change Staff = "IIup"
      eeh1\mp~ | 
	\repeat unfold 4 { eeh1~ | }eeh2
      eeh2~ |
	\repeat unfold 2 { eeh1~ | }
      eeh2( \repeat unfold 4 {eeh16--} eeh4)~ |
      \arrowOn eeh1\glissando | \square {eeh1^"toneless"~ } |
      <<{ \square {eeh1~ | eeh2} }{s2\< s2\> | s4. s8\!} >>
    
    }
    \new Voice \relative c' {
      \change Staff = "IIdown"
      \one-line {
	\xNotesOn
	r1 | r2 
	  \tuplet 5/4 { d16[_"key clicks" e f b a ]} g8[ r8] | 
	r1 | r2 
	  \tuplet 5/4 { d16[ e f b a ]} g8[ r8] | 
	r2 
	  \tuplet 5/4 { d16[ e f b a ]} g8[ r8] | 
	r1 | 
	  r16 d16[ e f] \tuplet 5/4 { b a g8.} r2 | 
	r1 | 
	  r16 d16[ e f] \tuplet 5/4 { b a g8.} r2 | 
	r1 | r1 |
	  r4 \tuplet 5/4 { d16[ e f b a ]} b4.\>\startTrillSpan r8\stopTrillSpan |
	r2\! 

      }
    }
  >>
  <<
    \new Voice \relative c'' {
      \change Staff = "IIup"
      r2\! | <d f eeh'>1\mp~
	^\markup {\one-three-two} |
    <d f eeh'>1\>~ | 
      <d f>4 \one-line {r2\! \square b4~ } |
      \one-line {\square { 1~ | 4~ 
	\tuplet 6/4 { \repeat unfold 5 {16 } 16~} 4~
	\repeat unfold 3 {16 } 16 |
	\repeat unfold 4 { 1~ | } 1 }}
    }
    \new Voice \relative c'' {
      \change Staff = "IIdown"
      \xNotesOn
      \one-line {
	b4\startTrillSpan\< \headless {c4 | } b4\stopTrillSpan\!-^ r2. |
	r1 | 
	  r4 \tuplet 5/4 { d,16[ e f b a ]} g4 r4 | 
	r4 b4\startTrillSpan\< \headless c4 \tuplet 5/4 { b16\stopTrillSpan a g f e } |
	\repeat unfold 2 { \tuplet 6/4 { d16\![ e f b a g]} } 
	r2 |
	s1*5 
      }
    }
  >>
}

saxIC = {
  \set Score.barNumberVisibility = #all-bar-numbers-visible
  \time 1/4
<<
  \new Voice \relative c' { 
    \change Staff = "Idown"
    \override Staff.BarLine.hair-thickness = #-1
    \override FrameBracket.no-bracket = ##t
    %\once \override FrameBracket.text = \markup "10''"
    \stemless { \frameStart b16-.^\markup { \seven-beamed}
      c-. d-. dis-. e-. fis-. \frameEnd g-. } s s4 s2. | 
      s1 | \frameExtenderEnd \explicit-harmonic {fis'4} b,,1\harmonic\ff\> |

    \stemless { \frameStart b16-.\!^\markup { \eight-beamed }
      c-. d-. dis-. e-. fis-. g \frameEnd ais-. } s4 |
      s1 | \frameExtenderEnd cis,1\<~ | cis1\ff\harmonic\>~ | 
    <<{cis2} | 
    {s4. \one-line \square { s8
      r2\! | b'1\<~ | b1\> | r1\! |
    }}>>
  }
  \new Voice \relative c'' {
    \change Staff = "Iup"
    \override Staff.BarLine.hair-thickness = #2.0
    \override Staff.BarLine.allow-span-bar = ##f
    \stemUp
    \override Stem.length = #10
    { \one-line {
      s2.
      \slap g8 s8 |
      s2. s8 \slap g8 |
      s1 |
      s2. \slap g8 s8 |
      s4 \slap g8 s8 
      s2. s8 s8 |
      s2. \slap g8 s8 |
      s1 | s1 | s1 | s1 | s2.
    } }
  }
>>
}


saxIIC = {
  \mark #3
  \break
  \newSpacingSection
  \override Score.SpacingSpanner.strict-note-spacing = ##t
  \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
  \override Score.SpacingSpanner.spacing-increment = #2
<<
  \new Voice \relative c' {
    \change Staff = "IIdown"
    \override Staff.BarLine.hair-thickness = #-1
    \override FrameBracket.no-bracket = ##t
    r2 \stemless { \frameStart d16-.^\markup { \five-beamed }
      e-. f-. fis-. \frameEnd ais-. } s8. | s2 s2 \frameExtenderEnd
    \stemless { \frameStart c,16-.^\markup { \seven-beamed }
      d-. e-. f-. fis-. g-. \frameEnd ais-.} s | s2 \frameExtenderEnd
    \stemless { \frameStart c,16\harmonic^\markup { \seven-beamed }
      d\harmonic e\harmonic f\harmonic fis\harmonic g\harmonic 
      \frameEnd ais\harmonic s } s4 s2 | \frameExtenderEnd
    \stemless { \frameStart f16\>^\markup { \nine-beamed }
      fis g a ais b c cis \frameEnd d } s8. s2. | s2 \frameExtenderEnd
    \stemless \square { \frameStart c,16\!^\markup { \seven-beamed }
      d e f fis g \frameEnd ais } s s4 | s2 \frameExtenderEnd
    \xNotesOn \stemless { \frameStart d,16^\markup { \six-beamed }
      e f g a \frameEnd b } s s s4 | s2 \frameExtenderEnd \xNotesOff
    \stemless \square { \frameStart d,16^\markup { \five-beamed }
      e f g \frameEnd a } s s s s4 | s4 \frameExtenderEnd | 
    \one-line \square { <<{b2~ b1}{s1\> s4. s8\!}>> } |
  }
  \new Voice \relative c'' {
    \change Staff = "IIup"
    \override Staff.BarLine.hair-thickness = #2.0
    \override Staff.BarLine.allow-span-bar = ##f
    \stemUp
    \override Stem.length = #10
    { \one-line {
      s2.
      ^\markup {\null \raise #10 { \center-column {
		    \line {"play pitches within boxes"}
		    \line {"at the specified rhythm"}
		    \line {"in any order"}
		  }}} s8 \slap g8 |
      s2. \slap g8 s8 |
      s2. \slap g8 s8 |
      s2. \slap g8 s8 |
      s2. \slap g8 s8 |
      s2. s8   s8 |
      s2. \slap g8 s8 |
      s2. s8   s8 |
      s2. \slap g8 s8 |
      s4 s8 s8 s1 s2.
    } }
  }
>>
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score {<<

  \pointAndClickOff
  \new StaffGroup \with {
    \numericTimeSignature
    instrumentName = "Alto Saxophone I"
    shortInstrumentName = "I "
  }<<
    \new Staff = "Iup" \with {
    }{
      \saxIA
      \saxIB
      \saxIC
      %\saxIX
    }
    \new Staff = "Idown" {
     s1 * 26
    }
  >>
  \new StaffGroup \with {
    \numericTimeSignature
    instrumentName = "Alto Saxophone II"
    shortInstrumentName= "II "
  }<<
    \new Staff = "IIup" \with {
    }{
      \saxIIA
      \saxIIB
      \saxIIC
      \bar "|."
      %\saxIIX
    }
    \new Staff = "IIdown" {
      s1 * 26
    }
  >>
>>}

\layout {
  %ragged-right = ##t
  indent = 1.2\in

  \context {
    \Global
    \grobdescriptions #all-grob-descriptions
  }
  \context {
    \Score
    %\remove "Bar_number_engraver"
    proportionalNotationDuration = #(ly:make-moment 1 8)
    %\override SpacingSpanner #'uniform-stretching = ##t
    \override StaffGrouper.staffgroup-staff-spacing =
      #`((basic-distance . 19)
         (minimum-distance . 8)
         (padding . 5))
  }
  \context {
    \Staff
    \RemoveEmptyStaves
    %\remove "Time_signature_engraver"
  }
  \context {
    \Voice
    %\override Beam.stencil = ##f
    %\override Stem.stencil = #point-stencil
    \consists \frameEngraver
  }
}
\paper {
  system-system-spacing =
    #'((basic-distance   . 32)
       (minimum-distance . 12)
       (padding		 . 4)
       (stretchability	 . 1)) 

  system-separator-markup = \slashSeparator


  #(set-paper-size "letter")
  top-margin = 0.7\in
  left-margin = 0.7\in
  right-margin = 0.7\in
  bottom-margin = 0.7\in
%{
  #(define fonts
    (set-global-fonts
      #:music "lilyboulez"
      #:brace "lilyboulez"
    )\
  )
%}
}
