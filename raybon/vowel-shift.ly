%chorus.ly
%Created on 10 21, 2019 at 17:22

\version "2.19.83"
\include "/home/zach/lilypond/raybon/definitions.ily"
\include "/home/zach/lilypond/z/note.ily"
\include "/home/zach/lilypond/z/square.ily"
\include "/home/zach/lilypond/z/dynamic.ily"
\include "/home/zach/lilypond/z/staff.ily"
\include "/home/zach/lilypond/z/metronome.ily"
\include "/home/zach/lilypond/z/frameEngraver.ily"

\header {
  title = "Vowel Shift"
  subtitle = ""
  composer = "Z.V. Pine"
  tagline = ""
}

tuttiA = {
  \omit Score.TimeSignature
  \set Score.defaultBarType = #""
  %\override Stem.thickness = #-1.0
  \override Flag.transparent = ##t
  \override Beam.transparent = ##t
  \set tieWaitForNote = ##t
  \override Hairpin.to-barline = ##f
}

conductorA = {
  \override Stem.length = #0
  \override Flag.stencil = ##f
}
siA = \relative c'' {
  \tuttiA
}
siALyrics = \lyricmode {
}

siiA = \relative c'' {
  \tuttiA
}
siiALyrics = \lyricmode {
}

aiA = \relative c' {
  \tuttiA
}

aiALyrics = \lyricmode {
}

aiiA = \relative c' {
  \tuttiA
}
aiiALyrics = \lyricmode {
}

tiA = \relative c' {
  \tuttiA
}
tiALyrics = \lyricmode {
}

tiiA = \relative c {
  \tuttiA
}

tiiALyrics = \lyricmode {
}

biA = \relative c {
  \tuttiA
}
biALyrics = \lyricmode {
}

biiA = \relative c {
  \tuttiA
}
biiALyrics = \lyricmode {
}

tuttiB = {
  \set tieWaitForNote = ##t
  \override Hairpin.to-barline = ##f
  \omit Score.TimeSignature
  \set Score.defaultBarType = #""
  %\revert Stem.thickness
  %\revert Flag.transparent
  %\revert Beam.transparent
  \set tieWaitForNote = ##t
  \override Hairpin.to-barline = ##f

  \set Staff.tempoEquationText = "= ca."
  \override Staff.Stem.length = #0
  \override Staff.Clef.full-size-change = ##t
  \override Staff.Clef #'stencil = ##f
  \override Staff.ClefModifier #'stencil = ##f
}

conductorB = {
    \hide b1-\tweak HorizontalBracketText.text "8\"" 
      \startGroup s2... \hide b16 \stopGroup
    \hide b1-\tweak HorizontalBracketText.text "8\"" 
      \startGroup s2... \hide b16 \stopGroup
    \hide b2-\tweak HorizontalBracketText.text "8\"" 
      \startGroup s2 \hide b2 \hide b4 s8. \hide b16 \stopGroup
    \hide b1-\tweak HorizontalBracketText.text "8\"" 
      \startGroup s2... \hide b16 \stopGroup
}
siBDynamics = {
  s1 s1 
  s1\pp s1
  s1 s1
  \n s1\< s2.. s8\ff
}
siB = \relative c'' {
  \tuttiB
  \fat-line 
  {
    \hide b1 s1 \breathe 
    \hide b1 s1
    s1 s1
 }
 b2\glissando s2 s2. cis4
}
siBLyrics = \lyricmode {

  \markup {\box m}1 \skip 1
  %\markup {\raise #2 \musicglyph #"scripts.rcomma"}
  \markup {\box s}1 \skip 1
  \skip 1 \markup {\box m}1
  \markup {\box a}1 \skip 1
}

siiBDynamics = {
  s1 s2 s2\pp
  s1 \n s1\> 
  s2\! s2\pp s1
  s1 s1
}
siiB = \relative c'' {
  \tuttiB
  \fat-line 
  {
    \hide b1 s2 \breathe \hide b2 
    s1 s1
    s1 s1
    s1 s1
  }
}
siiBLyrics = \lyricmode {
  \markup {\box m}1 \skip 2 \markup {\box n}2
  \skip 1 \skip 1
  \skip 2 \markup {\box m}2 \skip 1
  \markup {\box n}1 \skip 1

}

aiBDynamics = {
  s1 s1\pp
  s1 s1 
  s1 s1 
  s1 s1 
}
aiB = \relative c'' {
  \tuttiB
  \fat-line 
  {
    \hide b1 \breathe \hide b1
    s2 \hide b2 s1
    s1 s1
    s1 s1
  }
}
aiBLyrics = \lyricmode {
  \markup \box m \markup \box n
  \markup \box s \skip 1
  \skip 1 \skip 4 \markup {\box m}2.
  \markup {\box n}1 \skip 1
}

aiiBDynamics = {
  s2 s2\pp s1 
  s1 \n s1\>
  s1\pp s1
  s1 s1
}
aiiB = \relative c'' {
  \tuttiB
  \fat-line 
  {
    \hide b2\breathe \hide b1 s2 
    s1 s1
    s1 s1
    s1 s1
  }
}
aiiBLyrics = \lyricmode {
  \markup {\box m}2 \markup \box n \skip 1
  \skip 1 \skip 1
  \markup {\box m}1 \skip 1
  \markup \box s \skip 1
}

tiBDynamics = {
  s2 s2\pp s1 
  s1 s1 
  s1 s1 
  s1 s1 
}
tiB = \relative c' {
  \tuttiB
  \fat-line 
  {
    \hide b2\breathe \hide b1 s2
    s2 \hide b2 s1
    s1 s1
    s1 s1
  }
}
tiBLyrics = \lyricmode {
  \markup {\box m}2 \markup \box n \skip 1
  \markup {\box s}1 \skip 1
  \skip 4 \markup {\box m}2. \skip 1
  \markup {\box n}1 \skip 1
}

