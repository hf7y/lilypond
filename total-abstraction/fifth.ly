%fifth.ly
%Created on 10 21, 2019 at 17:22

\version "2.19.83"
\include "../z/parenthesis.ily"

FIFTHtuttiA = {
  \override Staff.BarLine.bar-extent = #'(-2 . 2)
  \newSpacingSection
  \override Score.SpacingSpanner.spacing-increment = #1/2
  \tupletUp
  \set tieWaitForNote = ##t
  \override Hairpin.to-barline = ##f
  \omit Score.TimeSignature
  \set Score.defaultBarType = #""
  \set tieWaitForNote = ##t
  \override Hairpin.to-barline = ##f

  \set Staff.tempoEquationText = "="
  \override Staff.Clef.full-size-change = ##t
  \no-clef
  \autoBeamOff
}

FIFTHconductorA = {
    \hide b1
    %-\tweak HorizontalBracketText.text "8\""
      \startGroup s2 s2... \hide b16 \stopGroup
    \hide b1
    %-\tweak HorizontalBracketText.text "8\""
      \startGroup s1. s2... \hide b16 \stopGroup
    \pageBreak
}

FIFTHsiA = \relative c'' {
  \FIFTHtuttiA
  \fat-line { s2. } \no-line s4.
  \force-clef-treble
  d8 8 8 dis2 \bar ":|."
  \fat-line { s1 s1 }
  \force-clef-treble
  d8 d d d r8 \bar ":|."
  \fat-line { s4. | s1 }
}
FIFTHsiALyrics = \lyricmode {
  \once \override LyricText.self-alignment-X = #1
  \markup \italic solfeggio
}

FIFTHsiiA = \relative c'' {
  \FIFTHtuttiA
  \fat-line { s1 | s2. } \no-line s4
  \force-clef-treble
  \tuplet 3/2 { d8 8 8 } dis2 \bar ":|."
  \fat-line { s4 | s1 }
  \force-clef-treble
  r4 \tuplet 3/2 { r8 d d } \tuplet 3/2 { r8 d d } \bar ":|."
  \fat-line { s4 | s1  }
}
FIFTHsiiALyrics = \lyricmode {
  \once \override LyricText.self-alignment-X = #1
  \markup \italic solfeggio
}

FIFTHaiA = \relative c' {
  \FIFTHtuttiA
  \fat-line { s1 } \no-line { s2 s8 }
  \force-clef-treble
  d8 8 8 | dis2 s2 \bar ":|."
  \fat-line { s1 s2 }
  \force-clef-treble
  r8 d d d \bar ":|."
  \fat-line { s1 }
}
FIFTHaiALyrics = \lyricmode {
  \once \override LyricText.self-alignment-X = #1
  \markup \italic solfeggio
}

FIFTHaiiA = \relative c' {
  \FIFTHtuttiA
  \fat-line { s1 | s1 } \no-line { s2 s8 }
  \force-clef-treble
  r4. | dis8 dis dis \bar ":|."
  \fat-line { s8 s2 | s1 | s1 }
}
FIFTHaiiALyrics = \lyricmode {
  \once \override LyricText.self-alignment-X = #1
  \markup \italic solfeggio
}

FIFTHtiA = \relative c' {
  \FIFTHtuttiA
  \fat-line { s1 \n s1\> } \no-line { s1\! s1 }
  \force-clef-tenor
  \n des1^\<\longfermata \n s2..^\> \no-line s8\!

}
FIFTHtiALyrics = \lyricmode {
  \once \override LyricText.self-alignment-X = #1
  \markup \italic solfeggio
}

FIFTHtiiA = \relative c' {
  \FIFTHtuttiA
  \fat-line { s1 | s1 | } \no-line {s2 s8 }
  \force-clef-tenor
  d8 d d | r4. \bar ":|." 
  \fat-line { s8 s2 | s1 | s1 }
}
FIFTHtiiALyrics = \lyricmode {
  \once \override LyricText.self-alignment-X = #1
  \markup \italic solfeggio
}

FIFTHbiA = \relative c {
  \FIFTHtuttiA
  \fat-line { s1 | s2. } \no-line { s4 | s4 }
  \force-clef-bass
  d4 d d | dis1 \bar ":|."
  \fat-line { s2 }
  \force-clef-bass
  r4 es | \no-acc dis dis \bar ":|."
  \fat-line { s2 }
}
FIFTHbiALyrics = \lyricmode {
  \once \override LyricText.self-alignment-X = #1
  \markup \italic solfeggio
}

FIFTHbiiA = \relative c {
  \FIFTHtuttiA
  \fat-line { s1 \n s1\> } \no-line { s1\! s1 }
  \force-clef-bass
  \n des1^\>\shortfermata \no-line s1 \!
}
FIFTHbiiALyrics = \lyricmode {
  \once \override LyricText.self-alignment-X = #1
  \markup \italic solfeggio
}


