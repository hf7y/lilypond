%tuning.ly
%Modified on 12 4,2019
%Created on 10 21, 2019 at 17:22

\version "2.19.83"

TUNINGtuttiA = {
  \time 2/4
  \omit Score.TimeSignature
  \set Score.defaultBarType = #""
  \override Stem.thickness = #-1.0
  \override Flag.transparent = ##t
  \override Beam.transparent = ##t
  \set tieWaitForNote = ##t
  \override Hairpin.to-barline = ##f
}

TUNINGconductorA = {
  \override Stem.length = #0
  \override Flag.stencil = ##f
  \hide b1-\tweak HorizontalBracketText.text "40\"" ^\startGroup 
    s1 s4 \hide b4\stopGroup

  s2

  s4 \hide b2-\tweak HorizontalBracketText.text "35\"" ^\startGroup s4 
    s1 s4 \hide b4\stopGroup

  \bar ""
  \break

  \hide b1-\tweak HorizontalBracketText.text "20\"" ^\startGroup
    s2.. \hide b8\stopGroup

  \hide b8-\tweak HorizontalBracketText.text "10\"" ^\startGroup
    s2. \hide b8\stopGroup

  \bar ""
  \pageBreak

  \hide b1-\tweak HorizontalBracketText.text "15\"" ^\startGroup 
    s2. \hide b4\stopGroup

  \hide b8-\tweak HorizontalBracketText.text "20\"" ^\startGroup
    s2 s2. \hide b8\stopGroup
  \bar "" \break
}
TUNINGsiA = \relative c'' {
  \TUNINGtuttiA
  s2. a4^\p~ |
  a2 \glissando s2
  b2 \fermata

  \no-line s2

  s2. a4~ |
  \scaleDurations 3/5 {
    a2 \glissando
    s2
    fis2 \glissando s2
    gis2 \fermata
  }

  %\no-line s2

  \voiceOne
  s1
  s2. b4^\markup \small "I"~
  b2 \fermata s2

  %\no-line s2

  \oneVoice
  b4^\ppp~ s2. 
  b2~ s2
  b2^\< \n s2^\>
  s2\!

  \undo \omit Score.BarLine
  \bar "||"
}
TUNINGsiALyrics = \lyricmode {
  \skip 2. \markup \box "ɑ"4 | →1 | \markup \box "a"1
  \skip 2. \markup \box "ɑ"4 | →1 | \markup \box "ɛ"2
  \skip 2. \markup \box "ɔ"4 | \skip 4 →2 \markup \box "a"8 →8 | \markup \box "e"1 |
  \markup \box "o"1 | \skip 1 | \skip 1 | \skip 2
}

TUNINGsiiA = \relative c'' {
  \TUNINGtuttiA
  s1 * 5 s2

  \change Staff = "si"
  \voiceTwo
  s2. a4^\markup \small "II"~
  s1
  a2 s2

  \change Staff = "sii"
  %\no-line s2

  \oneVoice
  \no-clef
  \square \no-line {
    s2 \n b4^\<~ s4
    2\ppp~ s2
    2~ s2
    \scaleDurations 1/2 { \n 2^\> s2\! }
  }
  \bar "||"
}
TUNINGsiiALyrics =  \lyricmode {
  \skip 1 | \skip 1 | \skip 1
  \skip 1 | \skip 1 | \skip 2
  \skip 1 | \skip 1 | \skip 1 |
  \skip 2 \markup \box "s"2 | →1 | \markup \box "sh"8 →2.. | \markup \box "s"2
}

TUNINGaiA = \relative c' {
  \TUNINGtuttiA
  s4 d4^\p~ s2
  d2 \glissando s2
  cis2 \fermata
  
  \no-line s2

  s4 d4~ s2
  d2 \glissando s2
  a2 \fermata

  \voiceOne
  s1
  s2 e'4^\markup \small "I"~ s4
  e2\fermata s2

  \oneVoice
  s4 e4^\pp~ s2
  e2~ s2
  e2^\< \n s2^\>
  s2\!
  \bar "||"
}
TUNINGaiALyrics = \lyricmode {
  \skip 4 \markup \box "ɑ"2. | →1 | \markup \box "a"1
  \skip 4 \markup \box "ɑ"2. | →1 | \markup \box "ɛ"2
  \skip 2 \markup \box "ɔ"2 | →2 \markup \box "a"4 →4 | \markup \box "e"1 |
  \skip 4 \markup \box "o"2. | \skip 1 | \skip 1 | \skip 2
}

TUNINGaiiA = \relative c' {
  \TUNINGtuttiA
  s1 * 5 s2

  \change Staff = "ai"
  \voiceTwo
  s2 d4^\markup \small "II"~ s4
  s1
  d2 \glissando s4 cis4_\shortfermata

  \change Staff = "aii"

  \oneVoice
  s2. cis4^\pp~
  cis2~ s2
  cis2^\< \n s2^\>
  s2\!
  \bar "||"
}
TUNINGaiiALyrics = \lyricmode {
  \skip 1 | \skip 1 | \skip 1
  \skip 1 | \skip 1 | \skip 2
  \skip 1 | \skip 1 | \skip 1 |
  \skip 2. \markup \box "o"4 | \skip 1 | \skip1 | \skip 2
}

