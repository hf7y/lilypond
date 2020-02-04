%first.ly
%Created on 10 21, 2019 at 17:22

\version "2.19.83"

FOURTHtuttiA = {
  \set tieWaitForNote = ##t
  \override Hairpin.to-barline = ##t
  \omit Score.TimeSignature
  \set Score.defaultBarType = #""
  \set tieWaitForNote = ##t
  \override Staff.BarLine.bar-extent = #'(-2 . 2)
  \override ParenthesesItem.font-size = #10

  \set Staff.tempoEquationText = "="
  \override Staff.Clef.full-size-change = ##t
  \no-clef
  \autoBeamOff
}

FOURTHconductorA = {
    \hide b1\stopGroup
    \hide b1
    -\tweak HorizontalBracketText.text "60\""
      \startGroup s1 s2... \hide b16 \stopGroup
    \hide b2
    -\tweak HorizontalBracketText.text "25\""
      \startGroup s4.. \hide b16 \stopGroup
    \pageBreak
}

FOURTHsiA = \relative c'' {
  \FOURTHtuttiA
  \fat-line s1
  \no-line { \stemless \clicks b4 s4 } \bar ".|:"
  \force-clef-treble
  \n g1*1/2->^\mp^\> s4.. s16\! \bar ":|."  
  \fat-line { s2 | s1 | s2 }
  \force-clef-treble
  \stemless \parenthesize fis4 \fat-line s4
}
FOURTHsiALyrics = \lyricmode {
  \skip 1
  \skip 2 \markup {\box a}2 \skip 1 \skip 1 \skip 1
}

FOURTHsiiA = \relative c'' {
  \FOURTHtuttiA
  \fat-line s1
  \no-line { \stemless \clicks b4 s4 }
  \bar ".|:" \no-line {s2 | s1 | s2 } \bar ":|."
  \fat-line { s2 | s1 }
}
FOURTHsiiALyrics = \lyricmode {
  \skip 1
  \skip 2 
  \once \override LyricText.self-alignment-X = #LEFT
    \markup \small \column {
      {"Nor the tortured line, distorted, humiliating"}
      {"Not the accurate eye, all fingers"}
      {"Nor the wild eye of dream, winking"}}2
  \skip 1 \skip 1 \skip  1
}

FOURTHaiA = \relative c' {
  \FOURTHtuttiA
  \no-line s1
  \force-clef-treble
  \n c1*1/2->^\mp^\> s4.. s16\! \bar ":|."  
  \fat-line { s1 | s1 | s2 }
  \force-clef-treble
  \stemless \parenthesize cis4 \fat-line s4
}
FOURTHaiALyrics = \lyricmode {
  \skip 1
  \markup {\box a}1 \skip 1 \skip 1 \skip 1
}

FOURTHaiiA = \relative c'' {
  \FOURTHtuttiA
  \fat-line s1
  \no-line { \stemless \clicks b4 s2. }
  \bar ".|:" \no-line { s1\! s1} \bar ":|."
  \fat-line s1
}
FOURTHaiiALyrics = \lyricmode {
  \skip 1
  \skip 1 
  \once \override LyricText.self-alignment-X = #LEFT
    \markup \small \column {
      {"Nor the tortured line, distorted, humiliating"}
      {"Not the accurate eye, all fingers"}
      {"Nor the wild eye of dream, winking"}}1
  \skip 1 \skip 1
}

FOURTHtiA = \relative c' {
  \FOURTHtuttiA
  \fat-line s1
  \no-line { \stemless \clicks b4 s4 }
  \bar ".|:" \no-line {s2 | s1 | s2 } \bar ":|."
  \fat-line { s2 | s1 }
}
FOURTHtiALyrics = \lyricmode {
  \skip 1
  \skip 2 
  \once \override LyricText.self-alignment-X = #LEFT
    \markup \small \column {
      {"Not space cutting nor space building"}
      {"Not construction nor fauvist destruction"}
      {"Not the pure line, straight and narrow"} }2
  \skip 1 \skip 1 \skip  1
}

