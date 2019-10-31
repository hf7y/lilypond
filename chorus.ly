%chorus.ly
%Created on 10 21, 2019 at 17:22

\version "2.19.83"
\include "/home/zach/lilypond/z/note.ily"
\include "/home/zach/lilypond/z/square.ily"
\include "/home/zach/lilypond/z/dynamic.ily"
\include "/home/zach/lilypond/z/staff.ily"
\include "/home/zach/lilypond/z/metronome.ily"
\include "/home/zach/lilypond/z/frameEngraver.ily"

\header {
  title = "Chorus"
  subtitle = ""
  composer = "Z.V. Pine"
  tagline = ""
}

tuttiA = {
  \time 2/4
  \omit Score.TimeSignature
  \set Score.defaultBarType = #""
  \override Stem.thickness = #-1.0
  \override Flag.transparent = ##t
  \override Beam.transparent = ##t
  \set tieWaitForNote = ##t
  \override Hairpin.to-barline = ##f
}

conductorA = {
  \override Stem.length = #0
  \override Flag.stencil = ##f
  \hide b1-\tweak HorizontalBracketText.text "12\"" ^\startGroup 
    s1 s4 \hide b4\stopGroup

  s2

  s4 \hide b2-\tweak HorizontalBracketText.text "11\"" ^\startGroup s4 
    s1 s4 \hide b4\stopGroup

  \bar ""
  \break

  \hide b1-\tweak HorizontalBracketText.text "13\"" ^\startGroup
    s1 s2.. \hide b8\stopGroup

  \bar ""
  \pageBreak

  \hide b1-\tweak HorizontalBracketText.text "14\"" ^\startGroup 
    s1 s1 s4 \hide b4\stopGroup
  \bar "" \break
}
siA = \relative c'' {
  \tuttiA
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
  s2. b4~
  b2 \fermata s2

  %\no-line s2

  \oneVoice
  b4^\ppp~ s2. 
  b2~ s2
  b2^\< \n s2^\>
  s2\!

  \undo \omit Score.BarLine
  \bar "|."
}
siALyrics = \lyricmode {
  \markup \box ɑ \skip 1 \skip 1 \skip 1 \skip 1
  \markup \box ɔ
  \markup \box o
}

siiA = \relative c'' {
  \tuttiA
  s1 * 5 s2

  \change Staff = "si"
  \voiceTwo
  s2. a4^\markup \italic "solo"~
  s1
  a2 s2

  \change Staff = "sii"
  %\no-line s2

  \oneVoice
  \square \no-line {
    s2 \n b4^\<~ s4
    2\ppp~ s2
    2~ s2
    2~
  }
  \bar "|."
}
siiALyrics = \lyricmode {
  \markup \box ɔ
  \markup \box s 
}

aiA = \relative c' {
  \tuttiA
  s4 d4^\p~ s2
  d2 \glissando s2
  cis2 \fermata
  
  \no-line s2

  s4 d4~ s2
  d2 \glissando s2
  a2 \fermata

  \voiceOne
  s1
  s2 e'4~ s4
  e2 s2

  \oneVoice
  s4 e4^\pp~ s2
  e2~ s2
  e2^\< \n s2^\>
  s2\!
  \bar "|."
}
aiALyrics = \lyricmode {
  \markup \box ɑ \skip 1 \skip 1 \skip 1
  \markup \box ɔ
  \markup \box o
}

aiiA = \relative c' {
  \tuttiA
  s1 * 5 s2

  \change Staff = "ai"
  \voiceTwo
  s2 d4^\markup \italic "solo"~ s4
  s1
  d2 \glissando s4 cis4 ^\fermata

  \change Staff = "aii"

  \oneVoice
  s2. cis4^\pp~
  cis2~ s2
  cis2^\< \n s2^\>
  s2\!
  \bar "|."
}
aiiALyrics = \lyricmode {
  \markup \box ɔ \skip 1
  \markup \box o
}

