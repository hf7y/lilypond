%Thu, 30 May 2019 23:22:39 -0500
\version "2.18.2"

\header {
  title = "Astrotreasurer"
  subtitle = \markup \normal-text {\italic "for Walden" \small "MMXIX"}
  composer = "Z.V. Pine"
  tagline = ""
}%end header

\include "/home/zach/lilypond/z/frameEngraver.ily"
\include "/home/zach/lilypond/z/note.ily"
\include "/home/zach/lilypond/z/staff.ily"

%Definitions
#(define-markup-command (bpm layout props text) (markup?)
  "Center number over note head and add BPM text"
  (interpret-markup layout props
    #{\markup \center-align { #text \tiny "BPM"} #}))

%%%%%%%%%%%%%%%%%%%%:
%:                 %:
%:  R  a  v  e  l  %:
%:                 %:
%%%%%%%%%%%%%%%%%%%%:

snareRavel = { s1 }

vibraphoneRavel = \stemless \relative c''' {
  \override FrameBracket.no-bracket = ##t
  \frameStart s8 <g aes>4:32_\markup \bpm 360 \frameEnd \hide g8 \no-line { s2 | %m1
  s1 } \frameExtenderEnd | %m2
}%end vibraphoneRavel

violinIRavel = \relative c'' {
  d1 | %m1
}%end violinIRavel

violinIIRavel = \relative c'' {
  b1 | %m1
}%end violinIIRavel

violaRavel = \relative c'' {
  g1 | %m1
}%end violaRavel

celloRavel = \relative c {
  c1 | %m1
}%end celloRavel

timecodeRavel = { \tempo 4 = 60 }

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
      proportionalNotationDuration = #(ly:make-moment 1/1)
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

