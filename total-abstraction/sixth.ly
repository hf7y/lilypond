%sixth.ly
%Created on 20th November 2019

\version "2.19.83"

SIXTHtuttiA = {
  \set tieWaitForNote = ##t
  \override Hairpin.to-barline = ##f
  \omit Score.TimeSignature
  \set Score.defaultBarType = #""
  \set tieWaitForNote = ##t
  \override ParenthesesItem.font-size = #10

  \set Staff.tempoEquationText = "="
  \override Staff.Clef.full-size-change = ##t
  \no-clef
  \autoBeamOff
}

SIXTHconductorA = {
    \hide b1
    %-\tweak HorizontalBracketText.text "8\""
      \startGroup s2... \hide b16 \stopGroup
    \hide b1
    %-\tweak HorizontalBracketText.text "8\""
      \startGroup s2... \hide b16 \stopGroup
    \pageBreak
}

SIXTHsiADynamics = {
  s1 s1 s1 s1
}
SIXTHsiA = \relative c'' {
  \override TextSpanner.bound-details.left.text = "dim. al niente"
  \SIXTHtuttiA
  \fat-line s1\startTextSpan \no-line { s1\stopTextSpan s1 }
  \force-clef-treble \n fis1*1/2^\< s4. s8\!
}
SIXTHsiALyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 
  \markup \box "e"1
}

SIXTHsiiADynamics = {
  s1 s1 s1 s1
}
SIXTHsiiA = \relative c'' {
  \override TextSpanner.bound-details.left.text = "dim. al niente"
  \SIXTHtuttiA
  \fat-line { s1 s1\startTextSpan} \no-line { s1\stopTextSpan s1 }
}
SIXTHsiiALyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1
  \markup \box "e"1
}

SIXTHaiADynamics = {
  s1 s1 s1 s1
}
SIXTHaiA = \relative c' {
  \override TextSpanner.bound-details.left.text = "dim. al niente"
  \SIXTHtuttiA
  \fat-line s1\startTextSpan \no-line { s1\stopTextSpan s1 }
  \force-clef-treble \n a'1*1/2^\< s4. s8\!
}
SIXTHaiALyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1
  \markup \box "e"1
}

SIXTHaiiADynamics = {
  s1 s1 s1 s1
}
SIXTHaiiA = \relative c' {
  \override TextSpanner.bound-details.left.text = "molto rit."
  \SIXTHtuttiA
  \fat-line s2\startTextSpan 
  \bar ".|:" \force-clef-treble \stemless es4*1/2^~ es1*3/8 \shortfermata\stopTextSpan \bar ":|."
  \fat-line { s1 }
  
  \force-clef-treble d1^\< a'1*1/2 s2\!
}
SIXTHaiiALyrics = \lyricmode {
  \skip 2 \markup \box "m"8 \markup \box "e"4. \skip 1
  \markup \box "m"1 \markup \box "e"1 
}

SIXTHtiADynamics = {
  s1 s1 s1 s1
}
SIXTHtiA = \relative c' {
  \override TextSpanner.bound-details.left.text = "dim. al niente"
  \SIXTHtuttiA
  \fat-line s1\startTextSpan \no-line { s1\stopTextSpan s1 }
  \force-clef-tenor \n cis1*1/2^\< s4. s8\!
}
SIXTHtiALyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1
  \markup \box "e"1
}

SIXTHtiiADynamics = {
  s1 s1 s1 s1
}
SIXTHtiiA = \relative c' {
  \override TextSpanner.bound-details.left.text = "molto rit."
  \SIXTHtuttiA
  \fat-line s1\startTextSpan 
  \bar ".|:" \force-clef-tenor \stemless es4*1/2^~ es1*3/8\shortfermata\stopTextSpan \bar ":|."
  \fat-line { s2 }
  \force-clef-tenor cis1^\<~ cis1*1/2 s2\!
}
SIXTHtiiALyrics = \lyricmode {
  \skip 1 \markup \box "m"8 \markup \box "e"2.. 
  \markup \box "m"1 \markup \box "e"1 
}

