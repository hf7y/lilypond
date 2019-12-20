%first.ly
%Created on 10 21, 2019 at 17:22

\version "2.19.83"

PARTtuttiA = {
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

PARTconductorA = {
    \hide b1
    %-\tweak HorizontalBracketText.text "8\""
      \startGroup s1 s1 s2... \hide b16 \stopGroup
    \pageBreak
}

PARTsiADynamics = {
  s1 s1 s1 s1
}
PARTsiA = \relative c'' {
  \PARTtuttiA
  s1 s1 s1 s1
}
PARTsiALyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1
}

PARTsiiADynamics = {
  s1 s1 s1 s1
}
PARTsiiA = \relative c'' {
  \PARTtuttiA
  s1 s1 s1 s1
}
PARTsiiALyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1
}

PARTaiADynamics = {
  s1 s1 s1 s1
}
PARTaiA = \relative c' {
  \PARTtuttiA
  s1 s1 s1 s1
}
PARTaiALyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1
}

PARTaiiADynamics = {
  s1 s1 s1 s1
}
PARTaiiA = \relative c' {
  \PARTtuttiA
  s1 s1 s1 s1
}
PARTaiiALyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1
}

PARTtiADynamics = {
  s1 s1 s1 s1
}
PARTtiA = \relative c' {
  \PARTtuttiA
  s1 s1 s1 s1
}
PARTtiALyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1
}

PARTtiiADynamics = {
  s1 s1 s1 s1
}
PARTtiiA = \relative c' {
  \PARTtuttiA
  s1 s1 s1 s1
}
PARTtiiALyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1
}

PARTbiADynamics = {
  s1 s1 s1 s1
}
PARTbiA = \relative c {
  \PARTtuttiA
  s1 s1 s1 s1
}
PARTbiALyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1
}

PARTbiiADynamics = {
  s1 s1 s1 s1
}
PARTbiiA = \relative c {
  \PARTtuttiA
  s1 s1 s1 s1
}
PARTbiiALyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1
}

PARTtuttiB = {
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

PARTconductorB = {
    \hide b1
    %-\tweak HorizontalBracketText.text "8\""
      \startGroup s1 s1 s2... \hide b16 \stopGroup
}

PARTsiBDynamics = {
  s1 s1 s1 s1
}
PARTsiB = \relative c'' {
  \PARTtuttiB
  s1 s1 s1 s1
}
PARTsiBLyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1
}

PARTsiiBDynamics = {
  s1 s1 s1 s1
}
PARTsiiB = \relative c'' {
  \PARTtuttiB
  s1 s1 s1 s1
}
PARTsiiBLyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1
}

PARTaiBDynamics = {
  s1 s1 s1 s1
}
PARTaiB = \relative c' {
  \PARTtuttiB
  s1 s1 s1 s1
}
PARTaiBLyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1
}

PARTaiiBDynamics = {
  s1 s1 s1 s1
}
PARTaiiB = \relative c' {
  \PARTtuttiB
  s1 s1 s1 s1
}
PARTaiiBLyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1
}

PARTtiBDynamics = {
  s1 s1 s1 s1
}
PARTtiB = \relative c' {
  \PARTtuttiB
  s1 s1 s1 s1
}
PARTtiBLyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1
}

PARTtiiBDynamics = {
  s1 s1 s1 s1
}
PARTtiiB = \relative c' {
  \PARTtuttiB
  s1 s1 s1 s1
}
PARTtiiBLyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1
}

PARTbiBDynamics = {
  s1 s1 s1 s1
}
PARTbiB = \relative c {
  \PARTtuttiB
  s1 s s1 s1
}
PARTbiBLyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1
}

PARTbiiBDynamics = {
  s1 s1 s1 s1
}
PARTbiiB = \relative c {
  \PARTtuttiB
  s1 s1 s1 s1
}
PARTbiiBLyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1
}

