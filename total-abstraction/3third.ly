%third.ly
%Created on 10 21, 2019 at 17:22

\version "2.19.83"

THIRDtuttiA = {
  \set tieWaitForNote = ##t
  \override Hairpin.to-barline = ##f
  \omit Score.TimeSignature
  \set Score.defaultBarType = #""
  \set tieWaitForNote = ##t
  \override Hairpin.to-barline = ##f
  \override Staff.BarLine.bar-extent = #'(-2 . 2)

  \set Staff.tempoEquationText = "= ca. "
  \override Staff.Clef.full-size-change = ##t
  \no-clef
  \autoBeamOff
}

THIRDconductorA = {
  \set Score.markFormatter = #format-mark-box-alphabet
  \mark #3
  \hide b4
  -\tweak HorizontalBracketText.text "45\""
    \startGroup s2... \hide b16 \stopGroup
  \hide b1
  -\tweak HorizontalBracketText.text "35\""
    \startGroup s2. s2... \hide b16
  \pageBreak
}

THIRDsiADynamics = {
  s1 s1 s1 s1
}
THIRDsiAClaps = \stemless \relative c''' {
  \voiceOne
  s4 \clicks a4 s8
  s16 \clicks a4 s8 { s2... }
  s1 s1
}
THIRDsiA = \relative c' {
  \THIRDtuttiA
  \fat-line s4
  \tempo 8 = 180
  \force-clef-treble e8--^\mp 8 16 16 
  \bar ".|:" r16 e8-- 8 16 16 \bar ":|." \fat-line s2...
  \fat-line { s1 s1 }
}
THIRDsiALyrics = \lyricmode {
  \skip 4 \markup {\box tɔ}2. \skip 1 \skip 1 \skip 1
}

THIRDsiiADynamics = {
  s1 s1 s1 s1
}
THIRDsiiAClaps = \stemless \relative c''' {
  \voiceOne
  s4 \clicks a4 s8
  s16 \clicks a4 s8 { s2... }
  s1 s1
}
THIRDsiiA = \relative c' {
  \THIRDtuttiA
  \fat-line s4
  \tempo 8 = 180
  \force-clef-treble e8^\mp 8-- 16 16 
  \override TextSpanner.bound-details.left.text = "rall."
  \bar ".|:" r16 e8 8-- 16 16 \bar ":|." 
    \fat-line s2...\startTextSpan
  \fat-line { s1 s1\stopTextSpan }
}
THIRDsiiALyrics = \lyricmode {
  \skip 4 \markup {\box tɔ}2. \skip 1 \skip 1 \skip 1
}

THIRDaiADynamics = {
  s1 s1 s1 s1
}
THIRDaiAClaps = \stemless \relative c''' {
  \voiceOne
  s4 \clicks a4 s8
  s16 \clicks a4 s8. { s2.. }
  s1 s1
}
THIRDaiA = \relative c' {
  \THIRDtuttiA
  \fat-line s4
  \tempo 8 = 180
  \force-clef-treble e8--^\mp 8 16 16 
  \bar ".|:" r16 e8-- 8 16 16 16 \bar ":|." \fat-line s2..
  \fat-line { s1 s1 }
}
THIRDaiALyrics = \lyricmode {
  \skip 4 \markup {\box tɔ}2. \skip 1 \skip 1 \skip 1
}

THIRDaiiADynamics = {
  s1 s1 s1 s1
}
THIRDaiiAClaps = \stemless \relative c''' {
  \voiceOne
  s4 \clicks a4 s8
  s16 \clicks a4 s8. { s2.. }
  s1 s1
}
THIRDaiiA = \relative c' {
  \THIRDtuttiA
  \fat-line s4
  \tempo 8 = 180
  \force-clef-treble e8^\mp 8-- 16 16 
  \override TextSpanner.bound-details.left.text = "rall."
  \bar ".|:" r16 e8 8-- 16 16 16 \bar ":|." 
    \fat-line s2..\startTextSpan
  \fat-line { s1 s1 \stopTextSpan }
}
THIRDaiiALyrics = \lyricmode {
  \skip 4 \markup {\box tɔ}2. \skip 1 \skip 1 \skip 1
}


