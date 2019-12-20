%first.ly
%Created on 10 21, 2019 at 17:22

\version "2.19.83"

SECONDtuttiA = {
  \set tieWaitForNote = ##t
  \override Hairpin.to-barline = ##f
  \omit Score.TimeSignature
  \set Score.defaultBarType = #""
  \set tieWaitForNote = ##t
  \override Staff.BarLine.bar-extent = #'(-5 . 5)

  \set Staff.tempoEquationText = "="
  \override Staff.Clef.full-size-change = ##t
  \no-clef
  \autoBeamOff
}

SECONDconductorA = {
    \hide b1 \startGroup s2.. \hide b8\stopGroup
    %-\tweak HorizontalBracketText.text "8\""
    \hide b1 \startGroup s2... \hide b16 \stopGroup
    \pageBreak
}

SECONDsiADynamics = {
  s1 s1 s1 s1
}
SECONDsiA = \relative c'' {
  \SECONDtuttiA
  \no-line { \xNotesOn b4_"clap"^\ff s2. s1 } \xNotesOff
  \override Staff.BarLine.bar-extent = #'(-2 . 2)
  \bar ".|:" \force-clef-treble
    << b1*1/2\shortfermata {\n s4..^\< s16^\mf} >> \bar ":|." \fat-line s1.
}
SECONDsiALyrics = \lyricmode {
  \skip 1 \skip 1 
  \markup {\box z}1 \skip 1
}

SECONDsiiADynamics = {
  s1 s1 s1 s1
}
SECONDsiiA = \relative c'' {
  \SECONDtuttiA
  \tempo " ca. 150 WPM"
  \no-line { s1^\p s1 s2. } \bar ":|." \fat-line { s4 s1 }
}
SECONDsiiALyrics = \lyricmode {
  \once \override LyricText.self-alignment-X = #LEFT
  \markup \column {
    {"The basis of an aesthetic act is the pure idea"}
    {"But the pure idea is, of necessity, an aesthetic act"}
    {"Here then is the paradox that is the artist's problem"}} 1
  \skip 1 \skip 1 \skip 1
}

SECONDaiADynamics = {
  s1 s1 s1 s1
}
SECONDaiA = \relative c' {
  \SECONDtuttiA
  \tempo " ca. 150 WPM"
  \no-line { s1^\p s1 s2 } \bar ":|." \fat-line { s2 s1 }
}
SECONDaiALyrics = \lyricmode {
  \once \override LyricText.self-alignment-X = #LEFT
  \markup \column {
    {"The basis of an aesthetic act is the pure idea"}
    {"But the pure idea is, of necessity, an aesthetic act"}
    {"Here then is the paradox"}} 1
  \skip 1 \skip 1 \skip 1
  }

SECONDaiiADynamics = {
  s1 s1 s1 s1
}
SECONDaiiA = \relative c' {
  \SECONDtuttiA
  \tempo " ca. 90 WPM"
  \no-line { s1^\p s1 s4 } \bar ":|." \fat-line { s2. s1 }
}
SECONDaiiALyrics = \lyricmode {
  \once \override LyricText.self-alignment-X = #LEFT
  \markup \column {
    {"Not space cutting nor space building"}
    {"Not construction nor fauvist destruction"}
    {"Not the pure line, straight and narrow"} } 1
  \skip 1 \skip 1 \skip  1
}

SECONDtiADynamics = {
  s1 s1 s1 s1
}
SECONDtiA = \relative c' {
  \SECONDtuttiA
  \tempo " ca. 90 WPM"
  \no-line { s1^\p s1 s2 s8 } \bar ":|." \fat-line { s4. s1 }
}
SECONDtiALyrics = \lyricmode {
  \once \override LyricText.self-alignment-X = #LEFT
  \markup \column {
    {"Nor the tortured line, distorted and humiliating"}
    {"Not the accurate eye, all fingers"}
    {"Nor the wild eye of dream, winking"}}1
  \skip 1 \skip 1 \skip  1
}

SECONDtiiADynamics = {
  s1 s1 s1 s1
}
SECONDtiiA = \relative c' {
  \SECONDtuttiA
  \tempo " ca. 60 WPM"
  \no-line { s1^\p s1 s4 } \bar ":|." \fat-line { s2. s1 }
}
SECONDtiiALyrics = \lyricmode {
  \once \override LyricText.self-alignment-X = #LEFT
  \markup \column {
    {"But the idea-complex"}
    {"That makes contact with mystery"}
    {"Of life, of me, of nature"}}1
  \skip 1 \skip 1 \skip  1
}

SECONDbiADynamics = {
  s1 s1 s1 s1
}
SECONDbiA = \relative c {
  \SECONDtuttiA
  \tempo " ca. 60 WPM"
  \no-line { s1^\p s1 s8 } \bar ":|." \fat-line { s2.. s1 }

}
SECONDbiALyrics = \lyricmode {
  \once \override LyricText.self-alignment-X = #LEFT
  \markup \column {
    {"But the idea-complex"}
    {"That makes contact with mystery"}
    {"Of life, of me" }}1
  \skip 1 \skip 1 \skip  1
}