tiA = \relative c' {
  \tuttiA
  a4^\p~ s2.
  a2 \glissando s2
  fis2 \fermata

  \no-line s2

  s1
  a2 \glissando s2
  e'2 \fermata

  \voiceOne
  s4 g,4^\markup \italic "solo"~ s2
  s1
  g2 \fermata s2

  \oneVoice
  \no-line \square {
    s2 \n b4^\< ~ s4
    2\ppp~ s2
    2~ s2
    2~
  }
  \bar "|."
}
tiALyrics = \lyricmode {
  \markup \box ɑ \skip 1 \skip 1 \skip 1
  \markup \box ɔ
  \markup \box s
}

tiiA = \relative c {
  \tuttiA
  s1 * 5 s2

  \change Staff = "ti"
  \voiceTwo
  s1
  s4 f4~ s2
  f2 s2
  
  \change Staff = "tii"

  \oneVoice
  \no-line \square {
    s1 \n b2^\<~ s2\ppp
    2~ s2
    2~
  }
  \bar "|."
}
tiiALyrics = \lyricmode {
  \markup \box ɔ
  \markup \box s
}

biA = \relative c {
  \tuttiA
  s2 d4^\p~ s4
  d2 \glissando s2
  g,2 \fermata 

  \no-line s2

  s2 d'4~ s4
  d2 \glissando s2
  b2 \fermata

  \voiceOne
  s1
  des4~ s2.
  des2 \fermata s2

  \oneVoice
  s2. \n des4^\pp^\>
  \no-line \square {
    s4\! \n d2^\<~ s4^\ppp
    2~ s2
    2~
  }
  \bar "|."
}
biALyrics = \lyricmode {
  \markup \box ɑ \skip 1 \skip 1 \skip 1
  \markup \box ɔ
  \markup \box o 
  \markup \box s
}

biiA = \relative c {
  \tuttiA
  s1 * 5 s2

  \change Staff = "bi" 
  \voiceTwo
  c4^\markup \italic "solo"~ s2.
  s1 
  c2 s2

  \change Staff = "bii"

  \oneVoice
  s1
  c2^\pp~ s2
  c2^\< \n s2^\>
  s2\!
  \bar "|."
}
biiALyrics = \lyricmode {
  \markup \box ɔ
  \markup \box s
}


tuttiB = {
  \omit Score.TimeSignature
  \set Score.defaultBarType = #""
  \revert Stem.thickness
  \revert Flag.transparent
  \revert Beam.transparent
  \set tieWaitForNote = ##t
  \override Hairpin.to-barline = ##f
  \set Staff.tempoEquationText = "= ca."
  %\override Staff.FrameBracket.no-bracket = ##t
  \override Staff.Clef.full-size-change = ##t
  \autoBeamOff
}
force-clef-treble = {
  \revert Staff.Clef #'stencil
  \set Staff.forceClef = ##t
  \clef "treble"
}
force-clef-tenor = {
  \revert Staff.Clef #'stencil
  \set Staff.forceClef = ##t
  \clef "treble_8"
}
force-clef-bass = {
  \revert Staff.Clef #'stencil
  \set Staff.forceClef = ##t
  \clef "bass"
}
BVowelShift = {
  \time 4/4
  \override Staff.Clef #'stencil = ##f
  \override Staff.Stem.length = #0
  \fat-line \stemless { \hide b2^\< \hide b2 \hide b2\mf s4^\sp \hide b4 \hide b4 s4^\< \hide b2 }
  \revert Staff.Stem.length
  \set Staff.tempoEquationText = "="
}
BVowelShiftLyrics = \lyricmode {
  \markup \box ɪ 
  \markup \italic shift→ 
  \markup \box e 
  \markup \italic shift→ 
  \markup \box ɛ
  \markup \italic shift→
}

