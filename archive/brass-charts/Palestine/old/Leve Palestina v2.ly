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

\layout {
    \context { \Score
        % skipBars = ##t
        % autoBeaming = ##f
        }
    }
global =  \relative f' {
    \numericTimeSignature
    \time 4/4 
    \key bes \major | % 1
    \tempo 4=100 
    % \sectionLabel Intro
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
        \override TextSpanner.bound-details.left.text = "Ft. grp"
        s2..\startTextSpan s8\stopTextSpan | % 12
        s1
        }
    | % 13
    s1\startTextSpan | % 14
    s2.. s8\stopTextSpan | % 15
    s1 | % 16
    s1 \bar "|."
     }

melody =  \relative f' {
    | % 1
    f8 [ ^"Trumpets Only"  g8  g8  g8 ]  f8 ( [
     g8 )  g8 ] r8 | % 2
     f8 [  g8  g8  f8 ]  es8 ( [
     d8 )  d8 ] r8 | % 3
     f8 [ ^ "All Join"  g8  g8  g8 ]  
    f8 ( [  g8 )  g8 ] r8 | % 4
     f8 [  g8  g8  f8 ]  es8 ( [
     d8 )  d8 ] r8 \repeat volta 2 {
        | % 5
        \mark #1  f8 ( [ g8 ) ]
         g4  f8 ( [  g8 ) ]  g4 | % 6
         g8 [  a8  bes8  a8 ]  bes8 [
         a8 ]  g4 }
    \repeat volta 2 {
        | % 7
         bes8 [  a8  g8  f8 ]  g8 [
         a8  f8  es8 ] | % 8
         f8 [  g8  es8  d8 ]  f8 [
         es8 ]  d4 }
    \repeat volta 2 {
        | % 9
        \mark #2  g8 [ 
         bes8  bes8  a8 ]  bes8 [  a8
        ]  g4 | \barNumberCheck #10
         g8 [  bes8  bes8  a8 ]
         bes8 [  a8 ]  g4 | % 11
         g8 [  bes8  bes8  bes8 ]  
        c8 [   bes8 ]  g4 | % 12
         g8 [  bes8  bes8  bes8
        ]   c8 [   bes8 ]  g4 }
    | % 13
     g8 [  bes8 ~  bes8  a8 ]  g4
     f4 | % 14
     es8 [  g8  g8  g8 ]  f8 [
     es8 ]  d4 | % 15
     g8 [  bes8 ~  bes8  a8 ]
     g4  f4 | % 16
     es8 [  g8  g8  g8 ]  f8 [
     es8 ]  d4
     }

accompaniment =  \relative f {
    | % 1
    << \new CueVoice \relative f' { 
        \cueClef "treble"
         f8 [  g8  g8  g8 ]  f8 ( [
         g8 )  g8 ] r8 | % 2
         f8 [  g8  g8  f8 ]  es8 ( [
         d8 )  d8 ] r8 | % 3
        \cueClefUnset
        }
        s1^"Trumpets Only"
        >>
    % \compressMMRests R1*2 | % 3
      f8^"All join" [   g8   g8   g8 ]   f8 ( [
      g8 )   g8 ] r8 | % 4
      f8 [   g8   g8   f8 ]   es8 ( [
      d8 )   d8 ] r8 \repeat volta 2 {
        | % 5
          g,4.   g16 [   g16 ]   g2 | % 6
          g'4.   g16 [   g16 ]   g2 }
    \repeat volta 2 {
        | % 7
          <g bes>2   <f a>2 | % 8
          <es g>2   f8 [   es8 ]   d4 }
    <<
        {
            \repeat volta 2 {
                | % 9
                g8 [ bes8   bes8   a8 ]
                  bes8 [   a8 ]   g4 | \barNumberCheck #10
                  g8 [ bes8   bes8   a8 ]
                  bes8 [   a8 ]   g4 | % 11
                  g8 [   bes8   bes8   bes8 ]  
                c8 [   bes8 ]   g4 | % 12
                  g8 [ bes8   bes8   bes8
                ]   c8 [   bes8 ]   g4 }
            | % 13
            g8 [   bes8 ~   bes8   a8 ]   g4
            f4 | % 14
            es8 [   g8   g8   g8 ]   f8 [
            es8 ]   d4 | % 15
            g8 [  bes8 ~   bes8   a8 ]
            g4   f4 | % 16
            es8 [   g8   g8   g8 ]   f8 [
            es8 ]   d4
            }
        \new Staff {
            \tag #'accTreble \clef "treble_8"
            \tag #'accBass \clef "bass"
            \omit Staff.TimeSignature
            \bar ":|.-.|:"
            \repeat volta 2 {
            \key bes \major
                | % 9
                r8 _ "Repeat unless featured"   
                <g bes>8~   <g bes>4 r2 | \barNumberCheck #10
                r8 <g bes>8~   <g bes>4 r2 | % 11
                r8 <g bes>8~   <g bes>4 r2 | % 12
                r8 <g bes>8~   <g bes>4 r2
                }
            | % 13
            r8 <g bes>8~   <g bes>4 r2 | % 14
            r8 <g bes>8~   <g bes>4 r2 | % 15
            g8 [  bes8 ~   bes8   a8 ]
            g4   f4 | % 16
            es8 [   g8   g8   g8 ]   f8 [
            es8 ]   d4
            }
        >>
    }

