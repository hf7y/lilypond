%finale.ly
%Created on 10 21, 2019 at 17:22

\version "2.19.83"

FINALEtuttiA = {
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

FINALEconductorA = {
    \hide b1
    %-\tweak HorizontalBracketText.text "8\""
      \startGroup s1 s1 s2... \hide b16 \stopGroup
    \pageBreak
}

FINALEsiADynamics = {
  s1 s1 s1 s1
}
FINALEsiA = \relative c'' {
  \FINALEtuttiA
  s1 s1 s1 s1
}
FINALEsiALyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1
}

FINALEsiiADynamics = {
  s1 s1 s1 s1
}
FINALEsiiA = \relative c'' {
  \FINALEtuttiA
  s1 s1 s1 s1
}
FINALEsiiALyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1
}

FINALEaiADynamics = {
  s1 s1 s1 s1
}
FINALEaiA = \relative c' {
  \FINALEtuttiA
  s1 s1 s1 s1
}
FINALEaiALyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1
}

FINALEaiiADynamics = {
  s1 s1 s1 s1
}
FINALEaiiA = \relative c' {
  \FINALEtuttiA
  s1 s1 s1 s1
}
FINALEaiiALyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1
}

FINALEtiADynamics = {
  s1 s1 s1 s1
}
FINALEtiA = \relative c' {
  \FINALEtuttiA
  s1 s1 s1 s1
}
FINALEtiALyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1
}

FINALEtiiADynamics = {
  s1 s1 s1 s1
}
FINALEtiiA = \relative c' {
  \FINALEtuttiA
  s1 s1 s1 s1
}
FINALEtiiALyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1
}

FINALEbiADynamics = {
  s1 s1 s1 s1
}
FINALEbiA = \relative c {
  \FINALEtuttiA
  s1 s1 s1 s1
}
FINALEbiALyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1
}

FINALEbiiADynamics = {
  s1 s1 s1 s1
}
FINALEbiiA = \relative c {
  \FINALEtuttiA
  s1 s1 s1 s1
}
FINALEbiiALyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1
}

FINALEtuttiB = {
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

FINALEconductorB = {
    \hide b1
    %-\tweak HorizontalBracketText.text "8\""
      \startGroup s1 s1 s2... \hide b16 \stopGroup
}

FINALEsiBDynamics = {
  s1 s1 s1 s1
}
FINALEsiB = \relative c'' {
  \FINALEtuttiB
  s1 s1 s1 s1
}
FINALEsiBLyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1
}

FINALEsiiBDynamics = {
  s1 s1 s1 s1
}
FINALEsiiB = \relative c'' {
  \FINALEtuttiB
  s1 s1 s1 s1
}
FINALEsiiBLyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1
}

FINALEaiBDynamics = {
  s1 s1 s1 s1
}
FINALEaiB = \relative c' {
  \FINALEtuttiB
  s1 s1 s1 s1
}
FINALEaiBLyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1
}

FINALEaiiBDynamics = {
  s1 s1 s1 s1
}
FINALEaiiB = \relative c' {
  \FINALEtuttiB
  s1 s1 s1 s1
}
FINALEaiiBLyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1
}

FINALEtiBDynamics = {
  s1 s1 s1 s1
}
FINALEtiB = \relative c' {
  \FINALEtuttiB
  s1 s1 s1 s1
}
FINALEtiBLyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1
}

FINALEtiiBDynamics = {
  s1 s1 s1 s1
}
FINALEtiiB = \relative c' {
  \FINALEtuttiB
  s1 s1 s1 s1
}
FINALEtiiBLyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1
}

FINALEbiBDynamics = {
  s1 s1 s1 s1
}
FINALEbiB = \relative c {
  \FINALEtuttiB
  s1 s s1 s1
}
FINALEbiBLyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1
}

FINALEbiiBDynamics = {
  s1 s1 s1 s1
}
FINALEbiiB = \relative c {
  \FINALEtuttiB
  s1 s1 s1 s1
}
FINALEbiiBLyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1
}