conductorB = {
  \hide b1-\tweak HorizontalBracketText.text "20\"" 
    \startGroup s1 s2. \hide b4\stopGroup

  \break
  \hide b1-\tweak HorizontalBracketText.text "32\"" 
    \startGroup s1 s2... \hide b16 \stopGroup
  \break
  \hide b1-\tweak HorizontalBracketText.text "10\"" 
    \startGroup s1 s2... \hide b16 \stopGroup

  \hide b4-\tweak HorizontalBracketText.text "15\"" 
    \startGroup s4 s4 s4 s4 s4... \hide b32 \stopGroup

  \hide b4-\tweak HorizontalBracketText.text "9\"" 
    \startGroup s4 s4 s4 s4 s4 s4 s4 s4 s4... \hide b32 \stopGroup
}
siB = \relative c'' {
  \tuttiB

  \override Staff.Clef #'stencil = ##f
  \time 3/4
  \no-line { r2. }
  
  \force-clef-treble 
  \tempo 8 = 92
  \time 4/8
  r8 b16^\mp b b b r8 \bar ":|."
  \fat-line { \time 7/4 r2. r1 }

  \BVowelShift

  %\force-clef-treble
  \tempo 4 = 84
  c4\f 4 8 8 r \bar ":|."

  \override Staff.Clef #'stencil = ##f
  \no-line s32 \fat-line { s2.... s8 s1 }
  \override TextSpanner.bound-details.left.text = "accellerando"
  \fat-line {s1\startTextSpan \n s2.^\> s8\!\stopTextSpan } \no-line s8
  
  \force-clef-treble
  \stemless { \n c2\glissando^\< s2. s1 des4\ff }
}
siBLyrics = \lyricmode {
  \markup \box ɪ \skip 1 \skip 1 \skip 1
  \BVowelShiftLyrics
  \markup \box a \skip 1 \skip 1 \skip 1
  \markup \box a \skip 1
}

siiB = \relative c'' {
  \tuttiB
  
  \override Staff.Clef #'stencil = ##f
  \time 9/8
  \no-line { \n \square b2.^\> r4.\! }
  
  \force-clef-treble
  \tempo 8 = 100
  \time 7/16
  gis16^\mp 16 8 8 r16 \bar ":|." 
  \time 23/16
  \fat-line { r8. r4 r1 }

  \BVowelShift

  \force-clef-treble
  \tempo 4 = 84
  gis4\f 4 8 8 r8 \bar ":|."

  \override Staff.Clef #'stencil = ##f
  \no-line s32 \fat-line { s2.... s8 s1 }
  \override TextSpanner.bound-details.left.text = "ritardando"
  \fat-line {s1\startTextSpan s2.. s8 }

  \fat-line \stemless { \hide b4 * 8 s2\stopTextSpan }
}
siiBLyrics = \lyricmode {
  \markup \box ɪ \skip 1 \skip 1 \skip 1
  \BVowelShiftLyrics
  \markup \box a \skip 1 \skip 1 \skip 1
}

aiB = \relative c' {
  \tuttiB
  \tempo 8 = 84
  \time 5/8
  r8 e8^\mp 8 16 16 r8 \bar ":|."
  \time 19/8
  \fat-line { r4. r1 r1 }

  \BVowelShift

  \force-clef-treble
  \tempo 4 = 84
  e4\f 4 8 8 r8
  4 4 8 8 r4 \bar ":|."

  \override Staff.Clef #'stencil = ##f
  \no-line s32 \fat-line { s2.... s8 }
  \override TextSpanner.bound-details.left.text = "accellerando"
  \fat-line {s1\startTextSpan s2.. s8}

  \fat-line \stemless { \hide b4 * 8 s2\stopTextSpan }
}
aiBLyrics = \lyricmode {
  \markup \box ɪ \skip 1 \skip 1 \skip 1
  \BVowelShiftLyrics
  \markup \box a \skip 1 \skip 1 \skip 1
  \skip 1 \skip 1 \skip 1 \skip 1
}

aiiB = \relative c' {
  \tuttiB
  \override Staff.Clef #'stencil = ##f
  \time 2/4
  \no-line { r2 }

  \force-clef-treble
  \tempo 8 = 80 
  \time 4/8
  r8 cis^\mp cis8 16 16 \bar ":|."

  \time 8/4
  \fat-line { r1 r1 }

  \BVowelShift

  \force-clef-treble
  \tempo 4 = 84
  cis4\f 4 8 8 r8
  4 4 8 8 r4 \bar ":|."
  
  \override Staff.Clef #'stencil = ##f
  \no-line s32 \fat-line { s2.... s8 }
  \override TextSpanner.bound-details.left.text = "ritardando"
  \fat-line {s1\startTextSpan s2.. s8 }

  \fat-line \stemless { \hide b4 * 8 s2\stopTextSpan }
}
aiiBLyrics = \lyricmode {
  \markup \box ɪ \skip 1 \skip 1 \skip 1
  \BVowelShiftLyrics
  \markup \box a \skip 1 \skip 1 \skip 1
  \skip 1 \skip 1 \skip 1 \skip 1
}

