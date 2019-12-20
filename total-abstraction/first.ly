%first.ly
%Created on 10 21, 2019 at 17:22

\version "2.19.83"

FIRSTtuttiA = {
  \set tieWaitForNote = ##t
  \override Hairpin.to-barline = ##f
  \omit Score.TimeSignature
  \set Score.defaultBarType = #""
  \set tieWaitForNote = ##t
  \override Staff.BarLine.bar-extent = #'(-2 . 2)
  \override Staff.BarLine.X-offset = #-1
  \override Hairpin.to-barline = ##f

  \set Staff.tempoEquationText = "="
  \override Staff.Clef.full-size-change = ##t
  \no-clef
  \autoBeamOff

  \newSpacingSection
  \override Score.SpacingSpanner.spacing-increment = #3
}

FIRSTconductorA = {
    \hide b1
    %-\tweak HorizontalBracketText.text "8\""
      \startGroup s1 s2... \hide b16 \stopGroup
    \hide b16
    %-\tweak HorizontalBracketText.text "8\""
      \startGroup s2.. \hide b16 \stopGroup
    \pageBreak
}

FIRSTsiADynamics = {
  s1 s1 s1 s1
}
FIRSTsiA = \relative c'' {
  \FIRSTtuttiA
  \force-clef-treble
  b1^\pp\longfermata \bar ":|."
  \fat-line { s1 s1 s1 }
}
FIRSTsiALyrics = \lyricmode {
  \markup {\box hm}1 \skip 2 \skip 1
  \markup {\box n}1 \skip 2 
}

FIRSTsiiADynamics = {
  s1 s1 s1 s1
}
FIRSTsiiA = \relative c'' {
  \FIRSTtuttiA
  \no-line a1\rest\shortfermata 
  \force-clef-treble b1^\pp\longfermata \bar ":|."
  \fat-line { s1 s1 }
}
FIRSTsiiALyrics = \lyricmode {
  \skip 1 \markup {\box hm}1 \skip 1 \skip 1 
}

FIRSTaiADynamics = {
  s1 s1 s1 s1
}
FIRSTaiA = \relative c' {
  \FIRSTtuttiA
  \force-clef-treble
  e1^\pp\longfermata s2. \bar ":|."
  \fat-line { s4 s1 s1 }
}
FIRSTaiALyrics = \lyricmode {
  \markup {\box hm}1 \skip 1 \skip 1 \skip 1
}

FIRSTaiiADynamics = {
  s1 s1 s1 s1
}
FIRSTaiiA = \relative c' {
  \FIRSTtuttiA
  \force-clef-treble
  cis1^\pp\longfermata s2 \bar ":|."
  \fat-line { s2 s1 s1 }
}
FIRSTaiiALyrics = \lyricmode {
  \markup {\box hm}1 \skip 1
  \markup {\box n}2 \skip 2 \skip 1
}

FIRSTtiADynamics = {
  s1 s1 s1 s1
}
FIRSTtiA = \relative c' {
  \FIRSTtuttiA
  \no-line { a1\rest\shortfermata s2 }
  \force-clef-tenor e'1^\pp\longfermata \bar ":|."
  \fat-line { s2 s1 }
}
FIRSTtiALyrics = \lyricmode {
  \skip 1 \skip 2 
  \markup {\box hm}1 
  \skip 2 \markup {\box n}1
}

FIRSTtiiADynamics = {
  s1 s1 s1 s1
}
FIRSTtiiA = \relative c' {
  \FIRSTtuttiA
  \no-line { a1\rest\shortfermata s4 }
  \force-clef-tenor cis1^\pp\longfermata \bar ":|."
  \fat-line { s2. s1 }
}
FIRSTtiiALyrics = \lyricmode {
  \skip 1 \skip 4 
  \markup {\box hm}1 
  \skip 2. \skip 1 
}

FIRSTbiADynamics = {
  s1 s1 s1 s1
}
FIRSTbiA = \relative c {
  \FIRSTtuttiA
  \force-clef-bass
  c1^\pp\longfermata s4 \bar ":|."
  \fat-line { s2. s1 s1 }
}
FIRSTbiALyrics = \lyricmode {
  \markup {\box hm} \skip 4
  \skip 2. \skip 1 \skip 1
}

FIRSTbiiADynamics = {
  s1 s1 s1 s1
}
FIRSTbiiA = \relative c {
  \FIRSTtuttiA
  \no-line { c1\rest\shortfermata s2. }
  \force-clef-bass c1^\pp\longfermata  \bar ":|."
  \fat-line { s4 s1 }
}
FIRSTbiiALyrics = \lyricmode {
  \skip 1 \skip 2. 
  \markup {\box hm}1 
  \skip 1 \markup {\box n}4 
}