SIXTHbiADynamics = {
  s1 s1 s1 s1
}
SIXTHbiA = \relative c {
  \override TextSpanner.bound-details.left.text = "dim. al niente"
  \SIXTHtuttiA
  \fat-line { s1 s1\startTextSpan } \no-line { s1\stopTextSpan s1 }

}
SIXTHbiALyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1
}

SIXTHbiiADynamics = {
  s1 s1 s1 s1
}
SIXTHbiiA = \relative c {
  \override TextSpanner.bound-details.left.text = "molto rit."
  \SIXTHtuttiA
  \fat-line s2.\startTextSpan 
  \bar ".|:" \force-clef-bass \stemless es4*1/2^~ es1*3/8\shortfermata\stopTextSpan \bar ":|."
  \fat-line { s2. }
  \force-clef-bass cis1^\< fis,1*1/2 s2\!
}
SIXTHbiiALyrics = \lyricmode {
  \skip 2. \markup \box "m"8 \markup \box "e"4. \skip 2.
  \markup \box "m"1 \markup \box "e"1 
}

SIXTHtuttiB = {
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

SIXTHconductorB = {
    \hide b1
    %-\tweak HorizontalBracketText.text "8\""
      \startGroup s2... \hide b16 \stopGroup
    \hide b1
    %-\tweak HorizontalBracketText.text "8\""
      \startGroup s2... \hide b16 \stopGroup
    \pageBreak
}

SIXTHsiBDynamics = {
  s1 s1 s1 s1
}
SIXTHsiB = \relative c'' {
  \SIXTHtuttiB
  \fat-line { \n s1^\> } \no-line { s1\! s1 s2. }
  \force-clef-treble \n fis1*1/8^\< s8\f
}
SIXTHsiBLyrics = \lyricmode {
  \markup \box "m"1 \skip 1 \skip 1 \skip 2. \markup \box "ɑ"4
}

SIXTHsiiBDynamics = {
  s1 s1 s1 s1
}
SIXTHsiiB = \relative c' {
  \SIXTHtuttiB
  \no-line { s1 s1 }
  \force-clef-treble
  \scaleDurations 8/18 { d2.^\markup \italic "dolce" cis2 e1 fis1 fis4 e1\longfermata }
}
SIXTHsiiBLyrics = \lyricmode {
  \skip 1 \skip 1 \markup \box "ɑ"1 \skip 1
}

SIXTHaiBDynamics = {
  s1 s1 s1 s1
}
SIXTHaiB = \relative c'' {
  \SIXTHtuttiB
  \force-clef-treble a1*1/2 \n s2\sp^\> 
  \bar ".|:" \n a1*1/2^\< \n s2\> \bar ":|." 
  \fat-line { s1\! s1 }
}
SIXTHaiBLyrics = \lyricmode {
  \markup \box "m"1 \skip 1 \skip 1 \skip 1
}

SIXTHaiiBDynamics = {
  s1 s1 s1 s1
}
SIXTHaiiB = \relative c'' {
  \SIXTHtuttiB
  \force-clef-treble \n a2\sp^\> 
  \bar ".|:" \n a1*1/2^\< \n s2\> \bar ":|." 
  \fat-line { s2\! s1 s1 }
}
SIXTHaiiBLyrics = \lyricmode {
  \markup \box "m"1 \skip 1 \skip 1 \skip 1
}

SIXTHtiBDynamics = {
  s1 s1 s1 s1
}
SIXTHtiB = \relative c' {
  \SIXTHtuttiB
  \force-clef-tenor cis1*1/2 \n s2\sp^\>
  \bar ".|:" \n cis1*1/2^\< \n s2\> \bar ":|." | 
  \fat-line { s1\! s1 } 
}
SIXTHtiBLyrics = \lyricmode {
  \markup \box "m"1 \skip 1 \skip 1 \skip 1
}

SIXTHtiiBDynamics = {
  s1 s1 s1 s1
}
SIXTHtiiB = \relative c' {
  \SIXTHtuttiB
  \force-clef-tenor \n cis2\sp^\> 
  \bar ".|:" \n cis!1*1/2^\< \n s2\> \bar ":|." 
  \fat-line { s2\! s1 s1 }

}
SIXTHtiiBLyrics = \lyricmode {
  \markup \box "m"1 \skip 1 \skip 1 \skip 1
}

