%Thu, 30 May 2019 23:22:39 -0500
\version "2.18.2"

\header {
  title = "Astrocasper"
  subtitle = \markup \normal-text {\italic "for Walden" \small "MMXIX"}
  composer = "Z.V. Pine"
  tagline = ""
}%end header

\include "/home/zach/lilypond/z/frameEngraver.ily"
\include "/home/zach/lilypond/z/note.ily"
\include "/home/zach/lilypond/z/staff.ily"
\include "/home/zach/lilypond/z/square.ily"
\include "/home/zach/lilypond/z/dynamic.ily"
\include "/home/zach/lilypond/z/half-harmonic.ily"

%Definitions
#(define-markup-command (bpm layout props text) (markup?)
  "Center number over note head and add BPM text"
  (interpret-markup layout props
    #{\markup \center-align { #text \tiny "BPM"} #}))

fpp = #(make-dynamic-script (markup #:line ( 
             #:dynamic "fpp" )))

I = ^\markup {\center-align \concat {\teeny I}}
II = ^\markup {\halign #0 \concat {\teeny II}}
III = ^\markup {\halign #0 \concat {\teeny III}}
IV = ^\markup \center-align \teeny "IV"

%%%%%%%%%%%%%%%%%%%%:
%:                 %:
%:  R  a  v  e  l  %:
%:                 %:
%%%%%%%%%%%%%%%%%%%%:

snareRavel = { s1 }

vibraphoneRavel = \stemless \relative c''' {
  \override FrameBracket.no-bracket = ##t
  %hmy0
  \frameStart s8 <g aes>4:32_\markup \bpm 360 \frameEnd \hide g8 
    \no-line { s2 | %m1
  s1 | %m2
  s2.

  %hmy1
  s4 | %m3
  s1 | %m4
  s1 | %m5
  s1 | %m6
  s1 | %m7
  s1 | %m8
  s1 | %m9
  s1 | %m10
  s2
  
  %hmy2
  s2 |} \frameExtenderEnd | %m11

}%end vibraphoneRavel

violinIRavel = \relative c'' {
  %hmy0
  \square d1\fpp( | %m1
  s1 | %m2
  s2.\< 
  
  %hmy1
  r4\!) | %m3
  s2 d2\p~ | %m4
  d1( | %m5
  s1  | %m6
  s2 \stemless \hide d4) g,4\IV\harmonic\fp~ | %m7
  g1\harmonic %m8
  s1 | %m9
  s1 | %m10
  s2
  
  %hmy2
  s2 | %m11
}%end violinIRavel

violinIIRavel = \relative c'' {
  %hmy0
  \square bes1\fpp \glissando | %m1
  s1 | %m2
  s2.\<
  
  %hmy1
  bes4\p~ | %m3
  bes1 | %m4
  s1 | %m5
  \n s1\> | %m6
  s1 | %m7
  s2\! \n e2:32\<~ | %m8
  \n e1:32\ppp\> | %m9
  s1\! | %m10
  s2
  
  %hmy2
  s2 | %m11
}%end violinIIRavel

violaRavel = \relative c' {
  %hmy0
  \square d1\fpp( | %m1
  s1 | %m2
  s2. 

  %hmy1
  \n s4\> | %m3
  s1 | %m4
  s1 | %m5
  s2\!) d2\harmonic\II~ | %m6
  d1\harmonic( %m7
  d2\harmonic) \glissando \half-harmonic d2~| %m8
  \half-harmonic d1( | %m9
  \n s1\> | %m10
  s2\!) 
  
  %hmy2
  s2 | %m11
  r4 <g d'>2.\III\II~ | %m12
  <g d'>1~ | %m13
  <g d'>2.\glissando \half-harmonic <g d'>4~ | %m14
  \half-harmonic <g d'>1\glissando | %m15
  <g\harmonic d'\harmonic>1 | %m16
  s1 | %m17
  s1 | %m18
  s1 | %m19
  s4

  %hmy3
  s2. | %m20

}%end violaRavel

celloRavel = \relative c {
  %hmy0
  \square f1\IV\fpp( | %m1
  s1 | %m2
  s2. 
  
  %hm1
  s4 | %m3
  s1 | %m4
  s1 | %m5
  s2) \square f2:32\IV~ | %m6
  \square f1:32 \glissando | %m7
  f1:32\harmonic( | %m8
  s1 | %m9
  s2 \n s2\> | %m10
  s4 s4)\!
  
  %hmy2
  s2 | %m11

}%end celloRavel

timecodeRavel = { \tempo 4 = 60 
  \override Glissando.thickness = #3
  \override Glissando.bound-details.right.arrow = ##t
  \override Hairpin.to-barline = ##f
  \set Timing.defaultBarType = "'"
  \time 4/4
  \numericTimeSignature
  %hmy0
  s1 | %m1
  s1 | %m2
  s2. \bar "!"
  
  %hmy1
  s4 | %m3
  s1 | %m4
  s1 | %m5
  s1 | %m6
  s1 | %m7
  s1 | %m8
  s1 | %m9
  s1 | %m10
  s2 \bar "!" 
  \break

  %hmy2
  s2 | %m11
}

%Called by Staves in \score
snare = {
  \snareRavel
}
vibraphone = {
  \vibraphoneRavel
}
violinI = {
  \violinIRavel
}
violinII = {
  \violinIIRavel
}
viola = {
  \violaRavel
}
cello = {
  \celloRavel
}
timecode = {
  \timecodeRavel
}

\layout {
  \context {
    \Global
    \grobdescriptions #all-grob-descriptions
  }
  \context {
    \Score
      proportionalNotationDuration = #(ly:make-moment 1/2)
      \override Score.SpacingSpanner.strict-note-spacing = ##t
  }
  \context {
    \Voice
    \consists \frameEngraver
  }
}%end layout

\paper {
  #(set-paper-size "letter")
  indent = 0.6\in

  #(set! paper-alist (cons '("ipad pro" . (cons (* 220 mm) (* 305 mm))) paper-alist)) 
  #(set-paper-size "ipad pro")
  top-margin = 0.7\in
  left-margin = 0.7\in
  right-margin = 0.6\in
  bottom-margin = 0.7\in
  %
  markup-system-system-spacing = 
    #'((basic-distance   . 20)
       (minimum-distance . 10)
       (padding          . 5 )
       (stretchability   . 1 ))

  system-system-system-spacing = 
    #'((basic-distance   . 30)
       (minimum-distance . 20)
       (padding          . 4 )
       (stretchability   . 1 ))
}%end paper

\score {
<<
  \pointAndClickOff

  \new StaffGroup \with {
    instrumentName = #""
    shortInstrumentName = #""
  }<<
    \new DrumStaff \with {
      instrumentName = #"Snare"
      shortInstrumentName = #""
      \override StaffSymbol.line-count = #1
    }{
      <<\timecode \snare>>
    }%end Snare
    \new Staff \with {
      instrumentName = #"Vibraphone"
      shortInstrumentName = #""
    }{
	\clef "treble"
	<<\timecode \vibraphone>>
    }%end Vibraphone
  >>%end StaffGroup "Percussion"
  \new StaffGroup <<
    \new Staff = "vlni" \with {
      instrumentName = #"Violin I"
      shortInstrumentName = #""
    }{
      \clef "treble"
      <<\timecode \violinI>>
    }
    \new Staff = "vlnii" \with {
      instrumentName = #"Violin II"
      shortInstrumentName = #""
    }{
      \clef "treble"
      <<\timecode \violinII>>
    }
    \new Staff = "vla" \with {
      instrumentName = #"Viola"
      shortInstrumentName = #""
    }{
      \clef "alto"
      <<\timecode \viola>>
    }
    \new Staff = "vc" \with {
      instrumentName = #"Violoncello"
      shortInstrumentName = #""
    }{
      \clef "bass"
      <<\timecode \cello>>
    }
  >>
>>}%end score