FIRSTtuttiB = {
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

FIRSTconductorB = {
    \hide b2 \startGroup s4 \hide b4 \stopGroup
    %-\tweak HorizontalBracketText.text "8\""
      
  \hide b1\startGroup s1 s2. \hide b4\stopGroup

  \newSpacingSection
  \override Score.SpacingSpanner.spacing-increment = #4

  \hide b4\startGroup s4.. \hide b16 \stopGroup
}

FIRSTsiBDynamics = {
  s1 s1 s1 s1
}
FIRSTsiB = \relative c'' {
  \FIRSTtuttiB
  \fat-line { s1 s1 s1 s1 }
  << \no-line \square b1^\<
      { s2... s16\ff} >>
}
FIRSTsiBLyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1
  \markup { \box s }4 →4 \skip 4.. \markup {\box sh}16
}

FIRSTsiiBDynamics = {
  s1 s1 s1 s1
}
FIRSTsiiB = \relative c'' {
  \FIRSTtuttiB
  \fat-line s1
  \fat-line s2
  \fat-line s1 \bar ".|:"
  \no-line <<
    \square b'1\fermata~ 
    {\n s2^\< \n s2^\p\>} >> \bar ":|."
  \fat-line s2\!
  \fat-line { s2...^\< s16\ff }
}
FIRSTsiiBLyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1
  \markup {\box n}1 
  →2... \markup {\box sh}16
}

FIRSTaiBDynamics = {
  s1 s1 s1 s1
}
FIRSTaiB = \relative c' {
  \FIRSTtuttiB
  \fat-line s2.
  \fat-line s1
  \fat-line s1 \bar ".|:"
  \no-line <<
    \square b'1\fermata~ 
    {\n s2^\< \n s2^\p\>} >> \bar ":|."
  \fat-line s4\!
  \fat-line { s2...^\< s16\ff }
}
FIRSTaiBLyrics = \lyricmode {
  \skip 2 \markup {\box n}1 
  \skip 2 \skip 1 \skip 1
  →2... \markup {\box sh}16
}

FIRSTaiiBDynamics = {
  s1 s1 s1 s1
}
FIRSTaiiB = \relative c' {
  \FIRSTtuttiB
  \fat-line s1 \bar ".|:"
  \no-line <<
    \square b'1\fermata~ 
    {\n s2^\< \n s2^\p\>} >> \bar ":|."
  \fat-line s1\!
  \fat-line s1
  \fat-line { s2...^\< s16\ff }
}
FIRSTaiiBLyrics = \lyricmode {
  \skip 1 
  \markup {\box s}1 \skip 1 \skip 1
  →2... \markup {\box sh}16
}

FIRSTtiBDynamics = {
  s1 s1 s1 s1
}
FIRSTtiB = \relative c' {
  \FIRSTtuttiB
  \fat-line s1
  \fat-line s1 \bar ".|:"
  \no-line <<
    \square b'1\fermata~ 
    {\n s2^\< \n s2^\p\>} >> \bar ":|."
  \fat-line s1\!
  \fat-line { s2...^\< s16\ff }
}
FIRSTtiBLyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1
  →2... \markup {\box sh}16
}

FIRSTtiiBDynamics = {
  s1 s1 s1 s1
}
FIRSTtiiB = \relative c' {
  \FIRSTtuttiB
  \fat-line s1
  \fat-line s1
  \fat-line s2. \bar ".|:"
  \no-line <<
    \square b'1\fermata~ 
    {\n s2^\< \n s2^\p\>} >> \bar ":|."
    \fat-line s4\!
  \fat-line { s2...^\< s16\ff }
}
FIRSTtiiBLyrics = \lyricmode {
  \skip 1 
  \skip 2 \markup {\box n}2
  \skip 1
  \markup { \box s }1
  →2... \markup {\box sh}16
}

FIRSTbiBDynamics = {
  s1 s1 s1 s1
}
FIRSTbiB = \relative c {
  \FIRSTtuttiB
  \fat-line s1. \bar ".|:"
  \no-line <<
    \square d1\fermata~ 
    {\n s2^\< \n s2^\p\>} >> \bar ":|."
  \fat-line s2\!
  \fat-line s1
  \fat-line { s2...^\< s16\ff }
}
FIRSTbiBLyrics = \lyricmode {
  \skip 2. \markup {\box n}4
  \skip 2 \markup {\box s}2 \skip 1 \skip 1
  →2... \markup {\box sh}16
}

FIRSTbiiBDynamics = {
  s1 s1 s1 s1
}
FIRSTbiiB = \relative c {
  \FIRSTtuttiB
  \fat-line { s1 s1 s1 s1 }
  << \no-line \square d1^\<
      { s2... s16\ff} >>
}
FIRSTbiiBLyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1
  \markup { \box s }4 →4 \skip 4.. \markup {\box sh}16
}