bass =  \relative g, {
    | % 1
    \compressMMRests R1*4 \repeat volta 2 {
        | % 5
        \repeat percent 2 { g4 r8   f8   g4 r8   f8 |  }% 6 & 7
        }
    \repeat volta 2 {
        | % 7
        \repeat percent 2 { g4 r8   f8   g4 r8   f8 |  } % 8 & 9
        }
    \repeat volta 2 {
        | % 9
        \repeat percent 4 { g4 r8   f8   g4 r8   f8 |  } % 10, 11, 12 & 13
        }
    | % 13
    \repeat percent 3 { g4 r8   f8   g4 r8   f8 |  } % 14, 15, & 16
    g4 r4        f'8 [   es8 ]   d4
    }

bassChords =  \chordmode {
    | % 1
    s1*4 \repeat volta 2 {
        | % 5
        g4:5 s8 f8:5 g4:5 s8 f8:5 | % 6
        s4 s8 s8 s4 s8 s8 }
    \repeat volta 2 {
        | % 7
        s4 s8 s8 s4 s8 s8 | % 8
        s4 s8 s8 s4 s8 s8 }
    \repeat volta 2 {
        | % 9
        s4 s8 s8 s4 s8 s8 | \barNumberCheck #10
        s4 s8 s8 s4 s8 s8 | % 11
        s4 s8 s8 s4 s8 s8 | % 12
        s4 s8 s8 s4 s8 s8 }
    | % 13
    s4 s8 s8 s4 s8 s8 | % 14
    s4 s8 s8 s4 s8 s8 | % 15
    s4 s8 s8 s4 s8 s8 | % 16
    s4 s8 s8 f8:5 es8:5 d4:5
    }

percussion =  \relative e' {
    \stopStaff \override Staff.StaffSymbol.line-count = #1 \startStaff
    | % 1
    \compressMMRests R1*2 ^ "Starts without drums" | % 3
    \override NoteHead.style = #'cross
    e4 e4 e4 e4 | % 4
    e4 e4 e8 [ e8 ]  e4 
    \repeat volta 2 {
        | % 5
        e4 e4 e4 e4 | % 6
        e4 e4 e8 [ e8 ]  e4  }
    \repeat volta 2 {
        % ^ "Continue" | % 7
        e4 e4 e4 e4 | % 8
        e4 e4 e8 [ e8 ]  e4  }
    \repeat volta 2 {
        | % 9
        \repeat percent 2 {
            e4 e4 e4 e4 | % 10
            e4 e4 e8 [ e8 ]  e4 
            }
        }
    | % 13
    \repeat percent 2 {
        e4 e4 e4 e4 | % 14
        e4 e4 e8 [ e8 ]  e4
        }
    \bar "|."
    }


% The score definition
% \score {
%     <<
%         \new Staff
%         <<
%             \set Staff.instrumentName = "Melody"
%             \set Staff.shortInstrumentName = "Ml."
            
%             \clef "treble" \melody

%             >>
%         \new Staff
%         <<
%             \set Staff.instrumentName = "Accompaniment"
%             \set Staff.shortInstrumentName = "Ac."
            
%             \clef "bass" \accompaniment

%             >>
%         \context ChordNames = "bassChords" { \bassChords}
%         \new Staff
%         <<
%             \set Staff.instrumentName = "Bass"
%             \set Staff.shortInstrumentName = "Bs"
            
%             \context Staff << 
%                 \context Voice = "bass" { \clef "bass" \bass }
%                 >>
%             >>
%         \new DrumStaff
%         <<
%             \set DrumStaff.instrumentName = "Percussion"
%             \set DrumStaff.shortInstrumentName = "Pc."
            
%             \percussion
%             >>
        
%         >>
%     }

