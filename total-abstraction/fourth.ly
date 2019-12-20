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
    \hide b2
    %-\tweak HorizontalBracketText.text "8\""
      \startGroup s2... \hide b16 \stopGroup
    \hide b1
    %-\tweak HorizontalBracketText.text "8\""
      \startGroup s2 s2... \hide b16 \stopGroup
    \pageBreak
}

FOURTHsiADynamics = {
  s1 s1 s1 s1
}
FOURTHsiA = \relative c'' {
  \FOURTHtuttiA
  \force-clef-treble
  \n g1*1/2^\mp^\> s4.. s16\! \bar ":|."  
  \fat-line { s4 \stemUp \stemless \clicks f'4:16 s2 | s1 | s2 }
  \force-clef-treble
  \stemless \parenthesize fis,4 \fat-line s4
}
FOURTHsiALyrics = \lyricmode {
  \markup {\box a}1 \skip 1 \skip 1 \skip 1
}

FOURTHsiiADynamics = {
  s1 s1 s1 s1
}
FOURTHsiiA = \relative c'' {
  \FOURTHtuttiA
  \fat-line s4.
  \bar ".|:" \no-line {s4. s4 s1 s2.} \bar ":|."
  \fat-line { s4 \stemUp \stemless \clicks f4:16 s2.}
}
FOURTHsiiALyrics = \lyricmode {
  \skip 4. 
  \once \override LyricText.self-alignment-X = #LEFT
    \markup \column {
      {"Nor the tortured line, distorted and humiliating"}
      {"Not the accurate eye, all fingers"}
      {"Nor the wild eye of dream, winking"}}4. \skip 4
  \skip 1 \skip 1 \skip  1
}

FOURTHaiADynamics = {
  s1 s1 s1 s1
}
FOURTHaiA = \relative c' {
  \FOURTHtuttiA
  \force-clef-treble
  \n c1*1/2^\mp^\> s4.. s16\! \bar ":|."  
  \fat-line { s4 \stemUp \stemless \clicks f'4:16 s2 | s1 | s2 }
  \force-clef-treble
  \stemless \parenthesize cis,4 \fat-line s4
}
FOURTHaiALyrics = \lyricmode {
  \markup {\box a}1 \skip 1 \skip 1 \skip 1
}

FOURTHaiiADynamics = {
  s1 s1 s1 s1
}
FOURTHaiiA = \relative c' {
  \FOURTHtuttiA
  \fat-line { \n s1^\> } 
  \bar ".|:" \no-line { s1\! s1 s2.} \bar ":|."
  \fat-line s4
}
FOURTHaiiALyrics = \lyricmode {
  \skip 1 \skip 4
  \once \override LyricText.self-alignment-X = #LEFT
    \markup \column {
      {"Nor the tortured line, distorted and humiliating"}
      {"Not the accurate eye, all fingers"}
      {"Nor the wild eye of dream, winking"}}2.
  \skip 1 \skip 1
}

FOURTHtiADynamics = {
  s1 s1 s1 s1
}
FOURTHtiA = \relative c' {
  \FOURTHtuttiA
  \fat-line s4.
  \bar ".|:" \no-line {s4. s4 s1 s2} \bar ":|."
  \fat-line { s4 \stemUp \stemless \clicks f4:16 s1}
}
FOURTHtiALyrics = \lyricmode {
  \skip 4. 
  \once \override LyricText.self-alignment-X = #LEFT
    \markup \column {
      {"Not space cutting nor space building"}
      {"Not construction nor fauvist destruction"}
      {"Not the pure line, straight and narrow"} }4. \skip 4
  \skip 1 \skip 1 \skip  1
}