THIRDtiADynamics = {
  s1 s1 s1 s1
}
THIRDtiAClaps = \stemless \relative c'' {
  \voiceOne
  s4 \clicks a4 s8
  s16 \clicks a4 s4 { s16 s2. }
  s1 s1
}
THIRDtiA = \relative c {
  \THIRDtuttiA
  \fat-line s4
  \tempo 8 = 180
  \force-clef-tenor d8--^\mp 8 r16 16~ 
  \bar ".|:" d16 8-- 8 16 16 r16 16~ \bar ":|." \fat-line { \stemless \hide 16 s2. }
  \fat-line { s1 s1 }
}
THIRDtiALyrics = \lyricmode {
  \skip 4 \markup {\box tɔ}2. \skip 1 \skip 1 \skip 1
}

THIRDtiiADynamics = {
  s1 s1 s1 s1
}
THIRDtiiAClaps = \stemless \relative c'' {
  \voiceOne
  s4 \clicks a4 s8
  s16 \clicks a4 s4 { s16 s2. }
  s1 s1
}
THIRDtiiA = \relative c {
  \THIRDtuttiA
  \fat-line s4
  \tempo 8 = 180
  \force-clef-tenor d8^\mp 8-- r16 16~ 
  \override TextSpanner.bound-details.left.text = "rall."
  \bar ".|:" d16 8 8-- 16 16 r16 16~ \bar ":|." 
    \fat-line { \stemless \hide 16\startTextSpan s2. }
  \fat-line { s1 s1\stopTextSpan }
}
THIRDtiiALyrics = \lyricmode {
  \skip 4 \markup {\box tɔ}2. \skip 1 \skip 1 \skip 1
}

THIRDbiADynamics = {
  s1 s1 s1 s1
}
THIRDbiAClaps = \stemless \relative c' {
  \voiceOne
  s4 \clicks c4 s8
  s16 \clicks c4 s4. { s2 s8. }
  s1 s1 
}
THIRDbiA = \relative c {
  \THIRDtuttiA
  \fat-line s4
  \tempo 8 = 180
  \force-clef-bass d8--^\mp 8 16 16
  \bar ".|:" r16 8-- 8 16 16 r16 16 16 16 \bar ":|." \fat-line { s2 s8. }
  \fat-line  { s1 s1 }
}
THIRDbiALyrics = \lyricmode {
  \skip 4 \markup {\box tɔ}2. \skip 1 \skip 1 \skip 1
}

THIRDbiiADynamics = {
  s1 s1 s1 s1
}
THIRDbiiAClaps = \stemless \relative c' {
  \voiceOne
  s4 \clicks c4 s8
  s16 \clicks c4 s4. { s2 s8. }
  s1 s1
}
THIRDbiiA = \relative c {
  \THIRDtuttiA
  \fat-line s4
  \tempo 8 = 180
  \force-clef-bass d8^\mp 8-- 16 16
  \override TextSpanner.bound-details.left.text = "rall."
  \bar ".|:" r16 8 8-- 16 16 r16 16 16 16 \bar ":|." 
    \fat-line { s2\startTextSpan  s8. }
  \fat-line { s1 s1\stopTextSpan }
}
THIRDbiiALyrics = \lyricmode {
  \skip 4 \markup {\box tɔ}2. \skip 1 \skip 1 \skip 1
}