SECONDbiiADynamics = {
  s1 s1 s1 s1
}
SECONDbiiA = \relative c {
  \SECONDtuttiA
  \no-line { \xNotesOn c4_"clap"^\ff s2. s2 } \xNotesOff
  \override Staff.BarLine.bar-extent = #'(-2 . 2)
  \bar ".|:" \force-clef-bass
    << c1*1/2\shortfermata {\n s4..^\< s16^\mf} >> \bar ":|." 
  \fat-line s1
  \bar ".|:" \scaleDurations 2/5 { \n c1\shortfermata^\< \stemless des4^\mf } \bar ":|."
    \fat-line s2
}
SECONDbiiALyrics = \lyricmode {
  \skip 1 \skip 2 
  \markup {\box z}2 
  \skip 1
  \scaleDurations 2/5 { 
    \markup {\box z}1
    \markup {\box ɑ}4 }
  \skip 2
}

SECONDtuttiB = {
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

SECONDconductorB = {
    \hide b1
    %-\tweak HorizontalBracketText.text "8\""
      \startGroup s1 s2 s2... \hide b16 \stopGroup
    \hide b8 \startGroup s4 \hide b8 \stopGroup
}

SECONDsiBDynamics = {
  s1 s1 s1 s1
}
SECONDsiB = \relative c'' {
  \SECONDtuttiB
  \force-clef-treble
  \bar ".|:" \scaleDurations 4/5 { \n b1\shortfermata^\< \stemless e,4^\mf } \bar ":|."
  \override TextSpanner.bound-details.left.text = "diminuendo"
  \fat-line { s1\startTextSpan s2. s2 s4\stopTextSpan }
  e1*1/2^\p\fermata

}
SECONDsiBLyrics = \lyricmode {
  \scaleDurations 4/5 { 
    \markup {\box z}1
    \markup {\box ɑ}4 }
  \skip 1 \skip 1.
  \markup {\box z}2
}

SECONDsiiBDynamics = {
  s1 s1 s1 s1
}
SECONDsiiB = \relative c'' {
  \SECONDtuttiB
  \override TextSpanner.bound-details.left.text = "diminuendo"
  \fat-line { s1 s4 s2.\startTextSpan s1 s2\stopTextSpan s2^\pp }
}
SECONDsiiBLyrics = \lyricmode {
  \skip 1 \skip 1. whisper2 →2 \markup {\box s}2
}

SECONDaiBDynamics = {
  s1 s1 s1 s1
}
SECONDaiB = \relative c' {
  \SECONDtuttiB
  \override TextSpanner.bound-details.left.text = "diminuendo"
  \fat-line { s1 s1\startTextSpan s1 s2\stopTextSpan s2^\pp }
}
SECONDaiBLyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1
}

SECONDaiiBDynamics = {
  s1 s1 s1 s1
}
SECONDaiiB = \relative c' {
  \SECONDtuttiB
  \override TextSpanner.bound-details.left.text = "diminuendo"
  \fat-line { s2. s4\startTextSpan s1 s1 s2\stopTextSpan s2^\pp }
}
SECONDaiiBLyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1
}

SECONDtiBDynamics = {
  s1 s1 s1 s1
}
SECONDtiB = \relative c' {
  \SECONDtuttiB
  \override TextSpanner.bound-details.left.text = "diminuendo"
  \fat-line { s2 s2\startTextSpan s1 s1 s2\stopTextSpan s2^\pp }
}
SECONDtiBLyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1
}

SECONDtiiBDynamics = {
  s1 s1 s1 s1
}
SECONDtiiB = \relative c' {
  \SECONDtuttiB
  \override TextSpanner.bound-details.left.text = "diminuendo"
  \fat-line { s4 s2.\startTextSpan s1 s1 s2\stopTextSpan s2^\pp }
}
SECONDtiiBLyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1
}

SECONDbiBDynamics = {
  s1 s1 s1 s1
}
SECONDbiB = \relative c {
  \SECONDtuttiB
  \override TextSpanner.bound-details.left.text = "diminuendo"
  \fat-line { s1\startTextSpan s1 s1 s2\stopTextSpan s2^\pp }
}
SECONDbiBLyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1
}

SECONDbiiBDynamics = {
  s1 s1 s1 s1
}
SECONDbiiB = \relative c {
  \SECONDtuttiB
  \override TextSpanner.bound-details.left.text = "diminuendo"
  \fat-line { s2 s1.\startTextSpan s2. s2 s4\stopTextSpan }
  e1*1/2^\p\fermata
}
SECONDbiiBLyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1.
  \markup {\box z}2
}