\bookpart {
    \header {
        instrument = "Melody"
    }
    \score {
        <<
            \new Staff
            <<
                % \set Staff.instrumentName = "Melody"
                % \set Staff.shortInstrumentName = "Ml."
                
                \clef "treble" \melody
                \global

                >>
            >>
        }
    }

#(define accClef "treble_8")
\bookpart {
    \header {
        instrument = "Accompaniment"
    }
    \score {
        <<
            \new Staff
            <<
                % \set Staff.instrumentName = "Accompaniment"
                % \set Staff.shortInstrumentName = "Ac."
                
                \clef "treble_8" \keepWithTag #'accTreble \accompaniment
                \global

                >>        
            >>
        }
    }

\bookpart {
    \header {
        instrument = "Accompaniment"
    }
    \score {
        <<
            \new Staff
            <<
                % \set Staff.instrumentName = "Accompaniment"
                % \set Staff.shortInstrumentName = "Ac."
                
                \clef "bass" \accompaniment
                \global

                >>        
            >>
        }
    }

\bookpart {
    \header {
        instrument = "Bass"
    }
    \score {
        <<
            \context ChordNames = "bassChords" { \bassChords}
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

\bookpart {
    \header {
        instrument = "Percussion"
    }
    \score {
        \new DrumStaff
        <<
            % \set DrumStaff.instrumentName = "Percussion"
            % \set DrumStaff.shortInstrumentName = "Pc."
            
            \percussion
            \global
            >>
        }
    }



%Bb Parts

\bookpart {
    \header {
        instrument = "B♭ Melody"
    }
    \score {
        <<
            \new Staff
            <<
                % \set Staff.instrumentName = "Melody"
                % \set Staff.shortInstrumentName = "Ml."
                \transpose bes, c <<
                    \clef "treble" \melody
                    \global
                    >>
                >>
            >>
        }
    }

\bookpart {
    \header {
        instrument = "B♭ Accompaniment"
    }
    \score {
        <<
            \new Staff
            <<
                % \set Staff.instrumentName = "Accompaniment"
                % \set Staff.shortInstrumentName = "Ac."
                \transpose bes, c <<
                    \clef "treble_8" \keepWithTag #'accTreble \accompaniment
                    \global
                    >>
                >>        
            >>
        }
    }

\bookpart {
    \header {
        instrument = "B♭ Accompaniment"
    }
    \score {
        <<
            \new Staff
            <<
                % \set Staff.instrumentName = "Accompaniment"
                % \set Staff.shortInstrumentName = "Ac."
                \transpose bes, c <<
                    \clef "bass" \accompaniment
                    \global
                    >>
                >>        
            >>
        }
    }

\bookpart {
    \header {
        instrument = "B♭ Bass"
    }
    \score {
        <<
            \context ChordNames = "bassChords" { \bassChords}
            \new Staff
            <<
                % \set Staff.instrumentName = "Bass"
                % \set Staff.shortInstrumentName = "Bs"
                \transpose bes, c <<
                    \clef "bass" \bass
                    \global
                    >>
                >>
            >>
        }
    }

%Eb Parts
\bookpart {
    \header {
        instrument = "E♭ Melody"
    }
    \score {
        <<
            \new Staff
            <<
                % \set Staff.instrumentName = "Melody"
                % \set Staff.shortInstrumentName = "Ml."
                
                \transpose es c <<
                    \clef "treble" \melody
                    \global
                    >>
                >>
            >>
        }
    }

\bookpart {
    \header {
        instrument = "E♭ Accompaniment"
    }
    \score {
        <<
            \new Staff
            <<
                % \set Staff.instrumentName = "Accompaniment"
                % \set Staff.shortInstrumentName = "Ac."
                
                \transpose es c <<
                    \clef "treble_8" \keepWithTag #'accTreble \accompaniment
                    \global
                    >>
                >>        
            >>
        }
    }

\bookpart {
    \header {
        instrument = "E♭ Accompaniment"
    }
    \score {
        <<
            \new Staff
            <<
                % \set Staff.instrumentName = "Accompaniment"
                % \set Staff.shortInstrumentName = "Ac."
                
                \transpose es c <<
                    \clef "bass" \accompaniment
                    \global
                    >>
                >>        
            >>
        }
    }


\bookpart {
    \header {
        instrument = "E♭ Bass"
    }
    \score {
        <<
            \context ChordNames = "bassChords" { \bassChords}
            \new Staff
            <<
                % \set Staff.instrumentName = "Bass"
                % \set Staff.shortInstrumentName = "Bs"
                
                \transpose es c <<
                    \clef "bass" \bass
                    \global
                    >>
                >>
            >>
        }
    }