SIXTHbiBDynamics = {
  s1 s1 s1 s1
}
SIXTHbiB = \relative c' {
  \SIXTHtuttiB
  \no-line { s1 s1 }
  \force-clef-bass
  \scaleDurations 8/18 { d2.^\markup \italic "dolce" cis2 e1 r4 a,2. r4 e'1\longfermata }
}
SIXTHbiBLyrics = \lyricmode {
  \skip 1 \skip 1 
  \markup \box "ɑ"1 \skip 1
}

SIXTHbiiBDynamics = {
  s1 s1 s1 s1
}
SIXTHbiiB = \relative c, {
  \SIXTHtuttiB
  \fat-line { \n s1^\> } \no-line { s1\! s1 s2. }
  \force-clef-bass \n fis1*1/8^\< s8\f
}
SIXTHbiiBLyrics = \lyricmode {
  \markup \box "m"1 \skip 1 \skip 1 \skip 2. \markup \box "ɑ"4
}

SIXTHtuttiC = {
  \no-clef
}
SIXTHconductorC = {
  \hide b1
  %-\tweak HorizontalBracketText.text "8\""
    \startGroup s2... \hide b16 \stopGroup
  \hide b1
  %-\tweak HorizontalBracketText.text "8\""
    \startGroup s2... \hide b16 \stopGroup
  \pageBreak
  \hide b1
  %-\tweak HorizontalBracketText.text "8\""
    \startGroup s1 s1 s2... \hide b16 \stopGroup
  \hide b1
  %-\tweak HorizontalBracketText.text "8\""
    \startGroup s1 s2... \hide b16 \stopGroup
}
SIXTHsiCDynamics = {}
SIXTHsiiCDynamics = {}
SIXTHaiCDynamics = {}
SIXTHaiiCDynamics = {}
SIXTHtiCDynamics = {}
SIXTHtiiCDynamics = {}
SIXTHbiCDynamics = {}
SIXTHbiiCDynamics = {}
SIXTHsiC = \relative c''' {
  \SIXTHtuttiC
  \no-line { s1 | s1 | s2 }
  \force-clef-treble
  a1*1/2^\<~ a1\!\longfermata

  \no-line { s1*4 }
  \force-clef-treble
  a1*1/3^\<~ a1*2/3\!\longfermata
  s1
  \n a1*3/4^\< s4\!
}
SIXTHsiCLyrics = \lyricmode {
  \skip 1*5/2 \markup \box "om"2 \skip 1

  \skip 1*4
  \markup \box "om"1
  \skip 1
  \markup \italic "→"2
  \markup \box "a"2
}
SIXTHsiiC = \relative c' {
  \SIXTHtuttiC
  \no-line s1
  \force-clef-treble
  d2. cis2 e1*3/4\fermata 
  \no-line s1

  \force-clef-treble
  d1 
  es1*1/2 \n s2^\>
  \bar ".|:" \n es1*1/2 ^\< s4.^\> s8\! \bar ":|."
  \fat-line s1
  \fat-line { s1*2 s2.^\< s4\! }
}
SIXTHsiiCLyrics = \lyricmode {
  \skip 1*9
  \markup \italic "→"2
  \markup \box "o"2
  \markup \italic "→"2
  \markup \box "a"2
}
SIXTHaiC = {
  \SIXTHtuttiC
  \fat-line { s1*4 }

  \fat-line { s1*4 }
  \fat-line { s1*2 s2.^\< s4\! }
}
SIXTHaiCLyrics = \lyricmode {
  \skip 1*9
  \markup \italic "→"2
  \markup \box "o"2
  \markup \italic "→"2
  \markup \box "a"2
}
SIXTHaiiC = {
  \SIXTHtuttiC
  \fat-line { s1*4 }

  \fat-line { s1*4 }
  \fat-line { s1*2 s2.^\< s4\! }
}
SIXTHaiiCLyrics = \lyricmode {
  \skip 1*9
  \markup \italic "→"2
  \markup \box "o"2
  \markup \italic "→"2
  \markup \box "a"2
}

SIXTHtiC = {
  \SIXTHtuttiC
  \fat-line s2 
  \force-clef-tenor
  \stemless \parenthesize a4 
  \fat-line { s4 | s1 | s1 }
  \force-clef-tenor
  \stemless \parenthesize g4 
  \fat-line { s2. }

  \fat-line { s1*4 }
  \fat-line { s1*2 s2.^\< s4\! }
}
SIXTHtiCLyrics = \lyricmode {
  \skip 1*9
  \markup \italic "→"2
  \markup \box "o"2
  \markup \italic "→"2
  \markup \box "a"2
} 
SIXTHtiiC = {
  \SIXTHtuttiC
  \fat-line s4 
  \force-clef-tenor
  \stemless \parenthesize a4
  \fat-line { s2 | s1 | s1 }
  \force-clef-tenor
  \stemless \parenthesize g4 
  \fat-line { s2. }

  \fat-line { s1*4 }
  \fat-line { s1*2 s2.^\< s4\! }
}
SIXTHtiiCLyrics = \lyricmode {
  \skip 1*9
  \markup \italic "→"2
  \markup \box "o"2
  \markup \italic "→"2
  \markup \box "a"2
}
SIXTHbiC = \relative c' {
  \SIXTHtuttiC
  \no-line s1
  \force-clef-bass
  d2. cis2 e1*3/4\fermata
  \no-line s1

  \force-clef-bass
  d1 
  \n es2^\>~
  \bar ".|:" \n es1*1/2 ^\< \n s4.^\> s8\! \bar ":|."
  \fat-line { s2 | s1 }
  \fat-line { s1*2 s2.^\< s4\! }
}
SIXTHbiCLyrics = \lyricmode {
  \skip 1*9
  \markup \italic "→"2
  \markup \box "o"2
  \markup \italic "→"2
  \markup \box "a"2
}
SIXTHbiiC = \relative c {
  \SIXTHtuttiC
  \no-line { s1 | s1 | s2 }
  \force-clef-bass
  g1*1/2^\<~ g1\!\longfermata

  \no-line { s1*4 }
  \force-clef-bass
  g1*1/3^\<~ g1*2/3\!\longfermata
  \no-line s1
  \n g1*3/4^\< s4\!
}
SIXTHbiiCLyrics = \lyricmode {
  \skip 1*5/2 \markup \box "om"2 \skip 1
  \skip 1*4
  \markup \box "om"1
  \skip 1
  \markup \italic "→"2
  \markup \box "a"2
}

%consolidated voices
SIXTHconductor = {
  \SIXTHconductorA
  \SIXTHconductorB
  \SIXTHconductorC
}
SIXTHsiDynamics = {
  \SIXTHsiADynamics
  \SIXTHsiBDynamics
  \SIXTHsiCDynamics
}
SIXTHsiiDynamics = {
  \SIXTHsiiADynamics
  \SIXTHsiiBDynamics
  \SIXTHsiiCDynamics
}
SIXTHaiDynamics = {
  \SIXTHaiADynamics
  \SIXTHaiBDynamics
  \SIXTHaiCDynamics
}
SIXTHaiiDynamics = {
  \SIXTHaiiADynamics
  \SIXTHaiiBDynamics
  \SIXTHaiiCDynamics
}
SIXTHtiDynamics = {
  \SIXTHtiADynamics
  \SIXTHtiBDynamics
  \SIXTHtiCDynamics
}
SIXTHtiiDynamics = {
  \SIXTHtiiADynamics
  \SIXTHtiiBDynamics
  \SIXTHtiiCDynamics
}
SIXTHbiDynamics = {
  \SIXTHbiADynamics
  \SIXTHbiBDynamics
  \SIXTHbiCDynamics
}
SIXTHbiiDynamics = {
  \SIXTHbiiADynamics
  \SIXTHbiiBDynamics
  \SIXTHbiiCDynamics
}
SIXTHsi = {
  \SIXTHsiA
  \SIXTHsiB
  \SIXTHsiC
}
SIXTHsii = {
  \SIXTHsiiA
  \SIXTHsiiB
  \SIXTHsiiC
}
SIXTHai = {
  \SIXTHaiA
  \SIXTHaiB
  \SIXTHaiC
}
SIXTHaii = {
  \SIXTHaiiA
  \SIXTHaiiB
  \SIXTHaiiC
}
SIXTHti = {
  \SIXTHtiA
  \SIXTHtiB
  \SIXTHtiC
}
SIXTHtii = {
  \SIXTHtiiA
  \SIXTHtiiB
  \SIXTHtiiC
}
SIXTHbi = {
  \SIXTHbiA
  \SIXTHbiB
  \SIXTHbiC
}
SIXTHbii = {
  \SIXTHbiiA
  \SIXTHbiiB
  \SIXTHbiiC
}
SIXTHsiLyrics = { 
  \SIXTHsiALyrics
  \SIXTHsiBLyrics
  \SIXTHsiCLyrics
}
SIXTHsiiLyrics = { 
  \SIXTHsiiALyrics 
  \SIXTHsiiBLyrics 
  \SIXTHsiiCLyrics
}
SIXTHaiLyrics = { 
  \SIXTHaiALyrics 
  \SIXTHaiBLyrics 
  \SIXTHaiCLyrics
}
SIXTHaiiLyrics = {
  \SIXTHaiiALyrics 
  \SIXTHaiiBLyrics 
  \SIXTHaiiCLyrics
}
SIXTHtiLyrics = {
  \SIXTHtiALyrics 
  \SIXTHtiBLyrics 
  \SIXTHtiCLyrics
} 
SIXTHtiiLyrics = {
  \SIXTHtiiALyrics 
  \SIXTHtiiBLyrics 
  \SIXTHtiiCLyrics
}
SIXTHbiLyrics = {
  \SIXTHbiALyrics 
  \SIXTHbiBLyrics 
  \SIXTHbiCLyrics
}
SIXTHbiiLyrics = {
  \SIXTHbiiALyrics 
  \SIXTHbiiBLyrics 
  \SIXTHbiiCLyrics
}

SIXTHscore = \score {
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
        \SIXTHconductor
      }
      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \SIXTHsiDynamics }
      \new Staff = "si" \with {
        instrumentName = "S"
        shortInstrumentName = "S"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
      }\new Voice = "si" {
        \clef "treble"
        \SIXTHsi
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "si"
      { \SIXTHsiLyrics }

      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \SIXTHsiiDynamics }
      \new Staff = "sii" \with {
        instrumentName = "S"
        shortInstrumentName = "S"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
        %\RemoveAllEmptyStaves
      }\new Voice = "sii" {
        \clef "treble"
        \SIXTHsii
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-unrelatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "sii"
      { \SIXTHsiiLyrics }

      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \SIXTHaiDynamics }
      \new Staff = "ai" \with {
        instrumentName = "A"
        shortInstrumentName = "A"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
      }\new Voice = "ai" {
        \clef "treble"
        \SIXTHai
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "ai"
      { \SIXTHaiLyrics }

      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \SIXTHaiiDynamics }
      \new Staff = "aii" \with {
        instrumentName = "A"
        shortInstrumentName = "A"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
        %\RemoveAllEmptyStaves
      }\new Voice = "aii" {
        \clef "treble"
        \SIXTHaii
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "aii"
      { \SIXTHaiiLyrics }

      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \SIXTHtiDynamics }
      \new Staff = "ti" \with {
        instrumentName = "T"
        shortInstrumentName = "T"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
        %\RemoveAllEmptyStaves
      }\new Voice = "ti" {
        \clef "treble_8"
        \SIXTHti
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "ti"
      { \SIXTHtiLyrics }

      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \SIXTHtiiDynamics }
      \new Staff = "tii" \with {
        instrumentName = "T"
        shortInstrumentName = "T"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
        %\RemoveAllEmptyStaves
      }\new Voice = "tii" {
        \clef "treble_8"
        \SIXTHtii
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "tii"
      { \SIXTHtiiLyrics }
      
      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \SIXTHbiDynamics }
      \new Staff = "bi" \with {
        instrumentName = "B"
        shortInstrumentName = "B"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
      }\new Voice = "bi" {
        \clef "bass"
        \SIXTHbi
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "bi"
      { \SIXTHbiLyrics }

      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \SIXTHbiiDynamics }
      \new Staff = "bii" \with {
        instrumentName = "B"
        shortInstrumentName = "B"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
        %\RemoveAllEmptyStaves
      }\new Voice = "bii" {
        \clef "bass"
        \SIXTHbii
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "bii"
      { \SIXTHbiiLyrics }
    %>>
  >>
}