%consolidated voices
SECONDconductor = {
  \SECONDconductorA
  \SECONDconductorB
}
SECONDsiDynamics = {
  \SECONDsiADynamics
  \SECONDsiBDynamics
}
SECONDsiiDynamics = {
  \SECONDsiiADynamics
  \SECONDsiiBDynamics
}
SECONDaiDynamics = {
  \SECONDaiADynamics
  \SECONDaiBDynamics
}
SECONDaiiDynamics = {
  \SECONDaiiADynamics
  \SECONDaiiBDynamics
}
SECONDtiDynamics = {
  \SECONDtiADynamics
  \SECONDtiBDynamics
}
SECONDtiiDynamics = {
  \SECONDtiiADynamics
  \SECONDtiiBDynamics
}
SECONDbiDynamics = {
  \SECONDbiADynamics
  \SECONDbiBDynamics
}
SECONDbiiDynamics = {
  \SECONDbiiADynamics
  \SECONDbiiBDynamics
}
SECONDsi = {
  \SECONDsiA
  \SECONDsiB
}
SECONDsii = {
  \SECONDsiiA
  \SECONDsiiB
}
SECONDai = {
  \SECONDaiA
  \SECONDaiB
}
SECONDaii = {
  \SECONDaiiA
  \SECONDaiiB
}
SECONDti = {
  \SECONDtiA
  \SECONDtiB
}
SECONDtii = {
  \SECONDtiiA
  \SECONDtiiB
}
SECONDbi = {
  \SECONDbiA
  \SECONDbiB
}
SECONDbii = {
  \SECONDbiiA
  \SECONDbiiB
}
SECONDsiLyrics = { 
  \SECONDsiALyrics
  \SECONDsiBLyrics
}
SECONDsiiLyrics = { 
  \SECONDsiiALyrics 
  \SECONDsiiBLyrics 
}
SECONDaiLyrics = { 
  \SECONDaiALyrics 
  \SECONDaiBLyrics 
}
SECONDaiiLyrics = {
  \SECONDaiiALyrics 
  \SECONDaiiBLyrics 
}
SECONDtiLyrics = {
  \SECONDtiALyrics 
  \SECONDtiBLyrics 
} 
SECONDtiiLyrics = {
  \SECONDtiiALyrics 
  \SECONDtiiBLyrics 
}
SECONDbiLyrics = {
  \SECONDbiALyrics 
  \SECONDbiBLyrics 
}
SECONDbiiLyrics = {
  \SECONDbiiALyrics 
  \SECONDbiiBLyrics 
}

SECONDscore = \score {
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
        \SECONDconductor
      }
      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \SECONDsiDynamics }
      \new Staff = "si" \with {
        instrumentName = "S"
        shortInstrumentName = "S"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
      }\new Voice = "si" {
        \clef "treble"
        \SECONDsi
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "si"
      { \SECONDsiLyrics }

      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \SECONDsiiDynamics }
      \new Staff = "sii" \with {
        instrumentName = "S"
        shortInstrumentName = "S"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
        %\RemoveAllEmptyStaves
      }\new Voice = "sii" {
        \clef "treble"
        \SECONDsii
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-unrelatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "sii"
      { \SECONDsiiLyrics }

      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \SECONDaiDynamics }
      \new Staff = "ai" \with {
        instrumentName = "A"
        shortInstrumentName = "A"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
      }\new Voice = "ai" {
        \clef "treble"
        \SECONDai
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "ai"
      { \SECONDaiLyrics }

      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \SECONDaiiDynamics }
      \new Staff = "aii" \with {
        instrumentName = "A"
        shortInstrumentName = "A"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
        %\RemoveAllEmptyStaves
      }\new Voice = "aii" {
        \clef "treble"
        \SECONDaii
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "aii"
      { \SECONDaiiLyrics }

      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \SECONDtiDynamics }
      \new Staff = "ti" \with {
        instrumentName = "T"
        shortInstrumentName = "T"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
        %\RemoveAllEmptyStaves
      }\new Voice = "ti" {
        \clef "treble_8"
        \SECONDti
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "ti"
      { \SECONDtiLyrics }

      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \SECONDtiiDynamics }
      \new Staff = "tii" \with {
        instrumentName = "T"
        shortInstrumentName = "T"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
        %\RemoveAllEmptyStaves
      }\new Voice = "tii" {
        \clef "treble_8"
        \SECONDtii
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "tii"
      { \SECONDtiiLyrics }
      
      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \SECONDbiDynamics }
      \new Staff = "bi" \with {
        instrumentName = "B"
        shortInstrumentName = "B"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
      }\new Voice = "bi" {
        \clef "bass"
        \SECONDbi
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "bi"
      { \SECONDbiLyrics }

      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \SECONDbiiDynamics }
      \new Staff = "bii" \with {
        instrumentName = "B"
        shortInstrumentName = "B"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
        %\RemoveAllEmptyStaves
      }\new Voice = "bii" {
        \clef "bass"
        \SECONDbii
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "bii"
      { \SECONDbiiLyrics }
    %>>
  >>
}