THIRDtuttiB = {
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

THIRDconductorB = {
    s2... \hide b16\stopGroup
    \hide b1
    -\tweak HorizontalBracketText.text "35\""
      \startGroup s2... \hide b16 \stopGroup
    \hide b2
    -\tweak HorizontalBracketText.text "35\""
      \startGroup s2... \hide b16 
    % \stopGroup
}

THIRDsiBDynamics = {
  s1 s1 s1 s1
}
THIRDsiBClaps = \relative c'' {
  s1 s1 s1 \clicks \stemless d4*4:16
}
THIRDsiB = \relative c'' {
  \THIRDtuttiB
  \override TextSpanner.bound-details.left.text = "accel."
  \fat-line { s1_\markup \small \italic "senza accento" 
    s1\startTextSpan s1 }
  \bar ".|:" \no-line \square g1*1/2:32^\<\stopTextSpan \bar ":|." 
  \fat-line { s2\> s2\!}
}
THIRDsiBLyrics = \lyricmode {
  \skip 1 \skip 1 →2. \markup {\box t}4 \skip 1
}

THIRDsiiBDynamics = {
  s1 s1 s1 s1
}
THIRDsiiBClaps = \relative c'' {
  s1 s1 s1 \clicks \stemless d4*4:16
}
THIRDsiiB = \relative c'' {
  \THIRDtuttiB
  \override TextSpanner.bound-details.left.text = "accel."
  \fat-line { s1_\markup \small \italic "senza accento" 
    s1\startTextSpan s1 }
  \bar ".|:" \no-line \square g1*1/2:32^\<\stopTextSpan \bar ":|." 
  \fat-line { s2\> s2\!}
}
THIRDsiiBLyrics = \lyricmode {
  \skip 1 \skip 1 →2. \markup {\box t}4 \skip 1
}

THIRDaiBDynamics = {
  s1 s1 s1 s1
}
THIRDaiBClaps = \relative c'' {
  s1 s1 s1 \clicks \stemless d4*4:16
}
THIRDaiB = \relative c'' {
  \THIRDtuttiB
  \override TextSpanner.bound-details.left.text = "accel."
  \fat-line { s1_\markup \small \italic "senza accento" 
    s1\startTextSpan s1 }
  \bar ".|:" \no-line \square g1*1/2:32^\<\stopTextSpan \bar ":|." 
  \fat-line { s2\> s2\!}
}
THIRDaiBLyrics = \lyricmode {
  \skip 1 \skip 1 →2. \markup {\box t}4 \skip 1
}

THIRDaiiBDynamics = {
  s1 s1 s1 s1
}
THIRDaiiBClaps = \relative c'' {
  s1 s1 s1 \clicks \stemless d4*4:16
}
THIRDaiiB = \relative c'' {
  \THIRDtuttiB
  \override TextSpanner.bound-details.left.text = "accel."
  \fat-line { s1_\markup \small \italic "senza accento" 
    s1\startTextSpan s1 }
  \bar ".|:" \no-line \square g1*1/2:32^\<\stopTextSpan \bar ":|." 
  \fat-line { s2\> s2\!}
}
THIRDaiiBLyrics = \lyricmode {
  \skip 1 \skip 1 →2. \markup {\box t}4 \skip 1
}

THIRDtiBDynamics = {
  s1 s1 s1 s1
}
THIRDtiBClaps = \relative c' {
  s1 s1 s1 \clicks \stemless d4*4:16
}
THIRDtiB = \relative c' {
  \THIRDtuttiB
  \override TextSpanner.bound-details.left.text = "accel."
  \fat-line { s1_\markup \small \italic "senza accento" 
    s1\startTextSpan s1 }
  \bar ".|:" \no-line \square g1*1/2:32^\<\stopTextSpan \bar ":|." 
  \fat-line { s2\> s2\!}
}
THIRDtiBLyrics = \lyricmode {
  \skip 1 \skip 1 →2. \markup {\box t}4 \skip 1
}

THIRDtiiBDynamics = {
  s1 s1 s1 s1
}
THIRDtiiBClaps = \relative c' {
  s1 s1 s1 \clicks \stemless d4*4:16
}
THIRDtiiB = \relative c' {
  \THIRDtuttiB
  \override TextSpanner.bound-details.left.text = "accel."
  \fat-line { s1_\markup \small \italic "senza accento" 
    s1\startTextSpan s1 }
  \bar ".|:" \no-line \square g1*1/2:32^\<\stopTextSpan \bar ":|." 
  \fat-line { s2\> s2\!}
}
THIRDtiiBLyrics = \lyricmode {
  \skip 1 \skip 1 →2. \markup {\box t}4 \skip 1
}