%consolidated voices
FIRSTconductor = {
  \FIRSTconductorA
  \FIRSTconductorB
}
FIRSTsiDynamics = {
  \FIRSTsiADynamics
  \FIRSTsiBDynamics
}
FIRSTsiiDynamics = {
  \FIRSTsiiADynamics
  \FIRSTsiiBDynamics
}
FIRSTaiDynamics = {
  \FIRSTaiADynamics
  \FIRSTaiBDynamics
}
FIRSTaiiDynamics = {
  \FIRSTaiiADynamics
  \FIRSTaiiBDynamics
}
FIRSTtiDynamics = {
  \FIRSTtiADynamics
  \FIRSTtiBDynamics
}
FIRSTtiiDynamics = {
  \FIRSTtiiADynamics
  \FIRSTtiiBDynamics
}
FIRSTbiDynamics = {
  \FIRSTbiADynamics
  \FIRSTbiBDynamics
}
FIRSTbiiDynamics = {
  \FIRSTbiiADynamics
  \FIRSTbiiBDynamics
}
FIRSTsi = {
  \FIRSTsiA
  \FIRSTsiB
}
FIRSTsii = {
  \FIRSTsiiA
  \FIRSTsiiB
}
FIRSTai = {
  \FIRSTaiA
  \FIRSTaiB
}
FIRSTaii = {
  \FIRSTaiiA
  \FIRSTaiiB
}
FIRSTti = {
  \FIRSTtiA
  \FIRSTtiB
}
FIRSTtii = {
  \FIRSTtiiA
  \FIRSTtiiB
}
FIRSTbi = {
  \FIRSTbiA
  \FIRSTbiB
}
FIRSTbii = {
  \FIRSTbiiA
  \FIRSTbiiB
}
FIRSTsiLyrics = { 
  \FIRSTsiALyrics
  \FIRSTsiBLyrics
}
FIRSTsiiLyrics = { 
  \FIRSTsiiALyrics 
  \FIRSTsiiBLyrics 
}
FIRSTaiLyrics = { 
  \FIRSTaiALyrics 
  \FIRSTaiBLyrics 
}
FIRSTaiiLyrics = {
  \FIRSTaiiALyrics 
  \FIRSTaiiBLyrics 
}
FIRSTtiLyrics = {
  \FIRSTtiALyrics 
  \FIRSTtiBLyrics 
} 
FIRSTtiiLyrics = {
  \FIRSTtiiALyrics 
  \FIRSTtiiBLyrics 
}
FIRSTbiLyrics = {
  \FIRSTbiALyrics 
  \FIRSTbiBLyrics 
}
FIRSTbiiLyrics = {
  \FIRSTbiiALyrics 
  \FIRSTbiiBLyrics 
}

FIRSTscore = \score {
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
        \FIRSTconductor
      }
      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \FIRSTsiDynamics }
      \new Staff = "si" \with {
        instrumentName = "S"
        shortInstrumentName = "S"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
      }\new Voice = "si" {
        \clef "treble"
        \FIRSTsi
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "si"
      { \FIRSTsiLyrics }

      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \FIRSTsiiDynamics }
      \new Staff = "sii" \with {
        instrumentName = "S"
        shortInstrumentName = "S"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
        %\RemoveAllEmptyStaves
      }\new Voice = "sii" {
        \clef "treble"
        \FIRSTsii
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-unrelatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "sii"
      { \FIRSTsiiLyrics }

      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \FIRSTaiDynamics }
      \new Staff = "ai" \with {
        instrumentName = "A"
        shortInstrumentName = "A"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
      }\new Voice = "ai" {
        \clef "treble"
        \FIRSTai
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "ai"
      { \FIRSTaiLyrics }

      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \FIRSTaiiDynamics }
      \new Staff = "aii" \with {
        instrumentName = "A"
        shortInstrumentName = "A"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
        %\RemoveAllEmptyStaves
      }\new Voice = "aii" {
        \clef "treble"
        \FIRSTaii
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "aii"
      { \FIRSTaiiLyrics }

      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \FIRSTtiDynamics }
      \new Staff = "ti" \with {
        instrumentName = "T"
        shortInstrumentName = "T"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
        %\RemoveAllEmptyStaves
      }\new Voice = "ti" {
        \clef "treble_8"
        \FIRSTti
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "ti"
      { \FIRSTtiLyrics }

      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \FIRSTtiiDynamics }
      \new Staff = "tii" \with {
        instrumentName = "T"
        shortInstrumentName = "T"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
        %\RemoveAllEmptyStaves
      }\new Voice = "tii" {
        \clef "treble_8"
        \FIRSTtii
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "tii"
      { \FIRSTtiiLyrics }
      
      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \FIRSTbiDynamics }
      \new Staff = "bi" \with {
        instrumentName = "B"
        shortInstrumentName = "B"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
      }\new Voice = "bi" {
        \clef "bass"
        \FIRSTbi
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "bi"
      { \FIRSTbiLyrics }

      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \FIRSTbiiDynamics }
      \new Staff = "bii" \with {
        instrumentName = "B"
        shortInstrumentName = "B"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
        %\RemoveAllEmptyStaves
      }\new Voice = "bii" {
        \clef "bass"
        \FIRSTbii
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "bii"
      { \FIRSTbiiLyrics }
    %>>
  >>
}