FOURTHtiiA = \relative c' {
  \FOURTHtuttiA
  \fat-line s1
  \no-line { \stemless \clicks b4 s2 }
  \force-clef-tenor
  \bar ".|:" \n f1*1/4->^\mp^\> | s2 s8. s16\! \bar ":|."  
  \fat-line { s4 | s1 | s1 }
}
FOURTHtiiALyrics = \lyricmode {
  \skip 1
  \skip 2. \markup {\box a}1 \skip 4 \skip 1 \skip 1
}

FOURTHbiA = \relative c {
  \FOURTHtuttiA
  \fat-line s1
  \no-line { \stemless \clicks d4 s2. }
  \bar ".|:" \no-line { s1\! s1} \bar ":|."
  \fat-line s1
}
FOURTHbiALyrics = \lyricmode {
  \skip 1
  \skip 1
  \once \override LyricText.self-alignment-X = #LEFT
    \markup \small \column {
      {"Not space cutting nor space building"}
      {"Not construction nor fauvist destruction"}
      {"Not the pure line, straight and narrow"} }1
  \skip 1 \skip 1
}

FOURTHbiiA = \relative c {
  \FOURTHtuttiA
  \fat-line s1
  \no-line { \stemless \clicks d4 s2 }
  \force-clef-bass
  \bar ".|:" \n bes1*1/4->^\mp^\> | s2 s8. s16\! \bar ":|."  
  \fat-line { s4 | s1 | s1 }
}
FOURTHbiiALyrics = \lyricmode {
  \skip 1
  \skip 2. \markup {\box a}1 \skip 4 \skip 1 \skip 1
}

FOURTHtuttiB = {
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

FOURTHconductorB = {
    \newSpacingSection
    \override Score.SpacingSpanner.spacing-increment = #1
    \hide b1
    -\tweak HorizontalBracketText.text "40\""
      \startGroup s1 s2... \hide b16 \stopGroup
    \hide b1
    -\tweak HorizontalBracketText.text "30\""
      \startGroup s1 s2... \hide b16 \stopGroup
    \hide b1
    -\tweak HorizontalBracketText.text "25\""
      \startGroup s1 s2... \hide b16 \stopGroup
    \pageBreak
}

FOURTHsiB = \relative c'' {
  \FOURTHtuttiB
  \stemUp
  \fat-line { s1 | s2. \stemless \clicks f4:8 | s1 }
  \fat-line { s1 | }
    \force-clef-treble \stemless \parenthesize a,4 
    \fat-line { s2 \stemless \clicks f'4:16 | s1 }
  \fat-line { s1 | }
    \force-clef-treble \stemless \parenthesize cis4
    \fat-line { s2 \stemless \clicks f4:32 | }
    \fat-line { \stemless \clicks f4:64 s2. }
}
FOURTHsiBLyrics = \lyricmode {
  \skip 1 \skip 1 →1
  \skip 1 \markup \box "ɑ"1 →1
  \skip 1 \markup \box "ʌ"2 →2 \markup \box "z"1
}

FOURTHsiiB = \relative c'' {
  \FOURTHtuttiB
  \stemUp
  \fat-line { s1 | s2 \stemless \clicks f4:8 s4 | s1 }
  \fat-line { s1 | s2 \stemless \clicks f4:16 s4 | s1 }
  \fat-line { s1 | s2 \stemless \clicks f4:32 s4 | }
    \fat-line { \stemless \clicks f4:64 s2. }
}
FOURTHsiiBLyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1
  \skip 1 \markup \small "to whisper"1 →1
  \skip 1 \skip 1 \markup \box "s"1
}

FOURTHaiB = \relative c' {
  \FOURTHtuttiB
  \stemUp
  \fat-line { s1 | s4 \stemless \clicks f'4:8 s2 | s1 }
  \fat-line { s1 | s4 \stemless \clicks f4:16 s2 | s1 }
  \fat-line { s1 }
    \force-clef-treble \stemless \parenthesize d,4
    \fat-line { \stemless \clicks f'4:32 s2 | }
    \fat-line { \stemless \clicks f4:64 s2. }
}
FOURTHaiBLyrics = \lyricmode {
  \skip 1 \skip 1 →1
  \skip 1 \markup \box "ɑ"1 →1
  \skip 1 \markup \box "ʌ"2 →2 \markup \box "z"1
}

FOURTHaiiB = \relative c'' {
  \FOURTHtuttiB
  \stemUp
  \fat-line { s1 | \stemless \clicks f4:8 s2. | s1 }
  \fat-line { s1 | \stemless \clicks f4:16 s2. | s1 }
  \fat-line { s1 | \stemless \clicks f4:32 s2. | }
    \fat-line {\stemless \clicks s4:64 s2. }
}
FOURTHaiiBLyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1
  \skip 1 \markup \small "to whisper"1 →1
  \skip 1 \skip 1 \markup \box "s"1
}

FOURTHtiB = \relative c' {
  \FOURTHtuttiB
  \stemUp
  \fat-line { s2. \stemless \clicks f4:8 | s1 | s1 }
  \fat-line { s2. \stemless \clicks f4:16 | s1 | s1 }
  \fat-line { s2. \stemless \clicks f4:32 | s1| }
    \fat-line { \stemless \clicks 4:64 s2. }
}
FOURTHtiBLyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1
  \skip 1 \markup \small "to whisper"1 →1
  \skip 1 \skip 1 \markup \box "s"1
}