%consolidated voices
PARTconductor = {
  \PARTconductorA
  \PARTconductorB
}
PARTsiDynamics = {
  \PARTsiADynamics
  \PARTsiBDynamics
}
PARTsiiDynamics = {
  \PARTsiiADynamics
  \PARTsiiBDynamics
}
PARTaiDynamics = {
  \PARTaiADynamics
  \PARTaiBDynamics
}
PARTaiiDynamics = {
  \PARTaiiADynamics
  \PARTaiiBDynamics
}
PARTtiDynamics = {
  \PARTtiADynamics
  \PARTtiBDynamics
}
PARTtiiDynamics = {
  \PARTtiiADynamics
  \PARTtiiBDynamics
}
PARTbiDynamics = {
  \PARTbiADynamics
  \PARTbiBDynamics
}
PARTbiiDynamics = {
  \PARTbiiADynamics
  \PARTbiiBDynamics
}
PARTsi = {
  \PARTsiA
  \PARTsiB
}
PARTsii = {
  \PARTsiiA
  \PARTsiiB
}
PARTai = {
  \PARTaiA
  \PARTaiB
}
PARTaii = {
  \PARTaiiA
  \PARTaiiB
}
PARTti = {
  \PARTtiA
  \PARTtiB
}
PARTtii = {
  \PARTtiiA
  \PARTtiiB
}
PARTbi = {
  \PARTbiA
  \PARTbiB
}
PARTbii = {
  \PARTbiiA
  \PARTbiiB
}
PARTsiLyrics = { 
  \PARTsiALyrics
  \PARTsiBLyrics
}
PARTsiiLyrics = { 
  \PARTsiiALyrics 
  \PARTsiiBLyrics 
}
PARTaiLyrics = { 
  \PARTaiALyrics 
  \PARTaiBLyrics 
}
PARTaiiLyrics = {
  \PARTaiiALyrics 
  \PARTaiiBLyrics 
}
PARTtiLyrics = {
  \PARTtiALyrics 
  \PARTtiBLyrics 
} 
PARTtiiLyrics = {
  \PARTtiiALyrics 
  \PARTtiiBLyrics 
}
PARTbiLyrics = {
  \PARTbiALyrics 
  \PARTbiBLyrics 
}
PARTbiiLyrics = {
  \PARTbiiALyrics 
  \PARTbiiBLyrics 
}

PARTscore = \score {
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
        \PARTconductor
      }
      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \PARTsiDynamics }
      \new Staff = "si" \with {
        instrumentName = "S"
        shortInstrumentName = "S"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
      }\new Voice = "si" {
        \clef "treble"
        \PARTsi
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "si"
      { \PARTsiLyrics }

      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \PARTsiiDynamics }
      \new Staff = "sii" \with {
        instrumentName = "S"
        shortInstrumentName = "S"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
        %\RemoveAllEmptyStaves
      }\new Voice = "sii" {
        \clef "treble"
        \PARTsii
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-unrelatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "sii"
      { \PARTsiiLyrics }

      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \PARTaiDynamics }
      \new Staff = "ai" \with {
        instrumentName = "A"
        shortInstrumentName = "A"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
      }\new Voice = "ai" {
        \clef "treble"
        \PARTai
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "ai"
      { \PARTaiLyrics }

      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \PARTaiiDynamics }
      \new Staff = "aii" \with {
        instrumentName = "A"
        shortInstrumentName = "A"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
        %\RemoveAllEmptyStaves
      }\new Voice = "aii" {
        \clef "treble"
        \PARTaii
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "aii"
      { \PARTaiiLyrics }

      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \PARTtiDynamics }
      \new Staff = "ti" \with {
        instrumentName = "T"
        shortInstrumentName = "T"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
        %\RemoveAllEmptyStaves
      }\new Voice = "ti" {
        \clef "treble_8"
        \PARTti
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "ti"
      { \PARTtiLyrics }

      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \PARTtiiDynamics }
      \new Staff = "tii" \with {
        instrumentName = "T"
        shortInstrumentName = "T"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
        %\RemoveAllEmptyStaves
      }\new Voice = "tii" {
        \clef "treble_8"
        \PARTtii
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "tii"
      { \PARTtiiLyrics }
      
      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \PARTbiDynamics }
      \new Staff = "bi" \with {
        instrumentName = "B"
        shortInstrumentName = "B"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
      }\new Voice = "bi" {
        \clef "bass"
        \PARTbi
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "bi"
      { \PARTbiLyrics }

      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \PARTbiiDynamics }
      \new Staff = "bii" \with {
        instrumentName = "B"
        shortInstrumentName = "B"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
        %\RemoveAllEmptyStaves
      }\new Voice = "bii" {
        \clef "bass"
        \PARTbii
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "bii"
      { \PARTbiiLyrics }
    %>>
  >>
}
