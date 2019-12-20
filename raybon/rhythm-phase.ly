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
  title = "Rhythm Phase"
  subtitle = ""
  composer = "Z.V. Pine"
  tagline = ""
}

%tuttiB = {
%  \set tieWaitForNote = ##t
%  \override Hairpin.to-barline = ##f
%  \omit Score.TimeSignature
%  \set Score.defaultBarType = #""
%  \set tieWaitForNote = ##t
%  \override Hairpin.to-barline = ##f
%
%  \set Staff.tempoEquationText = "="
%  \override Staff.Clef.full-size-change = ##t
%  \override Staff.Clef #'stencil = ##f
%  \override Staff.ClefModifier #'stencil = ##f
%}
%
%conductorB = {
%    \hide b1-\tweak HorizontalBracketText.text "8\""
%      \startGroup s2... \hide b16 \stopGroup
%}
%siBDynamics = {
%}
%siB = \relative c'' {
%  \tuttiB
%}
%siBLyrics = \lyricmode {
%}
%
%siiBDynamics = {
%}
%siiB = \relative c'' {
%  \tuttiB
%}
%siiBLyrics = \lyricmode {
%}
%
%aiBDynamics = {
%}
%aiB = \relative c'' {
%  \tuttiB
%}
%aiBLyrics = \lyricmode {
%}
%
%aiiBDynamics = {
%}
%aiiB = \relative c'' {
%  \tuttiB
%}
%aiiBLyrics = \lyricmode {
%}
%
%tiBDynamics = {
%}
%tiB = \relative c' {
%  \tuttiB
%}
%tiBLyrics = \lyricmode {
%}
%
%tiiBDynamics = {
%}
%tiiB = \relative c' {
%  \tuttiB
%}
%tiiBLyrics = \lyricmode {
%}
%
%biBDynamics = {
%}
%biB = {
%}
%
%biBLyrics = \lyricmode {
%}
%
%biiBDynamics = {
%}
%biiB = \relative c {
%  \tuttiB
%}
%biiBLyrics = \lyricmode {

tuttiB = {
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

conductorB = {
    \hide b1-\tweak HorizontalBracketText.text "8\"" 
      \startGroup s2... \hide b16 \stopGroup
    \break
    \hide b1-\tweak HorizontalBracketText.text "24\"" 
      \startGroup s1 * 4 s2... \hide b16 \stopGroup
    \break
    \hide b1-\tweak HorizontalBracketText.text "16\"" 
      \startGroup s1 * 2 s2... \hide b16 \stopGroup
    \hide b1-\tweak HorizontalBracketText.text "16\"" 
      \startGroup s1 * 2 s2... \hide b16 \stopGroup
    \break
    \hide b1-\tweak HorizontalBracketText.text "24\"" 
      \startGroup s1 * 4 s2... \hide b16 \stopGroup
}
siBDynamics = {
}
siB = \relative c'' {
  \tuttiB
  \tempo 4 = 92
  \force-clef-treble
  r8 cis8^\p 8 16 16 \bar ":|."
  \fat-line { s2 | s1 }
  \no-clef
  \override TextSpanner.bound-details.left.text = "accelerando"
  \fat-line { s1\startTextSpan | s1 }
  \fat-line { \tempo 4 = 108 s1\stopTextSpan | s1 }
  \fat-line { s1 | s1 }
  \fat-line { s1 | s1 }
  \fat-line { s1 | s1 }

  \fat-line { s1 | s1 }
  \fat-line { s1 | s1 }

  \fat-line { s1 | s1 }
  \fat-line s1 \no-line \square b1
  \force-clef-treble \stemless { d2\glissando s2 s2. e4 }
}
siBLyrics = \lyricmode {
  \markup {\box nɑ}1 \skip 1 

  \skip 1 \skip 1
  \skip 1 \markup {\italic shift → }1
  \markup {\box nɔ}1 \skip 1
  \markup {\italic shift → }1 \skip 1
  \markup {\box no}1 \skip 1

  \skip 1 \skip 1
  \skip 1 \skip 1

  \skip 1 \skip 1
  \skip 1 \markup {\box s}1
  \markup {\box a}1 \skip 1
}

siiBDynamics = {
}
siiB = \relative c'' {
  \tuttiB
  \tempo 4 = 92
  \force-clef-treble
  r8 cis8^\p 8 16 16 \bar ":|."
  \fat-line { s2 | s1 }
  \no-clef
  \override TextSpanner.bound-details.left.text = "ritardando"
  \fat-line { s2 s2\startTextSpan | s1 }
  \fat-line { s4\tempo 4 = 88 s2.\stopTextSpan | s1 }
  \fat-line { s1 | s1 }
  \fat-line { s1 | s1 }
  \fat-line { s1 | s1 }
  \fat-line { s1 | s1 }
  \fat-line { s1 | s1 }

  \fat-line s1 \no-line { \square b1 }
  \fat-line { s1 | s1 }
  \fat-line { s1 | s1 }
}
siiBLyrics = \lyricmode {
  \markup {\box nɑ}1 \skip 1 

  \skip 1 \skip 1
  \skip 1 \markup {\italic shift → }1
  \markup {\box nɔ}1 \skip 1
  \markup {\italic shift → }1 \skip 1
  \markup {\box no}1 \skip 1

  \skip 1 \skip 1
  \skip 1 \skip 1

  \skip 1 \markup {\box s}1
  \markup {\box nɑ}1 \skip 1
  \skip 1 \skip 1
}

aiBDynamics = {
}
aiB = \relative c' {
  \tuttiB
  \tempo 4 = 92
  \force-clef-treble
  r8 d8^\p 8 16 16 16 \bar ":|." 
  \fat-line { s4.. | s1 }
  \no-clef
  \override TextSpanner.bound-details.left.text = "accelerando"
  \fat-line { s1 | s1\startTextSpan  }
  \fat-line { s2 \tempo 4 = 104 s2\stopTextSpan | s1 }
  \fat-line { s1 | s1 }
  \fat-line { s1 | s1 }
  \fat-line { s1 | s1 }
  \fat-line { s1 | s1 }
  \fat-line s1 \no-line { \square b1 }

  \fat-line { s1 | s1 }
  \fat-line { s1 | s1 }
  \fat-line { s1 | s1 }
}
aiBLyrics = \lyricmode {
  \markup {\box nɑ}1 \skip 1 

  \skip 1 \skip 1
  \skip 1 \markup {\italic shift → }1
  \markup {\box nɔ}1 \skip 1
  \markup {\italic shift → }1 \skip 1
  \markup {\box no}1 \skip 1
  \skip 1 \skip 1
  \skip 1 \markup {\box s}1

  \markup {\box nɑ}1 \skip 1
  \skip 1 \skip 1
  \skip 1 \skip 1
}

aiiBDynamics = {
}
aiiB = \relative c' {
  \tuttiB
  \tempo 4 = 92
  \force-clef-treble
  r8 d8^\p 8 16 16 16 \bar ":|."
  \fat-line { s4.. | s1 }
  \no-clef
  \override TextSpanner.bound-details.left.text = "ritardando"
  \fat-line { s1 | s2 s2 \startTextSpan }
  \fat-line { s2. \tempo 4 = 84 s4\stopTextSpan | s1 }
  \fat-line { s1 | s1 }
  \fat-line { s1 | s1 }
  \fat-line { s1 | s1 }
  \fat-line s1 \no-line { \square b'1 }
  \fat-line { s1 | s1 }
  
  \fat-line { s1 | s1 }
  \fat-line { s1 | s1 }
  \fat-line { s1 | s1 }
}
aiiBLyrics = \lyricmode {
  \markup {\box nɑ}1 \skip 1 

  \skip 1 \skip 1
  \skip 1 \markup {\italic shift → }1
  \markup {\box nɔ}1 \skip 1
  \markup {\italic shift → }1 \skip 1
  \markup {\box no}1 \skip 1
  \skip 1 \markup {\box s}1
  \markup {\box nɑ}1 \skip 1
}

tiBDynamics = {
}
tiB = \relative c' {
  \tuttiB
  \tempo 4 = 92
  \force-clef-tenor
  r8 d8^\p 16 16 r16 8. \bar ":|."
  \fat-line { s4. | s1 }
  \no-clef
  \override TextSpanner.bound-details.left.text = "accelerando"
  \fat-line { s1 | s2 s2\startTextSpan }
  \fat-line { s2. \tempo 4 = 100 s4\stopTextSpan | s1 }
  \fat-line { s1 | s1 }
  \fat-line { s1 | s1 }
  \fat-line { s1 | s1 }
  \fat-line { s1 | s1 }
  \fat-line { s1 | s1 }
  \no-line { \square b1 } \fat-line s1 

  \fat-line { s1 | s1 }
  \fat-line { s1 | s1 }
}
tiBLyrics = \lyricmode {
  \markup {\box nɑ}1 \skip 1 

  \skip 1 \skip 1
  \skip 1 \markup {\italic shift → }1
  \markup {\box nɔ}1 \skip 1
  \markup {\italic shift → }1 \skip 1
  \markup {\box no}1 \skip 1
  \skip 1 \skip 1
  \skip 1 \skip 1

  \markup {\box s}1 \markup {\box nɑ}1
  \skip 1 \skip 1
  \skip 1 \skip 1
}