FOURTHtiiB = \relative c' {
  \FOURTHtuttiB
  \fat-line { s2 \stemUp \stemless \clicks f4:8 s4 | }
    \force-clef-tenor \stemless \parenthesize g4
    \fat-line { s2. | s1 }
  \fat-line { s2 \stemUp \stemless \clicks f4:16 s4 | }
    \force-clef-tenor \stemless \parenthesize d4
    \fat-line { s2. | s1 }
  \fat-line { s2 \stemless \clicks f4:32 s4 | s1 | }
    \fat-line { \stemless \clicks f4:64 s2. }
}
FOURTHtiiBLyrics = \lyricmode {
  \skip 1 \skip 1 →1
  \skip 1 \markup \box "ɑ"1 →1
  \skip 1 \markup \box "ʌ"2 →2 \markup \box "z"1
}

FOURTHbiB = \relative c' {
  \FOURTHtuttiB
  \stemUp
  \fat-line { s4 \stemless \clicks a4:8 s2 | s1 | s1 }
  \fat-line { s4 \stemless \clicks a4:16 s2 | s1 | s1 }
  \fat-line { s4 \stemless \clicks a4:32 s2 | s1 }
    \fat-line { \stemless \clicks a4:64 s2. }
}
FOURTHbiBLyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1
  \skip 1 \markup \small "to whisper"1 →1
  \skip 1 \skip 1 \markup \box "s"1
}