tiB = \relative c' {
  \tuttiB

  \override Staff.Clef #'stencil = ##f
  \time 4/4
  \no-line { \n \square b2.^\> r4\!  }
  
  \force-clef-tenor
  \tempo 8 = 96
  \time 3/8
  r16 b16^\mp b b b r16 \bar ":|."

  \time 13/8
  \fat-line { r8 r2 r1 }

  \BVowelShift

  \force-clef-tenor
  \tempo 4 = 84
  c4\f 4 8 8 r4 s32 \bar ":|."

  \override Staff.Clef #'stencil = ##f
  \no-line s32 \fat-line { s2... s1 }
  \override TextSpanner.bound-details.left.text = "accellerando"
  \fat-line {s1\startTextSpan s2.. s8 }

  \fat-line \stemless { \hide b4 * 8 s2\stopTextSpan }
}
tiBLyrics = \lyricmode {
  \markup \box ɪ \skip 1 \skip 1 \skip 1
  \BVowelShiftLyrics
  \markup \box a \skip 1 \skip 1 \skip 1
}

tiiB = \relative c' {
  \tuttiB

  \override Staff.Clef #'stencil = ##f
  \time 5/4
  \no-line { \n \square b1^\> r4\! }
  
  \force-clef-tenor
  \tempo 8 = 104
  \time 4/8
  r8 a16^\mp a a a r8 \bar ":|."

  \time 10/8
  \fat-line { r4 r1 }

  \BVowelShift

  \force-clef-tenor
  \tempo 4 = 84
  bes4\f 4 8 8 r4 s32 \bar ":|."
  
  \override Staff.Clef #'stencil = ##f
  \no-line s32 \fat-line { s2... s1 }
  \override TextSpanner.bound-details.left.text = "ritardando"
  \fat-line {s1\startTextSpan s2.. s8}

  \fat-line \stemless { \hide b4 * 8 s2\stopTextSpan }
}
tiiBLyrics = \lyricmode {
  \markup \box ɪ \skip 1 \skip 1 \skip 1
  \BVowelShiftLyrics
  \markup \box a \skip 1 \skip 1 \skip 1
}

biB = {
  \tuttiB

  \override Staff.Clef #'stencil = ##f
  \time 5/4
  \no-line { \n \square \stemless d1^\> r4\! }

  \force-clef-bass
  \tempo 8 = 76
  \time 6/8
  r8 e^\mp \tuplet 3/2 {e8 e e} e8 e8 \bar ":|."

  \time 4/4
  \fat-line { r1 }

  \clef "treble_8"
  \BVowelShift
  \clef "bass"

  \force-clef-bass
  \tempo 4 = 84
  f4\f 4 8 8 r4
  4 4 8 8 r8 \bar ":|."

  \override Staff.Clef #'stencil = ##f
  \no-line s32 \fat-line { s2.... s8 }
  \override TextSpanner.bound-details.left.text = "accellerando"
  \fat-line {s1\startTextSpan s2.. s8}

  \fat-line {s1 s1 s2\stopTextSpan  }
}
biBLyrics = \lyricmode {
  \markup \box ɪ \skip 1 \skip 1 \skip 1 \skip 1 \skip 1
  \BVowelShiftLyrics
  \markup \box a \skip 1 \skip 1 \skip 1
  \skip 1 \skip 1 \skip 1 \skip 1
}

biiB = {
  \tuttiB

  \override Staff.Clef #'stencil = ##f
  \time 7/4
  \no-line { r1 r2. }

  \force-clef-bass
  \tempo 8 = 72
  \time 7/16
  dis8^\mp 8 16 16 r \bar ":|."

  \time 13/16
  \fat-line { r16 r4 r2 }

  \clef "treble_8"
  \BVowelShift
  \clef "bass"

  \force-clef-bass
  \tempo 4 = 84
  es4\f 4 8 8 r4
  4 4 8 8 r8 \bar ":|."

  \override Staff.Clef #'stencil = ##f
  \no-line s32 \fat-line { s2.... s8 }
  \override TextSpanner.bound-details.left.text = "ritardando"
  \fat-line {s1\startTextSpan \n s2.^\> s8\!\stopTextSpan } \no-line s8

  \force-clef-bass
  \stemless { \n es2\glissando^\< s2. s1 d?4\ff }
}
biiBLyrics = \lyricmode {
  \markup \box ɪ \skip 1 \skip 1 \skip 1
  \BVowelShiftLyrics
  \markup \box a \skip 1 \skip 1 \skip 1
  \skip 1 \skip 1 \skip 1 \skip 1
  \markup \box a \skip 1
}