FIFTHtuttiB = {
  \set tieWaitForNote = ##t
  \override Hairpin.to-barline = ##t
  \omit Score.TimeSignature
  \set Score.defaultBarType = #""
  \set tieWaitForNote = ##t

  \set Staff.tempoEquationText = "="
  \override Staff.Clef.full-size-change = ##t
  \no-clef
  \autoBeamOff
}

FIFTHconductorB = {
    \hide b1
    %-\tweak HorizontalBracketText.text "8\""
      \startGroup s1 s1 s2... \hide b16 \stopGroup
    \newSpacingSection
    \override Score.SpacingSpanner.spacing-increment = #1
    \hide b1
    %-\tweak HorizontalBracketText.text "8\""
      \startGroup s1 s1 s2... \hide b16 \stopGroup
    \pageBreak
}

FIFTHsiB = \relative c'' {
  \FIFTHtuttiB
  \fat-line s1 
  \override ParenthesesItem.font-size = #10
  \force-clef-treble \stemless \parenthesize dis4
  \fat-line { s2. | s1 | \n s1^\> }
  \fat-line { \bar ".|:" \n s1^\< | \n s1^\> \bar ":|." s1\! | s1 }
}
FIFTHsiBLyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1
}

FIFTHsiiB = \relative c'' {
  \FIFTHtuttiB
  \fat-line { s1 | s4 } 
  \override ParenthesesItem.font-size = #10
  \force-clef-treble \stemless \parenthesize dis4
  \fat-line { s2 | s1 \n s1^\> }
  \fat-line { \bar ".|:" \n s1^\< | \n s1^\> \bar ":|." s1\! | s1 }
}
FIFTHsiiBLyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1
}

FIFTHaiB = \relative c' {
  \FIFTHtuttiB
  \fat-line { s1 | s2 } 
  \override ParenthesesItem.font-size = #10
  \force-clef-treble \stemless \parenthesize dis4
  \fat-line { s4 | s1 \n s1^\> }
  \fat-line { \bar ".|:" \n s1^\< | \n s1^\> \bar ":|." s1\! | s1 }
}
FIFTHaiBLyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1
}

FIFTHaiiB = \relative c' {
  \FIFTHtuttiB
  \fat-line { s2 s8 }
  \force-clef-treble
  dis8 8 8 | r4 \bar ":|."
  \fat-line s2.|
  \override ParenthesesItem.font-size = #10
  \force-clef-treble \stemless \parenthesize es!4
  \fat-line { s2. | s1 } 
  \fat-line { \n s1^\> \bar ".|:" \n s1^\< | \n s1^\> \bar ":|." s1\! }
}
FIFTHaiiBLyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1
}

FIFTHtiB = \relative c' {
  \FIFTHtuttiB
  \no-line { s1 | s4 }
  \force-clef-tenor
  \tuplet 3/2 { r8 dis8 8 } \tuplet 3/2 { 8 8 8 } \bar ":|."
  \fat-line { s4 | s1 | \n s1^\> }
  \fat-line { \bar ".|:" \n s1^\< | \n s1^\> \bar ":|." s1\! | s1 }
}
FIFTHtiBLyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1
}

FIFTHtiiB = \relative c' {
  \FIFTHtuttiB
  \fat-line s1 
  \force-clef-tenor
  es8 8 8 r4 \bar ":|."
  \fat-line s4. |
  \fat-line { s1 s1 }
  \fat-line { \n s1^\> \bar ".|:" \n s1^\< | \n s1^\> \bar ":|." s1\! }
}
FIFTHtiiBLyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1
}

FIFTHbiB = \relative c {
  \FIFTHtuttiB
  \fat-line { s1 | s4 } 
  \override ParenthesesItem.font-size = #10
  \force-clef-bass \stemless \parenthesize es!4
  \fat-line { s2 | s1 | s1 }
  \fat-line { \n s1^\> \bar ".|:" \n s1^\< | \n s1^\> \bar ":|." s1\! }
}
FIFTHbiBLyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1
}

FIFTHbiiB = \relative c {
  \FIFTHtuttiB
  \no-line s2. 
  \force-clef-bass 
  es8 8 | 8 8 r4 \bar ":|."
  \fat-line s2|
  \fat-line { s1 s1 }
  \fat-line { \n s1^\> \bar ".|:" \n s1^\< | \n s1^\> \bar ":|." s1\! }
}
FIFTHbiiBLyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1
}