%consolidated voices
FINALEconductor = {
  \FINALEconductorA
  \FINALEconductorB
}
FINALEsiDynamics = {
  \FINALEsiADynamics
  \FINALEsiBDynamics
}
FINALEsiiDynamics = {
  \FINALEsiiADynamics
  \FINALEsiiBDynamics
}
FINALEaiDynamics = {
  \FINALEaiADynamics
  \FINALEaiBDynamics
}
FINALEaiiDynamics = {
  \FINALEaiiADynamics
  \FINALEaiiBDynamics
}
FINALEtiDynamics = {
  \FINALEtiADynamics
  \FINALEtiBDynamics
}
FINALEtiiDynamics = {
  \FINALEtiiADynamics
  \FINALEtiiBDynamics
}
FINALEbiDynamics = {
  \FINALEbiADynamics
  \FINALEbiBDynamics
}
FINALEbiiDynamics = {
  \FINALEbiiADynamics
  \FINALEbiiBDynamics
}
FINALEsi = {
  \FINALEsiA
  \FINALEsiB
}
FINALEsii = {
  \FINALEsiiA
  \FINALEsiiB
}
FINALEai = {
  \FINALEaiA
  \FINALEaiB
}
FINALEaii = {
  \FINALEaiiA
  \FINALEaiiB
}
FINALEti = {
  \FINALEtiA
  \FINALEtiB
}
FINALEtii = {
  \FINALEtiiA
  \FINALEtiiB
}
FINALEbi = {
  \FINALEbiA
  \FINALEbiB
}
FINALEbii = {
  \FINALEbiiA
  \FINALEbiiB
}
FINALEsiLyrics = { 
  \FINALEsiALyrics
  \FINALEsiBLyrics
}
FINALEsiiLyrics = { 
  \FINALEsiiALyrics 
  \FINALEsiiBLyrics 
}
FINALEaiLyrics = { 
  \FINALEaiALyrics 
  \FINALEaiBLyrics 
}
FINALEaiiLyrics = {
  \FINALEaiiALyrics 
  \FINALEaiiBLyrics 
}
FINALEtiLyrics = {
  \FINALEtiALyrics 
  \FINALEtiBLyrics 
} 
FINALEtiiLyrics = {
  \FINALEtiiALyrics 
  \FINALEtiiBLyrics 
}
FINALEbiLyrics = {
  \FINALEbiALyrics 
  \FINALEbiBLyrics 
}
FINALEbiiLyrics = {
  \FINALEbiiALyrics 
  \FINALEbiiBLyrics 
}

FINALEscore = \score {
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
        \FINALEconductor
      }
      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \FINALEsiDynamics }
      \new Staff = "si" \with {
        instrumentName = "S"
        shortInstrumentName = "S"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
      }\new Voice = "si" {
        \clef "treble"
        \FINALEsi
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "si"
      { \FINALEsiLyrics }

      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \FINALEsiiDynamics }
      \new Staff = "sii" \with {
        instrumentName = "S"
        shortInstrumentName = "S"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
        %\RemoveAllEmptyStaves
      }\new Voice = "sii" {
        \clef "treble"
        \FINALEsii
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-unrelatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "sii"
      { \FINALEsiiLyrics }

      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \FINALEaiDynamics }
      \new Staff = "ai" \with {
        instrumentName = "A"
        shortInstrumentName = "A"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
      }\new Voice = "ai" {
        \clef "treble"
        \FINALEai
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "ai"
      { \FINALEaiLyrics }

      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \FINALEaiiDynamics }
      \new Staff = "aii" \with {
        instrumentName = "A"
        shortInstrumentName = "A"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
        %\RemoveAllEmptyStaves
      }\new Voice = "aii" {
        \clef "treble"
        \FINALEaii
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "aii"
      { \FINALEaiiLyrics }

      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \FINALEtiDynamics }
      \new Staff = "ti" \with {
        instrumentName = "T"
        shortInstrumentName = "T"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
        %\RemoveAllEmptyStaves
      }\new Voice = "ti" {
        \clef "treble_8"
        \FINALEti
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "ti"
      { \FINALEtiLyrics }

      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \FINALEtiiDynamics }
      \new Staff = "tii" \with {
        instrumentName = "T"
        shortInstrumentName = "T"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
        %\RemoveAllEmptyStaves
      }\new Voice = "tii" {
        \clef "treble_8"
        \FINALEtii
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "tii"
      { \FINALEtiiLyrics }
      
      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \FINALEbiDynamics }
      \new Staff = "bi" \with {
        instrumentName = "B"
        shortInstrumentName = "B"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
      }\new Voice = "bi" {
        \clef "bass"
        \FINALEbi
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "bi"
      { \FINALEbiLyrics }

      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \FINALEbiiDynamics }
      \new Staff = "bii" \with {
        instrumentName = "B"
        shortInstrumentName = "B"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
        %\RemoveAllEmptyStaves
      }\new Voice = "bii" {
        \clef "bass"
        \FINALEbii
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "bii"
      { \FINALEbiiLyrics }
    %>>
  >>
}