tuttiC = {
  \override TextScript.extra-offset = #'(0 . -9)
}
conductorC = {
  \bar "" 
  \pageBreak
  \hide b1-\tweak HorizontalBracketText.text "10\"" 
    \startGroup s2. \hide b4\stopGroup
  \hide b4-\tweak HorizontalBracketText.text "10\"" 
    \startGroup s4 s4 \hide b4\stopGroup

  \bar ""
  \pageBreak
  \hide b4-\tweak HorizontalBracketText.text "10\"" 
    \startGroup s4 s4 \hide b4\stopGroup
  \hide b4-\tweak HorizontalBracketText.text "10\"" 
    \startGroup s4 s4 \hide b4\stopGroup
  \hide b4-\tweak HorizontalBracketText.text "10\"" 
    \startGroup s4 s4 \hide b4\stopGroup
  \hide b4-\tweak HorizontalBracketText.text "10\"" 
    \startGroup s4 s4 \hide b4\stopGroup

  \bar "" \pageBreak
}
siC = \relative c'' {
  \tuttiC
  \no-line {s1 s1 }
  \force-clef-treble \n \stemless dis2^\< s4. s8\ff
  \no-line s1
  \force-clef-treble \n \stemless e2^\< s4. s8\ff
  \no-line s1
  \force-clef-treble \n \stemless f2^\< s4. s8\ff
  
  \stemless fis2 s1 s1 s2
}
siCLyrics = \lyricmode {
  \markup \box a
  \markup \box a
  \markup \box a
  \markup \box z
}
siiC = {
  \tuttiC
  \no-line {
    \hide g1^\sp^\markup { \column {
      "The basis of an aesthetic act is the pure idea" 
      "But the pure idea is, of necessity, an aesthetic act"
      "Here then is the paradox that is the artist's problem" } }
    s2 s4. }
  \bar ":|."
  \no-line s16
  \fat-line { s1 s16 }
  \fat-line { \hide b1 }
  \fat-line { \hide b1 }
  \fat-line { \hide b1 }
  \fat-line { \hide b1 }
  \fat-line \stemless { \n \hide b2\> } \no-line { s2\! }
  
  \force-clef-treble
  \relative c'' {
    \n \stemless fis2^\< s2^\pp s1
  }
}
siiCLyrics = \lyricmode { 
  \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1
  \markup \box z
}
aiC = {
  \tuttiC
  \pageBreak
  \no-line {
    \hide g1^\sp^\markup { \column {
      "The basis of an aesthetic act is the pure idea" 
      "But the pure idea is, of necessity, an aesthetic act"
      "Here then is the paradox that is the artist's problem" } }
    s2 s4. }
  \bar ":|."
  \no-line s16
  \fat-line { s1 s16 }
  \fat-line { \hide b1 }
  \fat-line { \hide b1 }
  \fat-line { \hide b1 }
  \fat-line { \hide b1 }
  \fat-line { \n \hide b1\> } \no-line s2\!

  \force-clef-treble
  \relative c'' {
    \n \stemless ais2^\< s2^\pp s2
  }
}
aiCLyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1
  \markup \box z
}
aiiC = {
  \tuttiC
  \pageBreak
  \no-line {
    \hide g1^\sp^\markup { \column {
      "Not space cutting nor space building"
      "Not construction nor fauvist destruction"
      "Not the pure line, straight and narrow" } }
    s2 s4 }
  \bar ":|."
  \no-line s16
  \fat-line { s1 s8. }
  \fat-line { \hide b1 }
  \fat-line { \hide b1 }
  \fat-line { \hide b1 }
  \fat-line { \hide b1 }
  \fat-line { \n \hide b1\> s4 } \no-line s2\!

  \force-clef-treble
  \relative c'' {
    \n \stemless ais2^\< s2^\pp s4
  }
}
aiiCLyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1
  \markup \box z
}
tiC = {
  \tuttiC
  \pageBreak
  \no-line {
    \hide g1^\sp^\markup { \column {
      "Nor the tortured line, distorted and humiliating"
      "Not the accurate eye, all fingers"
      "Nor the wild eye of dream, winking" } }
    s2.. }
  \bar ":|."
  \no-line s16
  \fat-line { s1 s16 }
  \fat-line { \hide b1 }
  \fat-line { \hide b1 }
  \fat-line { \hide b1 }
  \fat-line { \hide b1 }
  \fat-line { \n \hide b1\> s2 } \no-line s4\! \force-clef-tenor s4

  \relative c' {
    \n \stemless fis2^\< s2^\pp
  }
}
tiCLyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1
  \markup \box z
}
tiiC = {
  \tuttiC
  \pageBreak
  \no-line {
    \hide g1^\sp^\markup { \column {
      "But the idea-complex"
      "That makes contact with mystery"
      "Of life, of me, of nature" } }
    s2 s16 }
  \bar ":|."
  \no-line s16
  \fat-line { s1 s4. }
  \fat-line { \hide b1 }
  \fat-line { \hide b1 }
  \fat-line { \hide b1 }
  \fat-line { \hide b1 }
  \fat-line { \n \hide b1\> s2. } \no-line s4\! \force-clef-tenor s4

  \relative c' {
    \n \stemless fis2^\< s4^\pp
  }
}
tiiCLyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1
  \markup \box z
}
biC = {
  \tuttiC
  \pageBreak
  \no-line {
    \hide g1^\sp^\markup { \column {
      "But the idea-complex"
      "That makes contact with mystery"
      "Of life, of me, of nature" } }
    s2 s16 }
  \bar ":|."
  \no-line s16
  \fat-line { s1 s4. }
  \fat-line { \hide b1 }
  \fat-line { \hide b1 }
  \fat-line { \hide b1 }
  \fat-line { \hide b1 }
  \fat-line { \n \hide b2.\> } \no-line { s4\! }
  
  \force-clef-bass
  \relative c {
    \n \stemless a2^\< s2^\pp s1
  }
}
biCLyrics = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1
  \markup \box z
}
biiC = \relative c {
  \tuttiC
  \no-line { s1 s1 } 
  \force-clef-bass \n \stemless d2^\< s4. s8\ff
  \no-line s1
  \force-clef-bass \n \stemless cis2^\< s4. s8\ff
  \no-line s1
  \force-clef-bass \n \stemless b2^\< s4. s8\ff \breathe

  \stemless a2 s1 s1 s2
}
biiCLyrics = \lyricmode {
  \markup \box a
  \markup \box a
  \markup \box a
  \markup \box z
}