tiiBDynamics = {
}
tiiB = \relative c' {
  \tuttiB
  \tempo 4 = 92
  \force-clef-tenor
  r8 d8^\p 16 16 r16 8. \bar ":|."
  \fat-line { s4. | s1 }
  \no-clef
  \override TextSpanner.bound-details.left.text = "ritardando"
  \fat-line { s1 | s1\startTextSpan }
  \fat-line { s2 \tempo 4 = 80 s2\stopTextSpan | s1 }
  \fat-line { s1 | s1 }
  \fat-line { s1 | s1 }

  \fat-line { s1 | s1 }
  \fat-line { s1 | s1 }
  \no-line { \square b1 } \fat-line s1

  \fat-line { s1 | s1 }
  \fat-line { s1 | s1 }
  \fat-line { s1 | s1 }
}
tiiBLyrics = \lyricmode {
  \markup {\box nɑ}1 \skip 1 

  \skip 1 \skip 1
  \skip 1 \markup {\italic shift → }1
  \markup {\box nɔ}1 \skip 1
  \markup {\italic shift → }1 \skip 1
  \markup {\box no}1 \skip 1
  \skip 1 \skip 1
  \markup {\box s}1 \markup {\box no}1
  \skip 1 \skip 1
}

biBDynamics = {
}
biB = \relative c {
  \tuttiB
  \tempo 4 = 92
  \force-clef-bass
  r8 b8^\p 8 16 16 r16 16 16 16 \bar ":|."
  \fat-line { s4 | s1 }
  \no-clef
  \override TextSpanner.bound-details.left.text = "accelerando"
  \fat-line { s2 s2\startTextSpan | s1 }
  \fat-line { s4 \tempo 4 = 96 s2.\stopTextSpan | s1 }
  \fat-line { s1 | s1 }

  \fat-line { s1 | s1 }
  \fat-line { s1 | s1 }
  \no-line { \square b1 } \fat-line s1
  \fat-line { s1 | s1 }

  \fat-line { s1 | s1 }
  \fat-line { s1 | s1 }
  \fat-line { s1 | s1 }

}
biBLyrics = \lyricmode {
  \markup {\box nɑ}1 \skip 1 

  \skip 1 \skip 1
  \skip 1 \markup {\italic shift → }1
  \markup {\box nɔ}1 \skip 1
  \markup {\italic shift → }1 \skip 1
  \markup {\box no}1 \skip 1
  \markup {\box s}1 \markup {\box nɑ}1
  \skip 1 \skip 1

  \skip 1 \skip 1
  \skip 1 \skip 1
}
biiBDynamics = {
}
biiB = \relative c {
  \tuttiB
  \tempo 4 = 92
  \force-clef-bass
  r8 b8^\p 8 16 16 r16 16 16 16 \bar ":|."
  \fat-line { s4 | s1 }
  \no-clef
  \override TextSpanner.bound-details.left.text = "ritardando"
  \fat-line { s1\startTextSpan | s1 }
  \fat-line { \tempo 4 = 76 s1\stopTextSpan | s1 }
  \fat-line { s1 | s1 }
  \fat-line { s1 | s1 }
  \fat-line { s1 | s1 }
  
  \fat-line { s1 | s1 }
  \fat-line { s1 | s1 }

  \fat-line { s1 | s1 }
  \no-line { \square b1 s1 } 
  \force-clef-bass \stemless { bes2\glissando s2 s2. aes4 }
}
biiBLyrics = \lyricmode {
  \markup {\box nɑ}1 \skip 1 

  \skip 1 \skip 1
  \skip 1 \markup {\italic shift → }1
  \markup {\box nɔ}1 \skip 1
  \markup {\italic shift → }1 \skip 1
  \markup {\box no}1 \skip 1
  
  \skip 1 \skip 1
  \skip 1 \skip 1

  \skip 1 \skip 1
  \markup {\box s}1 \skip 1
  \markup {\box a}1 \skip 1
}

