%finale.ly
%Created on 10 21, 2019 at 17:22

\version "2.19.83"

FINALEtuttiA = {
  \set tieWaitForNote = ##t
  \omit Score.TimeSignature
  \set Score.defaultBarType = #""
  \set tieWaitForNote = ##t
  \override Hairpin.to-barline = ##t

  \set Staff.tempoEquationText = "="
  \override Staff.Clef.full-size-change = ##t
  % \no-clef
  \autoBeamOff
}

FINALEconductorA = {
    \hide b1
    %-\tweak HorizontalBracketText.text "8\""
      \startGroup s1 s1 s1 s2... \hide b16 \stopGroup
    \hide b1
      \startGroup s1 s1 s2... \hide b16 \stopGroup
    \hide b1
      \startGroup s1*4 s1 s1 s2... \hide b16 \stopGroup
}

FINALEsiA = \stemless \relative c''' {
  \FINALEtuttiA
  \n a2*2\> 
  \no-line { s1\! s1 s1 s1 }
  \no-line s1*4
  \no-line s1*4
  \no-line s1*4
  \no-line s1*4
  \no-line s1*4
  \no-line s1*4
  \no-line s1*4
  \no-line s1*4
  \no-line s1*4
  \no-line s1*4
  \no-line s1*4
  \no-line s1*4
  \no-line s1*4
}
FINALEsiALyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1
}

FINALEsiiA = \stemless \relative c' {
  \FINALEtuttiA
  es2*2 
  \bar ".|:" d2*2^\pp~ \bar ":|." \fat-line { \hide d1 s1 s1 } |
  \fat-line { s1*4 } |
  \fat-line { s1*4 } |
  \fat-line { s1*4 } |
  \fat-line { s1*4 } |
  \fat-line { s1*4 } |
  \fat-line { s1*4 } |
  \fat-line { s1*4 } |
  \fat-line { s1*4 } |
  \fat-line { s1*4 } |
  \fat-line { s1*4 } |
  \fat-line { s1*4 } |
  \fat-line { s1*4 } |
  \fat-line { s1*4 } |
}
FINALEsiiALyrics = \lyricmode {
  \skip 1 \markup \box {ɔ}1 \skip 1 \skip 1
}

FINALEaiA = \stemless \relative c'' {
  \FINALEtuttiA
  \scaleDurations 2/1 {
    a2~
    a2^\pp g4 s4 \breathe \no-line { s2 s } |
    a2 g4 s4 \breathe \no-line { s2 s} |
    a2 g fis e \breathe |
    \no-line { s s } \n a^\<~ a~ |
    a^\pp g4 s4 \breathe \no-line { s2 s } | 
    a2 b4 s4 \breathe \no-line { s2 s } | 
    a2 b fis4 s4 \breathe \no-line s2 |
    a2^\ppp g fis \breathe \no-line s2 |
    a2 g fis g |
    fis2^\pppp \breathe \no-line s fis \breathe \no-line s |
    a2 g fis g |
    fis2 \breathe \no-line s fis2 \breathe \no-line s |
    fis2 \breathe \no-line s e2~ \n e^\> |
    \no-line { s2\! s } \n d^\<~ d~ |
  }
}
FINALEaiALyrics = \lyricmode {
  \skip 1 \markup \box {ɔ}1 \skip 1 \skip 1
}

FINALEaiiA = \stemless \relative c'' {
  \FINALEtuttiA
  \scaleDurations 2/1 {
    a2~
    a2^\pp g4 s4 \breathe \no-line { s2 s } |
    a2 g4 s4 \breathe \no-line { s2 s} |
    a2 g fis e \breathe |
    \no-line { s s } \n a^\<~ a~ |
    a^\pp g4 s4 \breathe \no-line { s2 s } | 
    a2 b4 s4 \breathe \no-line { s2 s } | 
    a2 b fis4 s4 \breathe \no-line s2 |
    a2^\ppp g fis \breathe \no-line s2 |
    a2 g fis g |
    fis2^\pppp \breathe \no-line s fis \breathe \no-line s |
    a2 g fis g |
    fis2 \breathe \no-line s fis2 \breathe \no-line s |
    fis2 \breathe \no-line s e2~ \n e^\> |
    \no-line { s2\! s } \n d^\<~ d~ |
  }
}
FINALEaiiALyrics = \stemless \lyricmode {
  \skip 1 \markup \box {ɔ}1 \skip 1 \skip 1
}

FINALEtiA = \stemless \relative c' {
  \FINALEtuttiA
  \scaleDurations 2/1 {
    g2
    fis2^\pp g4 s4 \breathe \no-line { s2 s } |
    fis2 g4 s4 \breathe \no-line { s2 s } |
    fis2 e a cis \breathe |
    \no-line { s s s s } |
    fis,2 g4 s4 \breathe \no-line { s2 s } |
    fis2 g4 s4 \breathe \no-line s2 \n fis^\<~ 
    fis2^\pp g a4 s \no-line s2
    fis2^\ppp g a \no-line s
    fis g a ais |
    b \breathe \no-line s b \breathe \no-line s |
    fis2^\pppp g a ais |
    b2 \breathe \no-line s b \breathe \no-line s |
    b2 \breathe \no-line s cis2~ \n cis2^\> |
    \no-line { s2\! s } \n d^\<~ d~ | 
  }
}
FINALEtiALyrics = \lyricmode {
  \skip 1 \markup \box {ɔ}1 \skip 1 \skip 1
}

FINALEtiiA = \stemless \relative c' {
  \FINALEtuttiA
  \scaleDurations 2/1 {
    g2
    fis2^\pp g4 s4 \breathe \no-line { s2 s } |
    fis2 g4 s4 \breathe \no-line { s2 s } |
    fis2 e a cis \breathe |
    \no-line { s s s s } |
    fis,2 g4 s4 \breathe \no-line { s2 s } |
    fis2 g4 s4 \breathe \no-line s2 \n fis^\<~ 
    fis2^\pp g a4 s \no-line s2
    fis2^\ppp g a \no-line s
    fis g a ais |
    b \breathe \no-line s b \breathe \no-line s |
    fis2^\pppp g a ais |
    b2 \breathe \no-line s b \breathe \no-line s |
    b2 \breathe \no-line s cis2~ \n cis2^\> |
    \no-line { s2\! s } \n d^\<~ d~ | 
  }
}
FINALEtiiALyrics = \lyricmode {
  \skip 1 \markup \box {ɔ}1 \skip 1 \skip 1
}

FINALEbiA = \stemless \relative c' {
  \FINALEtuttiA
  es2*2
  d4^\pp~ \bar ".|:" d2*2~ \bar ":|." \fat-line { \hide d4 s2 s1 s1 } | 
  \fat-line { s1*4 } |
  \fat-line { s1*4 } |
  \fat-line { s1*4 } |
  \fat-line { s1*4 } |
  \fat-line { s1*4 } |
  \fat-line { s1*4 } |
  \fat-line { s1*4 } |
  \fat-line { s1*4 } |
  \fat-line { s1*4 } |
  \fat-line { s1*4 } |
  \fat-line { s1*4 } |
  \fat-line { s1*4 } |
  \fat-line { s1*4 } |
}
FINALEbiALyrics = \lyricmode {
  \skip 1 \markup \box {ɔ}1 \skip 1 \skip 1
}

FINALEbiiA = \stemless \relative c {
  \FINALEtuttiA
  \n g2*2\>
  \no-line { s1\! s1 s1 s1 }
  \no-line s1*4
  \no-line s1*4
  \no-line s1*4
  \no-line s1*4
  \no-line s1*4
  \no-line s1*4
  \no-line s1*4
  \no-line s1*4
  \no-line s1*4
  \no-line s1*4
  \no-line s1*4
  \no-line s1*4
  \no-line s1*4
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

FINALEsiB = \relative c'' {
  \FINALEtuttiB
  s1 s1 s1 s1
}
FINALEsiBLyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1
}

FINALEsiiB = \relative c'' {
  \FINALEtuttiB
  \fat-line { \n s1^\> s1 s1 } \no-line s1\! |
}
FINALEsiiBLyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1
}

FINALEaiB = \stemless \relative c' {
  \FINALEtuttiB
  d2~ s2 \bar ".|:" d2~ s2 \bar ":|." \fat-line { \hide d1^\pppp s1 } |
}
FINALEaiBLyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1
}

FINALEaiiB = \stemless \relative c' {
  \FINALEtuttiB
  d4~ s4 \bar ".|:" d2~ s2 \bar ":|." \fat-line { \hide d2 s1^\pppp s1 } |
}
FINALEaiiBLyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1
}

FINALEtiB = \stemless \relative c' {
  \FINALEtuttiB
  d2~ s2 \bar ".|:" d2~ s2 \bar ":|." \fat-line { \hide d1^\pppp s1 } |
}
FINALEtiBLyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1
}

FINALEtiiB = \stemless \relative c' {
  \FINALEtuttiB
  d4 s4 \bar ".|:" d2~ s2 \bar ":|." \fat-line { \hide d2 s1^\pppp s1 } |
}
FINALEtiiBLyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1
}

FINALEbiB = \relative c {
  \FINALEtuttiB
  \fat-line { \n s1^\> s1 s1 } \no-line s1\! |
}
FINALEbiBLyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1
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