%consolidated voices
si = {
  \siA 
  \siB
  \siC
}
sii = {
  \siiA 
  \siiB
  \siiC
}
ai = {
  \aiA 
  \aiB
  \aiC
}
aii = {
  \aiiA 
  \aiiB
  \aiiC
}
ti = {
  \tiA 
  \tiB
  \tiC
}
tii = {
  \tiiA 
  \tiiB
  \tiiC
}
bi = {
  \biA 
  \biB
  \biC
}
bii = {
  \biiA 
  \biiB
  \biiC
}
siLyrics = { 
  \siALyrics
  \siBLyrics
  \siCLyrics
}
siiLyrics = { 
  \siiALyrics 
  \siiBLyrics 
  \siiCLyrics 
}
aiLyrics = { 
  \aiALyrics 
  \aiBLyrics 
  \aiCLyrics 
}
aiiLyrics = {
  \aiiALyrics 
  \aiiBLyrics 
  \aiiCLyrics 
}
tiLyrics = {
  \tiALyrics 
  \tiBLyrics 
  \tiCLyrics 
} 
tiiLyrics = {
  \tiiALyrics 
  \tiiBLyrics 
  \tiiCLyrics 
}
biLyrics = {
  \biALyrics 
  \biBLyrics 
  \biCLyrics 
}
biiLyrics = {
  \biiALyrics 
  \biiBLyrics 
  \biiCLyrics 
}