tiiBDynamics = {
  s1 s1\pp 
  s1 \n s1\> 
  s1\! s1\pp
  s1 s1
}
tiiB = \relative c' {
  \tuttiB
  \fat-line 
  {
    \hide b1\breathe \hide b1 
    s1 s1
    s1 s1
    s1 s1
  }
}
tiiBLyrics = \lyricmode {
  \markup {\box m}1 \markup \box n 
  \skip 1 \skip 1
  \skip 1 \markup {\box m}1
  \markup \box s \skip 1
}

biBDynamics = {
  s1 s2 s2\pp 
  s1 \n s1\> 
  s1\! s2 s2\pp
  s1 s1
}
biB = {
  \tuttiB
  \fat-line 
  {
    \hide d1 s2 \breathe \hide d2 
    s1 s1
    s1 s1
    s1 s1
  }
}
biBLyrics = \lyricmode {
  \markup {\box m}1. \markup {\box n}2
  \skip 1 \skip 1
  \skip 1 \skip 2 \markup {\box m}2
  \markup {\box n}1 \skip 1
}

biiBDynamics = {
  s1 s1 
  s1\pp s1
  s1 s1
  \n s1\< s2.. s8\ff
}
biiB = \relative c {
  \tuttiB
  \fat-line 
  {
    \hide d1 s1 \breathe

    \hide d1 s1 
    s1 s1
  }
  c2\glissando s2 s2. b4
}
biiBLyrics = \lyricmode {
  \markup {\box m}1 \skip 1
  \markup \box s \skip 1
  \skip 1 \skip 2. \markup {\box m}4
  \markup {\box a}1 \skip 1
}

%consolidated voices
conductor = {
  \conductorA
  \conductorB
  %\conductorC
}
siDynamics = {
  \siBDynamics
}
siiDynamics = {
  \siiBDynamics
}
aiDynamics = {
  \aiBDynamics
}
aiiDynamics = {
  \aiiBDynamics
}
tiDynamics = {
  \tiBDynamics
}
tiiDynamics = {
  \tiiBDynamics
}
biDynamics = {
  \biBDynamics
}
biiDynamics = {
  \biiBDynamics
}
si = {
  \siA 
  \siB
  %\siC
}
sii = {
  \siiA 
  \siiB
  %\siiC
}
ai = {
  \aiA 
  \aiB
  %\aiC
}
aii = {
  \aiiA 
  \aiiB
  %\aiiC
}
ti = {
  \tiA 
  \tiB
  %\tiC
}
tii = {
  \tiiA 
  \tiiB
  %\tiiC
}
bi = {
  \biA 
  \biB
  %\biC
}
bii = {
  \biiA 
  \biiB
  %\biiC
}
siLyrics = { 
  \siALyrics
  \siBLyrics
  %\siCLyrics
}
siiLyrics = { 
  \siiALyrics 
  \siiBLyrics 
  %\siiCLyrics
}
aiLyrics = { 
  \aiALyrics 
  \aiBLyrics 
  %\aiCLyrics
}
aiiLyrics = {
  \aiiALyrics 
  \aiiBLyrics 
  %\aiiCLyrics
}
tiLyrics = {
  \tiALyrics 
  \tiBLyrics 
  %\tiCLyrics
} 
tiiLyrics = {
  \tiiALyrics 
  \tiiBLyrics 
  %\tiiCLyrics
}
biLyrics = {
  \biALyrics 
  \biBLyrics 
  %\biCLyrics
}
biiLyrics = {
  \biiALyrics 
  \biiBLyrics 
  %\biiCLyrics
}