%consolidated voices
conductor = {
  \conductorB
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
  \siB
}
sii = {
  \siiB
}
ai = {
  \aiB
}
aii = {
  \aiiB
}
ti = {
  \tiB
}
tii = {
  \tiiB
}
bi = {
  \biB
}
bii = {
  \biiB
}
siLyrics = { 
  \siBLyrics
}
siiLyrics = { 
  \siiBLyrics 
}
aiLyrics = { 
  \aiBLyrics 
}
aiiLyrics = {
  \aiiBLyrics 
}
tiLyrics = {
  \tiBLyrics 
} 
tiiLyrics = {
  \tiiBLyrics 
}
biLyrics = {
  \biBLyrics 
}
biiLyrics = {
  \biiBLyrics 
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
        \override Stem.length = #0
        \override Flag.stencil = ##f
        \conductor
      }
      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \siDynamics }
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

      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \siiDynamics }
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

      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \aiDynamics }
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

      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \aiiDynamics }
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

      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \tiDynamics }
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

      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \tiiDynamics }
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
      
      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \biDynamics }
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

      %\new Dynamics \with {
      %  \override VerticalAxisGroup.staff-affinity = #DOWN
      %  \override VerticalAxisGroup.
      %    nonstaff-relatedstaff-spacing.basic-distance = #0
      %}{ \biiDynamics }
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
    %proportionalNotationDuration = #(ly:make-moment 1/4)
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
  \context {
    \Dynamics
    \consists "Metronome_mark_engraver"
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