TUNINGtiA = \relative c' {
  \TUNINGtuttiA
  a4^\p~ s2.
  a2 \glissando s2
  fis2 \fermata

  \no-line s2

  s1
  a2 \glissando s2
  e'2 \fermata

  \voiceOne
  s4 g,4^\markup \small "I"~ s2
  s1
  g2 \fermata s2

  \oneVoice
  \no-clef
  \no-line \square {
    s2 \n b4^\< ~ s4
    2\ppp~ s2
    2~ s2
    \scaleDurations 1/2 { 2~ \hide 2 }
  }
  \bar "||"
}
TUNINGtiALyrics = \lyricmode {
  \markup \box "ɑ"1 | →1 | \markup \box "a"1
  \skip 1 | \markup \box "ɑ"8 →8 \skip 2. | \markup \box "ɛ"2
  \skip 4 \markup \box "ɔ"2 →4 | \skip 4 \markup \box "a"4. →4. | \markup \box "e"1 |
  \skip 2 \markup \box "s"2 | →1 | \markup \box "sh"8 →2.. | \markup \box "s"2
}

TUNINGtiiA = \relative c {
  \TUNINGtuttiA
  s1 * 5 s2

  \change Staff = "ti"
  \voiceTwo
  s1
  s4 f4^\markup \small "II"~ s2
  f2 s2
  
  \change Staff = "tii"

  \oneVoice
  \no-clef
  \no-line \square {
    s1 \n b2^\<~ s2\ppp
    2~ s2
    \scaleDurations 1/2 { 2~ \hide 2 }
  }
  \bar "||"
}
TUNINGtiiALyrics = \lyricmode {
  \skip 1 | \skip 1 | \skip 1
  \skip 1 | \skip 1 | \skip 2
  \skip 1 | \skip 1 | \skip 1 |
  \skip 1 | \markup \box "s"8 →2.. | \markup \box "sh"8 →2.. | \markup \box "s"2
}

TUNINGbiA = \relative c {
  \TUNINGtuttiA
  s2 d4^\p~ s4
  d2 \glissando s2
  g,2 \fermata 

  \no-line s2

  s2 d'4~ s4
  d2 \glissando s2
  b2 \fermata

  \voiceOne
  s1
  des4^\markup \small "I"~ s2.
  des2 \fermata s2

  \oneVoice
  s2. \n des4^\pp^\>
  \no-line \square {
    s4\! \n d2^\<~ s4^\ppp
    2~ s2
    \scaleDurations 1/2 { 2~ \hide 2 }
  }
  \bar "||"
}
TUNINGbiALyrics = \lyricmode {
  \skip 2 \markup \box "ɑ"2 | →1 | \markup \box "a"1
  \skip 2 \markup \box "ɑ"2 | →1 | \markup \box "ɛ"2
  \markup \box "ɔ"2 →2 | \markup \box "a"2 →2 | \markup \box "e"1 |
  \skip 2. \markup \box "o"4 | \skip 4 \markup \box "s"8 →8 \skip 2 | \markup \box "sh"8 →2.. | \markup \box "s"2
}

TUNINGbiiA = \relative c {
  \TUNINGtuttiA
  s1 * 5 s2

  \change Staff = "bi" 
  \voiceTwo
  c4^\markup \small "II"~ s2.
  s1 
  c2 s2

  \change Staff = "bii"

  \oneVoice
  s1
  c2^\pp~ s2
  c2^\< \n s2^\>
  s2\!
  \bar "||"
}
TUNINGbiiALyrics = \lyricmode {
  \skip 1 | \skip 1 | \skip 1
  \skip 1 | \skip 1 | \skip 2
  \skip 1 | \skip 1 | \skip 1 |
  \skip 1 | \markup \box "o"1 | \skip 1 | \skip 2
}


TUNINGscore = \score {
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
        \TUNINGconductorA
      }
      \new Staff = "si" \with {
        instrumentName = "S"
        shortInstrumentName = "S"
      }\new Voice = "si" {
        \clef "treble"
        \TUNINGsiA
      }
      \new Lyrics { \TUNINGsiALyrics }

      \new Staff = "sii" \with {
        instrumentName = "S"
        shortInstrumentName = "S"
        \RemoveAllEmptyStaves
      }\new Voice = "sii" {
        \clef "treble"
        \TUNINGsiiA
      }
      \new Lyrics { \TUNINGsiiALyrics }

      \new Staff = "ai" \with {
        instrumentName = "A"
        shortInstrumentName = "A"
      }\new Voice = "ai" {
        \clef "treble"
        \TUNINGaiA
      }
      \new Lyrics { \TUNINGaiALyrics }

      \new Staff = "aii" \with {
        instrumentName = "A"
        shortInstrumentName = "A"
        \RemoveAllEmptyStaves
      }\new Voice = "aii" {
        \clef "treble"
        \TUNINGaiiA
      }
      \new Lyrics { \TUNINGaiiALyrics }

      \new Staff = "ti" \with {
        instrumentName = "T"
        shortInstrumentName = "T"
        \RemoveAllEmptyStaves
      }\new Voice = "ti" {
        \clef "treble_8"
        \TUNINGtiA
      }
      \new Lyrics { \TUNINGtiALyrics }

      \new Staff = "tii" \with {
        instrumentName = "T"
        shortInstrumentName = "T"
        \RemoveAllEmptyStaves
      }\new Voice = "tii" {
        \clef "treble_8"
        \TUNINGtiiA
      }
      \new Lyrics { \TUNINGtiiALyrics }
      
      \new Staff = "bi" \with {
        instrumentName = "B"
        shortInstrumentName = "B"
      }\new Voice = "bi" {
        \clef "bass"
        \TUNINGbiA
      }
      \new Lyrics { \TUNINGbiALyrics }

      \new Staff = "bii" \with {
        instrumentName = "B"
        shortInstrumentName = "B"
        \RemoveAllEmptyStaves
      }\new Voice = "bii" {
        \clef "bass"
        \TUNINGbiiA
      }
      \new Lyrics { \TUNINGbiiALyrics }
    %>>
  >>
}