global = {
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
        \conductor
      }
      \new Dynamics \with {
        \override VerticalAxisGroup.staff-affinity = #DOWN
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }{ \siDynamics }
      \new Staff = "si" \with {
        instrumentName = "S"
        shortInstrumentName = "S"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
      }\new Voice = "si" {
        \clef "treble"
        \global
        \si
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "si"
      { \siLyrics }

      \new Dynamics \with {
        \override VerticalAxisGroup.staff-affinity = #DOWN
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }{ \siiDynamics }
      \new Staff = "sii" \with {
        instrumentName = "S"
        shortInstrumentName = "S"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
        %\RemoveAllEmptyStaves
      }\new Voice = "sii" {
        \clef "treble"
        \global
        \sii
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-unrelatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "sii"
      { \siiLyrics }

      \new Dynamics \with {
        \override VerticalAxisGroup.staff-affinity = #DOWN
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }{ \aiDynamics }
      \new Staff = "ai" \with {
        instrumentName = "A"
        shortInstrumentName = "A"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
      }\new Voice = "ai" {
        \clef "treble"
        \global
        \ai
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "ai"
      { \aiLyrics }

      \new Dynamics \with {
        \override VerticalAxisGroup.staff-affinity = #DOWN
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }{ \aiiDynamics }
      \new Staff = "aii" \with {
        instrumentName = "A"
        shortInstrumentName = "A"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
        %\RemoveAllEmptyStaves
      }\new Voice = "aii" {
        \clef "treble"
        \global
        \aii
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "aii"
      { \aiiLyrics }

      \new Dynamics \with {
        \override VerticalAxisGroup.staff-affinity = #DOWN
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }{ \tiDynamics }
      \new Staff = "ti" \with {
        instrumentName = "T"
        shortInstrumentName = "T"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
        %\RemoveAllEmptyStaves
      }\new Voice = "ti" {
        \clef "treble_8"
        \global
        \ti
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "ti"
      { \tiLyrics }

      \new Dynamics \with {
        \override VerticalAxisGroup.staff-affinity = #DOWN
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }{ \tiiDynamics }
      \new Staff = "tii" \with {
        instrumentName = "T"
        shortInstrumentName = "T"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
        %\RemoveAllEmptyStaves
      }\new Voice = "tii" {
        \clef "treble_8"
        \global
        \tii
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "tii"
      { \tiiLyrics }
      
      \new Dynamics \with {
        \override VerticalAxisGroup.staff-affinity = #DOWN
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }{ \biDynamics }
      \new Staff = "bi" \with {
        instrumentName = "B"
        shortInstrumentName = "B"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
      }\new Voice = "bi" {
        \clef "bass"
        \global
        \bi
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "bi"
      { \biLyrics }

      \new Dynamics \with {
        \override VerticalAxisGroup.staff-affinity = #DOWN
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }{ \biiDynamics }
      \new Staff = "bii" \with {
        instrumentName = "B"
        shortInstrumentName = "B"
        \override VerticalAxisGroup.
          staff-staff-spacing.basic-distance = #15
        %\RemoveAllEmptyStaves
      }\new Voice = "bii" {
        \clef "bass"
        \global
        \bii
      }
      \new Lyrics \with {
        \override VerticalAxisGroup.
          nonstaff-relatedstaff-spacing.basic-distance = #0
      }
      %\lyricsto "bii"
      { \biiLyrics }
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
    %\override NonMusicalPaperColumn.line-break-permission = ##f
    %\override NonMusicalPaperColumn.page-break-permission = ##f
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
    \remove "Forbid_line_break_engraver"
  }
}
\paper {
  system-separator-markup = \slashSeparator
  #(set! paper-alist (cons '("ipad pro" . (cons ( * 220 mm) ( * 305 mm))) paper-alist))
  #(set! paper-alist (cons '("montalvo" . (cons ( * 11  in) ( * 14  in))) paper-alist))
  #(set-paper-size "letter")
  
  indent = 0.5\in
  ragged-last = ##f

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