FOURTHbiiB = \relative c {
  \FOURTHtuttiB
  \stemUp 
  \fat-line { \stemless \clicks a'4:8 s2. | }
    \force-clef-bass \stemless \parenthesize b!4 
    \fat-line { s2. | s1 }
  \fat-line { \stemless \clicks a4:16 s2. | }
  \force-clef-bass \stemless \parenthesize cis,4
    \fat-line { s2. | s1 }
  \fat-line { \stemless \clicks a'4:32 s2. | }
  \force-clef-bass \stemless \parenthesize d,4
  \fat-line { s2. | \stemless \clicks a'4:64 s2. }
}
FOURTHbiiBLyrics = \lyricmode {
  \skip 1 \skip 1 →1
  \skip 1 \markup \box "ɑ"1 →1
  \skip 1 \markup \box "ʌ"2 →2 \markup \box "z"1
}

%consolidated voices
FOURTHconductor = {
  \FOURTHconductorA
  \FOURTHconductorB
}
FOURTHsi = {
  \FOURTHsiA
  \FOURTHsiB
}
FOURTHsii = {
  \FOURTHsiiA
  \FOURTHsiiB
}
FOURTHai = {
  \FOURTHaiA
  \FOURTHaiB
}
FOURTHaii = {
  \FOURTHaiiA
  \FOURTHaiiB
}
FOURTHti = {
  \FOURTHtiA
  \FOURTHtiB
}
FOURTHtii = {
  \FOURTHtiiA
  \FOURTHtiiB
}
FOURTHbi = {
  \FOURTHbiA
  \FOURTHbiB
}
FOURTHbii = {
  \FOURTHbiiA
  \FOURTHbiiB
}
FOURTHsiLyrics = { 
  \FOURTHsiALyrics
  \FOURTHsiBLyrics
}
FOURTHsiiLyrics = { 
  \FOURTHsiiALyrics 
  \FOURTHsiiBLyrics 
}
FOURTHaiLyrics = { 
  \FOURTHaiALyrics 
  \FOURTHaiBLyrics 
}
FOURTHaiiLyrics = {
  \FOURTHaiiALyrics 
  \FOURTHaiiBLyrics 
}
FOURTHtiLyrics = {
  \FOURTHtiALyrics 
  \FOURTHtiBLyrics 
} 
FOURTHtiiLyrics = {
  \FOURTHtiiALyrics 
  \FOURTHtiiBLyrics 
}
FOURTHbiLyrics = {
  \FOURTHbiALyrics 
  \FOURTHbiBLyrics 
}
FOURTHbiiLyrics = {
  \FOURTHbiiALyrics 
  \FOURTHbiiBLyrics 
}

FOURTHscore = \score {
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
        \FOURTHconductor
      }
      \new Staff = "si" \with {
        instrumentName = "S"
        shortInstrumentName = "S"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
      }\new Voice = "si" {
        \clef "treble"
        \FOURTHsi
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "si"
      { \FOURTHsiLyrics }

      \new Staff = "sii" \with {
        instrumentName = "S"
        shortInstrumentName = "S"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
        %\RemoveAllEmptyStaves
      }\new Voice = "sii" {
        \clef "treble"
        \FOURTHsii
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-unrelatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "sii"
      { \FOURTHsiiLyrics }

      \new Staff = "ai" \with {
        instrumentName = "A"
        shortInstrumentName = "A"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
      }\new Voice = "ai" {
        \clef "treble"
        \FOURTHai
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "ai"
      { \FOURTHaiLyrics }

      \new Staff = "aii" \with {
        instrumentName = "A"
        shortInstrumentName = "A"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
        %\RemoveAllEmptyStaves
      }\new Voice = "aii" {
        \clef "treble"
        \FOURTHaii
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "aii"
      { \FOURTHaiiLyrics }

      \new Staff = "ti" \with {
        instrumentName = "T"
        shortInstrumentName = "T"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
        %\RemoveAllEmptyStaves
      }\new Voice = "ti" {
        \clef "treble_8"
        \FOURTHti
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "ti"
      { \FOURTHtiLyrics }

      \new Staff = "tii" \with {
        instrumentName = "T"
        shortInstrumentName = "T"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
        %\RemoveAllEmptyStaves
      }\new Voice = "tii" {
        \clef "treble_8"
        \FOURTHtii
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "tii"
      { \FOURTHtiiLyrics }
      
      \new Staff = "bi" \with {
        instrumentName = "B"
        shortInstrumentName = "B"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
      }\new Voice = "bi" {
        \clef "bass"
        \FOURTHbi
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "bi"
      { \FOURTHbiLyrics }

      \new Staff = "bii" \with {
        instrumentName = "B"
        shortInstrumentName = "B"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
        %\RemoveAllEmptyStaves
      }\new Voice = "bii" {
        \clef "bass"
        \FOURTHbii
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "bii"
      { \FOURTHbiiLyrics }
    %>>
  >>
}