%consolidated voices
FIFTHconductor = {
  \FIFTHconductorA
  \FIFTHconductorB
}
FIFTHsi = {
  \FIFTHsiA
  \FIFTHsiB
}
FIFTHsii = {
  \FIFTHsiiA
  \FIFTHsiiB
}
FIFTHai = {
  \FIFTHaiA
  \FIFTHaiB
}
FIFTHaii = {
  \FIFTHaiiA
  \FIFTHaiiB
}
FIFTHti = {
  \FIFTHtiA
  \FIFTHtiB
}
FIFTHtii = {
  \FIFTHtiiA
  \FIFTHtiiB
}
FIFTHbi = {
  \FIFTHbiA
  \FIFTHbiB
}
FIFTHbii = {
  \FIFTHbiiA
  \FIFTHbiiB
}
FIFTHsiLyrics = { 
  \FIFTHsiALyrics
  \FIFTHsiBLyrics
}
FIFTHsiiLyrics = { 
  \FIFTHsiiALyrics 
  \FIFTHsiiBLyrics 
}
FIFTHaiLyrics = { 
  \FIFTHaiALyrics 
  \FIFTHaiBLyrics 
}
FIFTHaiiLyrics = {
  \FIFTHaiiALyrics 
  \FIFTHaiiBLyrics 
}
FIFTHtiLyrics = {
  \FIFTHtiALyrics 
  \FIFTHtiBLyrics 
} 
FIFTHtiiLyrics = {
  \FIFTHtiiALyrics 
  \FIFTHtiiBLyrics 
}
FIFTHbiLyrics = {
  \FIFTHbiALyrics 
  \FIFTHbiBLyrics 
}
FIFTHbiiLyrics = {
  \FIFTHbiiALyrics 
  \FIFTHbiiBLyrics 
}

FIFTHscore = \score {
  \pointAndClickOff
  <<
    %\new StaffGroup <<
      \new Staff = "conductor" \with {
        \omit Clef
        \override StaffSymbol.stencil = ##f
        \override StaffSymbol.line-count = #0
        \override HorizontalBracket.direction = #1
        \override HorizontalBracket.Y-offset = #-5
        \RemoveAllEmptyStaves
      }{
        \override Stem.length = #0
        \override Flag.stencil = ##f
        \FIFTHconductor
      }
      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \FIFTHsiDynamics }
      \new Staff = "si" \with {
        instrumentName = "S"
        shortInstrumentName = "S"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
      }\new Voice = "si" {
        \clef "treble"
        \FIFTHsi
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }

      \lyricsto "si"
      { \FIFTHsiLyrics }

      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \FIFTHsiiDynamics }
      \new Staff = "sii" \with {
        instrumentName = "S"
        shortInstrumentName = "S"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
        %\RemoveAllEmptyStaves
      }\new Voice = "sii" {
        \clef "treble"
        \FIFTHsii
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-unrelatedstaff-spacing.basic-distance = #0
      }
      \lyricsto "sii"
      { \FIFTHsiiLyrics }

      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \FIFTHaiDynamics }
      \new Staff = "ai" \with {
        instrumentName = "A"
        shortInstrumentName = "A"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
      }\new Voice = "ai" {
        \clef "treble"
        \FIFTHai
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }
      \lyricsto "ai"
      { \FIFTHaiLyrics }

      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \FIFTHaiiDynamics }
      \new Staff = "aii" \with {
        instrumentName = "A"
        shortInstrumentName = "A"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
        %\RemoveAllEmptyStaves
      }\new Voice = "aii" {
        \clef "treble"
        \FIFTHaii
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }
      \lyricsto "aii"
      { \FIFTHaiiLyrics }

      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \FIFTHtiDynamics }
      \new Staff = "ti" \with {
        instrumentName = "T"
        shortInstrumentName = "T"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
        %\RemoveAllEmptyStaves
      }\new Voice = "ti" {
        \clef "treble_8"
        \FIFTHti
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }
      \lyricsto "ti"
      { \FIFTHtiLyrics }

      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \FIFTHtiiDynamics }
      \new Staff = "tii" \with {
        instrumentName = "T"
        shortInstrumentName = "T"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
        %\RemoveAllEmptyStaves
      }\new Voice = "tii" {
        \clef "treble_8"
        \FIFTHtii
      }
      \new Lyrics \with {

        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }
      \lyricsto "tii"
      { \FIFTHtiiLyrics }
      
      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \FIFTHbiDynamics }
      \new Staff = "bi" \with {
        instrumentName = "B"
        shortInstrumentName = "B"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
      }\new Voice = "bi" {
        \clef "bass"
        \FIFTHbi
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }
      \lyricsto "bi"
      { \FIFTHbiLyrics }

      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \FIFTHbiiDynamics }
      \new Staff = "bii" \with {
        instrumentName = "B"
        shortInstrumentName = "B"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
        %\RemoveAllEmptyStaves
      }\new Voice = "bii" {
        \clef "bass"
        \FIFTHbii
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }
      \lyricsto "bii"
      { \FIFTHbiiLyrics }
    %>>
  >>
}