FOURTHtiiADynamics = {
  s1 s1 s1 s1
}
FOURTHtiiA = \relative c {
  \FOURTHtuttiA
  \fat-line { \n s2.^\> }
  \force-clef-tenor
  \bar ".|:" \n f1*1/2^\mp^\> s4.. s16\! \bar ":|."  
  \fat-line { s4 \stemUp \stemless \clicks f'4:16 s2 s1 s4 }
}
FOURTHtiiALyrics = \lyricmode {
  \skip 2. \markup {\box a}1 \skip 4 \skip 1 \skip 1
}

FOURTHbiADynamics = {
  s1 s1 s1 s1
}
FOURTHbiA = \relative c {
  \FOURTHtuttiA
  \fat-line { \n s1^\> } 
  \bar ".|:" \no-line { s1\! s1 s2} \bar ":|."
  \fat-line { s4 \stemUp \stemless \clicks a'4:16 }
}
FOURTHbiALyrics = \lyricmode {
  \skip 1 \skip 4
  \once \override LyricText.self-alignment-X = #LEFT
    \markup \column {
      {"Not space cutting nor space building"}
      {"Not construction nor fauvist destruction"}
      {"Not the pure line, straight and narrow"} }2.
  \skip 1 \skip 1
}

FOURTHbiiADynamics = {
  s1 s1 s1 s1
}
FOURTHbiiA = \relative c {
  \FOURTHtuttiA
  \fat-line { \n s2.^\> }
  \force-clef-bass
  \bar ".|:" \n bes1*1/2^\mp^\> s4.. s16\! \bar ":|."  
  \fat-line { s4 \stemUp \stemless \clicks a'4:16 s2 s1 s4 }
}
FOURTHbiiALyrics = \lyricmode {
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
    \hide b1
    %-\tweak HorizontalBracketText.text "8\""
      \startGroup s2... \hide b16 \stopGroup
    \hide b1
    %-\tweak HorizontalBracketText.text "8\""
      \startGroup s2... \hide b16 \stopGroup
}

FOURTHsiBDynamics = {
  s1 s1 s1 s1
}
FOURTHsiB = \relative c'' {
  \FOURTHtuttiB
  \fat-line { s2. \stemUp \stemless \clicks f4:8 s2. }
  \force-clef-treble \stemless \parenthesize a,4
  \fat-line { s4 \stemless \clicks f'4:16 s2 }
  \fat-line { \stemless \clicks f4:32 s4 \stemless \clicks 4:64 }
  \force-clef-treble \stemless \parenthesize cis4
}
FOURTHsiBLyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1
}

FOURTHsiiBDynamics = {
  s1 s1 s1 s1
}
FOURTHsiiB = \relative c'' {
  \FOURTHtuttiB
  \fat-line { s1 \stemUp \stemless \clicks f4:8 s2. }
  \fat-line { s2 \stemless \clicks f4:16 s4 }
  \fat-line { \stemless \clicks f4:32 s4 \stemless \clicks 4:64 s4 }
}
FOURTHsiiBLyrics = \lyricmode {
  \skip 2 \markup \italic "gradually to whisper"2 \skip 1 \skip 2
  \markup \box "s"2 \skip 1 
}

FOURTHaiBDynamics = {
  s1 s1 s1 s1
}
FOURTHaiB = \relative c' {
  \FOURTHtuttiB
  \fat-line { s2 \stemUp \stemless \clicks f'4:8 s4 s1 }
  \fat-line { s4 \stemless \clicks f4:16 s2 }
  \fat-line { \stemless \clicks f4:32 }
  \force-clef-treble \stemless \parenthesize d,4
  \fat-line { \stemless \clicks f'4:64 s4 }
}
FOURTHaiBLyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1
}

FOURTHaiiBDynamics = {
  s1 s1 s1 s1
}
FOURTHaiiB = \relative c' {
  \FOURTHtuttiB
  \fat-line { s4 \stemUp \stemless \clicks f'4:8 s2 }
  \fat-line { s1 \stemless \clicks f4:16 s2. }
  \fat-line { \stemless \clicks f4:32 s4 \stemless \clicks 4:64 s4 }
}
FOURTHaiiBLyrics = \lyricmode {
  \skip 1 \markup \italic "gradually to whisper"1 
  \markup \box "s"1 \skip 1 
}

FOURTHtiBDynamics = {
  s1 s1 s1 s1
}
FOURTHtiB = \relative c' {
  \FOURTHtuttiB
  \fat-line { s1 s2 \stemUp \stemless \clicks f4:8 s4 }
  \fat-line { s2. \stemless \clicks f4:16 }
  \fat-line { \stemless \clicks f4:32 s4 \stemless \clicks 4:64 s4 }
}
FOURTHtiBLyrics = \lyricmode {
  \skip 2 \markup \italic "gradually to whisper"2 \skip 1 \skip 2.
  \markup \box "s"4 \skip 1
}

FOURTHtiiBDynamics = {
  s1 s1 s1 s1
}
FOURTHtiiB = \relative c' {
  \FOURTHtuttiB
  \fat-line s2 
  \force-clef-tenor \stemless \parenthesize g4
  \fat-line s4
  \fat-line { s4 \stemUp \stemless \clicks f'4:8 }
  \fat-line s2
  \force-clef-tenor \stemless \parenthesize d4
  \fat-line s4
  \fat-line { \stemless \clicks f4:16 s4 }
  \fat-line { \stemless \clicks f4:32 s4 \stemless \clicks 4:64 s4 }
}
FOURTHtiiBLyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1
}

FOURTHbiBDynamics = {
  s1 s1 s1 s1
}
FOURTHbiB = \relative c {
  \FOURTHtuttiB
  \fat-line { s1 s2. \stemUp \stemless \clicks a'4:8 }
  \fat-line { s4 \stemless \clicks a4:16 s2}
  \fat-line { \stemless \clicks f4:32 s4 \stemless \clicks 4:64 s4 }
}
FOURTHbiBLyrics = \lyricmode {
  \skip 1 \markup \italic "gradually to whisper"1
  \skip 4 \markup \box "s"2. \skip 1 
}

FOURTHbiiBDynamics = {
  s1 s1 s1 s1
}
FOURTHbiiB = \relative c {
  \FOURTHtuttiB
  \fat-line s2 
  \force-clef-bass \stemless \parenthesize b!4
  \fat-line s4
  \fat-line { \stemUp \stemless \clicks a'4:8 s4 }
  \fat-line s2
  \force-clef-bass \stemless \parenthesize cis,4
  \fat-line s4
  \fat-line { \stemless \clicks a'4:16 s4 }
  \fat-line { \stemless \clicks a4:32 }
  \force-clef-bass \stemless \parenthesize d,4
  \fat-line { \stemless \clicks a'4:64 s4 }
}
FOURTHbiiBLyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1
}

%consolidated voices
FOURTHconductor = {
  \FOURTHconductorA
  \FOURTHconductorB
}
FOURTHsiDynamics = {
  \FOURTHsiADynamics
  \FOURTHsiBDynamics
}
FOURTHsiiDynamics = {
  \FOURTHsiiADynamics
  \FOURTHsiiBDynamics
}
FOURTHaiDynamics = {
  \FOURTHaiADynamics
  \FOURTHaiBDynamics
}
FOURTHaiiDynamics = {
  \FOURTHaiiADynamics
  \FOURTHaiiBDynamics
}
FOURTHtiDynamics = {
  \FOURTHtiADynamics
  \FOURTHtiBDynamics
}
FOURTHtiiDynamics = {
  \FOURTHtiiADynamics
  \FOURTHtiiBDynamics
}
FOURTHbiDynamics = {
  \FOURTHbiADynamics
  \FOURTHbiBDynamics
}
FOURTHbiiDynamics = {
  \FOURTHbiiADynamics
  \FOURTHbiiBDynamics
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
      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \FOURTHsiDynamics }
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

      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \FOURTHsiiDynamics }
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

      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \FOURTHaiDynamics }
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

      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \FOURTHaiiDynamics }
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

      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \FOURTHtiDynamics }
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

      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \FOURTHtiiDynamics }
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
      
      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \FOURTHbiDynamics }
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

      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \FOURTHbiiDynamics }
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