global = {
    \time 2/4
    \key c \major
}

\score {
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
        \conductorA
        \conductorB
        \conductorC
      }
      \new Staff = "si" \with {
        instrumentName = "S"
        shortInstrumentName = "S"
      }\new Voice = "si" {
        \clef "treble"
        \global
        \si
      }
      \new Lyrics \lyricsto "si" { \siLyrics }

      \new Staff = "sii" \with {
        instrumentName = "S"
        shortInstrumentName = "S"
        \RemoveAllEmptyStaves
      }\new Voice = "sii" {
        \clef "treble"
        \global
        \sii
      }
      \new Lyrics \lyricsto "sii" { \siiLyrics }

      \new Staff = "ai" \with {
        instrumentName = "A"
        shortInstrumentName = "A"
      }\new Voice = "ai" {
        \clef "treble"
        \global
        \ai
      }
      \new Lyrics \lyricsto "ai" { \aiLyrics }

      \new Staff = "aii" \with {
        instrumentName = "A"
        shortInstrumentName = "A"
        \RemoveAllEmptyStaves
      }\new Voice = "aii" {
        \clef "treble"
        \global
        \aii
      }
      \new Lyrics \lyricsto "aii" { \aiiLyrics }

      \new Staff = "ti" \with {
        instrumentName = "T"
        shortInstrumentName = "T"
        \RemoveAllEmptyStaves
      }\new Voice = "ti" {
        \clef "treble_8"
        \global
        \ti
      }
      \new Lyrics \lyricsto "ti" { \tiLyrics }

      \new Staff = "tii" \with {
        instrumentName = "T"
        shortInstrumentName = "T"
        \RemoveAllEmptyStaves
      }\new Voice = "tii" {
        \clef "treble_8"
        \global
        \tii
      }
      \new Lyrics \lyricsto "tii" { \tiiLyrics }
      
      \new Staff = "bi" \with {
        instrumentName = "B"
        shortInstrumentName = "B"
      }\new Voice = "bi" {
        \clef "bass"
        \global
        \bi
      }
      \new Lyrics \lyricsto "bi" { \biLyrics }

      \new Staff = "bii" \with {
        instrumentName = "B"
        shortInstrumentName = "B"
        \RemoveAllEmptyStaves
      }\new Voice = "bii" {
        \clef "bass"
        \global
        \bii
      }
      \new Lyrics \lyricsto "bii" { \biiLyrics }
    %>>
  >>
}
\layout {
  \context {
    \Global
    \grobdescriptions #all-grob-descriptions
  }
  \context {
    \Score
    %proportionalNotationDuration = #(ly:make-moment 1/16)
    %\override SpacingSpanner.strict-note-spacing = ##t
    %\override SpacingSpanner.uniform-stretching = ##t
    \remove "Timing_translator"
    \remove "Default_bar_line_engraver"
    \remove "Metronome_mark_engraver"
  }
  \context {
    \Staff
    \numericTimeSignature
    \consists "Timing_translator"
    \consists "Default_bar_line_engraver"
    \consists "Metronome_mark_engraver"
    \consists \frameEngraver
  }
  \context {
    \Voice
    \override Glissando.thickness = #2.5
    \consists "Horizontal_bracket_engraver"
  }
}
\paper {
  system-separator-markup = \slashSeparator
  #(set! paper-alist (cons '("ipad pro" . (cons ( * 220 mm) ( * 305 mm))) paper-alist))
  #(set! paper-alist (cons '("montalvo" . (cons ( * 11  in) ( * 14  in))) paper-alist))
  #(set-paper-size "letter")
  
  indent = 0.5\in

  top-margin = 0.5\in
  left-margin = 0.5\in
  right-margin = 0.5\in
  bottom-margin = 0.5\in

  markup-system-spacing =
    #'((basic-distance    . 15)
       (minimum-distance  . 10)
       (padding           . 5 )
       (stretchability    . 1 ))

  system-system-spacing =
    #'((basic-distance    . 15)
       (minimum-distance  . 10)
       (padding           . 5 )
       (stretchability    . 10))
}