THIRDbiBDynamics = {
  s1 s1 s1 s1
}
THIRDbiBClaps = \relative c{
  s1 s1 s1 \clicks \stemless f4*4:16
}
THIRDbiB = \relative c {
  \THIRDtuttiB
  \override TextSpanner.bound-details.left.text = "accel."
  \fat-line { s1_\markup \small \italic "senza accento" 
    s1\startTextSpan s1 }
  \bar ".|:" \no-line \square b1*1/2:32^\<\stopTextSpan \bar ":|." 
  \fat-line { s2\> s2\!}
}
THIRDbiBLyrics = \lyricmode {
  \skip 1 \skip 1 →2. \markup {\box t}4 \skip 1
}

THIRDbiiBDynamics = {
  s1 s1 s1 s1
}
THIRDbiiBClaps = \relative c {
  s1 s1 s1 \clicks \stemless f4*4:16
}
THIRDbiiB = \relative c {
  \THIRDtuttiB
  \override TextSpanner.bound-details.left.text = "accel."
  \fat-line { s1_\markup \small \italic "senza accento" 
    s1\startTextSpan s1 }
  \bar ".|:" \no-line \square b1*1/2:32^\<\stopTextSpan \bar ":|." 
  \fat-line { s2\> s2\!}
}
THIRDbiiBLyrics = \lyricmode {
  \skip 1 \skip 1 →2. \markup {\box t}4 \skip 1
}

%consolidated voices
THIRDconductor = {
  \THIRDconductorA
  \THIRDconductorB
}
THIRDsiDynamics = {
  \THIRDsiADynamics
  \THIRDsiBDynamics
}
THIRDsiiDynamics = {
  \THIRDsiiADynamics
  \THIRDsiiBDynamics
}
THIRDaiDynamics = {
  \THIRDaiADynamics
  \THIRDaiBDynamics
}
THIRDaiiDynamics = {
  \THIRDaiiADynamics
  \THIRDaiiBDynamics
}
THIRDtiDynamics = {
  \THIRDtiADynamics
  \THIRDtiBDynamics
}
THIRDtiiDynamics = {
  \THIRDtiiADynamics
  \THIRDtiiBDynamics
}
THIRDbiDynamics = {
  \THIRDbiADynamics
  \THIRDbiBDynamics
}
THIRDbiiDynamics = {
  \THIRDbiiADynamics
  \THIRDbiiBDynamics
}
THIRDsiClaps = {
  \THIRDsiAClaps
  \THIRDsiBClaps
}
THIRDsiiClaps = {
  \THIRDsiiAClaps
  \THIRDsiiBClaps
}
THIRDaiClaps = {
  \THIRDaiAClaps
  \THIRDaiBClaps
}
THIRDaiiClaps = {
  \THIRDaiiAClaps
  \THIRDaiiBClaps
}
THIRDtiClaps = {
  \THIRDtiAClaps
  \THIRDtiBClaps
}
THIRDtiiClaps = {
  \THIRDtiiAClaps
  \THIRDtiiBClaps
}
THIRDbiClaps = {
  \THIRDbiAClaps
  \THIRDbiBClaps
}
THIRDbiiClaps = {
  \THIRDbiiAClaps
  \THIRDbiiBClaps
}
THIRDsi = {
  \THIRDsiA
  \THIRDsiB
}
THIRDsii = {
  \THIRDsiiA
  \THIRDsiiB
}
THIRDai = {
  \THIRDaiA
  \THIRDaiB
}
THIRDaii = {
  \THIRDaiiA
  \THIRDaiiB
}
THIRDti = {
  \THIRDtiA
  \THIRDtiB
}
THIRDtii = {
  \THIRDtiiA
  \THIRDtiiB
}
THIRDbi = {
  \THIRDbiA
  \THIRDbiB
}
THIRDbii = {
  \THIRDbiiA
  \THIRDbiiB
}
THIRDsiLyrics = { 
  \THIRDsiALyrics
  \THIRDsiBLyrics
}
THIRDsiiLyrics = { 
  \THIRDsiiALyrics 
  \THIRDsiiBLyrics 
}
THIRDaiLyrics = { 
  \THIRDaiALyrics 
  \THIRDaiBLyrics 
}
THIRDaiiLyrics = {
  \THIRDaiiALyrics 
  \THIRDaiiBLyrics 
}
THIRDtiLyrics = {
  \THIRDtiALyrics 
  \THIRDtiBLyrics 
} 
THIRDtiiLyrics = {
  \THIRDtiiALyrics 
  \THIRDtiiBLyrics 
}
THIRDbiLyrics = {
  \THIRDbiALyrics 
  \THIRDbiBLyrics 
}
THIRDbiiLyrics = {
  \THIRDbiiALyrics 
  \THIRDbiiBLyrics 
}

