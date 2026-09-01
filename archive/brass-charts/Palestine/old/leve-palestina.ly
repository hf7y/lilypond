\version "2.24.1"
% automatically converted by musicxml2ly from Leve Palestina v2.mxl
\pointAndClickOff

\include "Phone.ly"

\header {
    title =  "Leve Palestina"
    composer =  "Kofia"
    % encodingsoftware =  "MuseScore 4.2.0"
    % encodingdate =  "2024-01-26"
    }

global =  {
    \numericTimeSignature
    \time 4/4 
    \key bes \major | % 1
    \tempo 4=100 
    \sectionLabel Intro
    s1*4

    \repeat volta 2 {
        | % 5
        \mark #1  s1 | % 6
        s1
        }
    \repeat volta 2 {
        | % 7
        s1 | % 8
        s1
        }
    \cueBox "The form is Intro, AB AB AB AB AB... each B having a different featured group"
    \repeat volta 2 {
        | % 9
        \override TextSpanner.bound-details.left.text = "Featured group"
        \override TextSpanner.style = #'line
        \override TextSpanner.bound-details.right.text =
            \markup { \draw-line #'(0 . -1) }
        \mark #2  s2..\startTextSpan s8\stopTextSpan
        | \barNumberCheck #10
        s1 | % 11
        s2..\startTextSpan s8\stopTextSpan | % 12
        s1
        }
    | % 13
    s1\startTextSpan | % 14
    s2.. s8\stopTextSpan | % 15
    s1 | % 16
    s1 \bar "|."
    }

bass =  \relative g, {
    \numericTimeSignature\time 4/4 \key bes \major | % 1
    \compressMMRests R1*4 \repeat volta 2 {
        | % 5
          g4 r8   f8   g4 r8   f8 | % 6
          g4 r8   f8   g4 r8   f8 }
    \repeat volta 2 {
        | % 7
          g4 r8   f8   g4 r8   f8 | % 8
          g4 r8   f8   g4 r8   f8 }
    \repeat volta 2 {
        | % 9
          g4 r8   f8   g4 r8   f8 |
        \barNumberCheck #10
          g4 r8   f8   g4 r8   f8 | % 11
          g4 r8   f8   g4 r8   f8 | % 12
          g4 r8   f8   g4 r8   f8 }
    | % 13
      g4 r8   f8   g4 r8   f8 | % 14
      g4 r8   f8   g4 r8   f8 | % 15
      g4 r8   f8   g4 r8   f8 | % 16
      g4 r4        f'8 [   es8 ]   d4 \bar
    "|."
    }

\bookpart {
\header {
    instrument = "Bass"
}
\score {
    <<
        % \context ChordNames = "bassChords" { \bassChords}
        \new Staff
        <<
            % \set Staff.instrumentName = "Bass"
            % \set Staff.shortInstrumentName = "Bs"
            
            \clef "bass" \bass
            \global
            >>
        >>
    }
}