THIRDscore = \score {
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
        \THIRDconductor
      }
      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \THIRDsiDynamics }
      \new Staff = "si" \with {
        instrumentName = "S"
        shortInstrumentName = "S"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
      }
      <<
        \new Voice = "siClaps" {
          \clef "treble"
          \THIRDsiClaps
        }
        \new Voice = "si" {
          \clef "treble"
          \THIRDsi
        }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "si"
      { \THIRDsiLyrics }

      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \THIRDsiiDynamics }
      \new Staff = "sii" \with {
        instrumentName = "S"
        shortInstrumentName = "S"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
        %\RemoveAllEmptyStaves
      }
      <<
        \new Voice = "siiClaps" {
          \clef "treble"
          \THIRDsiiClaps
        }
        \new Voice = "sii" {
          \clef "treble"
          \THIRDsii
        }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-unrelatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "sii"
      { \THIRDsiiLyrics }

      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \THIRDaiDynamics }
      \new Staff = "ai" \with {
        instrumentName = "A"
        shortInstrumentName = "A"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
      }
      <<
        \new Voice = "aiClaps" {
          \clef "treble"
          \THIRDaiClaps
        }
        \new Voice = "ai" {
          \clef "treble"
          \THIRDai
        }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "ai"
      { \THIRDaiLyrics }

      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \THIRDaiiDynamics }
      \new Staff = "aii" \with {
        instrumentName = "A"
        shortInstrumentName = "A"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
        %\RemoveAllEmptyStaves
      }
      <<
        \new Voice = "aiiClaps" {
          \clef "treble"
          \THIRDaiiClaps
        }
        \new Voice = "aii" {
          \clef "treble"
          \THIRDaii
        }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "aii"
      { \THIRDaiiLyrics }

      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \THIRDtiDynamics }
      \new Staff = "ti" \with {
        instrumentName = "T"
        shortInstrumentName = "T"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
        %\RemoveAllEmptyStaves
      }
      <<
        \new Voice = "tiClaps" {
          \clef "treble_8"
          \THIRDtiClaps
        }
        \new Voice = "ti" {
          \clef "treble_8"
          \THIRDti
        }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "ti"
      { \THIRDtiLyrics }

      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \THIRDtiiDynamics }
      \new Staff = "tii" \with {
        instrumentName = "T"
        shortInstrumentName = "T"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
        %\RemoveAllEmptyStaves
      }
      <<
        \new Voice = "tiiClaps" {
          \clef "treble_8"
          \THIRDtiiClaps
        }
        \new Voice = "tii" {
          \clef "treble_8"
          \THIRDtii
        }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "tii"
      { \THIRDtiiLyrics }
      
      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \THIRDbiDynamics }
      \new Staff = "bi" \with {
        instrumentName = "B"
        shortInstrumentName = "B"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
      }
      <<
        \new Voice = "biClaps" {
          \clef "bass"
          \THIRDbiClaps
        }
        \new Voice = "bi" {
          \clef "bass"
          \THIRDbi
        }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "bi"
      { \THIRDbiLyrics }

      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \THIRDbiiDynamics }
      \new Staff = "bii" \with {
        instrumentName = "B"
        shortInstrumentName = "B"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
        %\RemoveAllEmptyStaves
      }<<
        \new Voice = "biiClaps" {
          \THIRDbiiClaps    
        }
        \new Voice = "bii" {
          \clef "bass"
          \THIRDbii
        }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "bii"
      { \THIRDbiiLyrics }
    %>>
  >>
}
