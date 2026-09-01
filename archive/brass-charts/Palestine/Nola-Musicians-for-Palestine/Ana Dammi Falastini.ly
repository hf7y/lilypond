\version "2.24.1"
% automatically converted by musicxml2ly from Ana Dammi Falastini.musicxml
\include "arabic.ly"
\language "nederlands"

Ana_Dammi_Falastini-header = \header {
    title =  "Ana Dammi Falastini"
    tagline = ""
}

Ana_Dammi_Falastini-Form =  {
    \key bes \kurd
    \time 4/4 
    \tempo 4 = 200
    \mark \markup \padded-box "Intro"
    \repeat volta 3 {
        | % 1
        \textMark "Repeat 3x"
        s1 | % 2
        s1
    }
    | % 3
    s1 | % 4
    s1 \bar "||"

    % \break
    | % 5
    \repeat segno 2 {
        \removeWithTag #'noBreaks \break
        \mark \markup \padded-box "A" s1 | % 6
        s1 | % 7
        s1 | % 8
        s1 | % 9
        s1 | \barNumberCheck #10
        s1 | % 11
        s1 | % 12
        s1 | % 13
        s1 | % 14
        s1 | % 15
        s1 | % 16
        s1 \bar "||"
        % \break

        \removeWithTag #'noBreaks \break
        \mark \markup \padded-box "B" % \mark \markup { \musicglyph "scripts.segno" } 
        s1 | % 18
        s1 | % 19
        s1 | \barNumberCheck #20
        s1 | % 21
        s1 | % 22
        s1 | % 23
        s1 | % 24
        s1 | % 25
        s1 | % 26
        s1 | % 27
        s1 | % 28
        s1 
        % \break

        \removeWithTag #'noBreaks \break
        \mark \markup \padded-box "C"
        \repeat volta 2 {
            | % 29
            s1 | \barNumberCheck #30
            s1 | % 31
            s1 | % 32
            s1 }
        % \break
        
        \removeWithTag #'noBreaks \break
        \mark \markup \padded-box "D"
        \repeat volta 2 {
            | % 33
            s1 
            \alternative {
                { 
                    | % 34 
                    s1 
                }
                {
                    | % 35
                    s1 | % 36
                    s1 | % 37
                    s1 \bar "||"
                }
            }
        }
    }
    s1 | \barNumberCheck #39
    s1 \bar "|."
}

Ana_Dammi_Falastini-Melody =  \relative ces'' {
    %intro
    \repeat volta 3 {
        | % 1
        r4 bes16[ ces16 bes16 ces16]
        bes4 bes16[ ces16 bes16 ces16] | % 2
        bes4 r4 bes16[ ces16 bes16 ces16]
        bes4 
    }

    | % 3
    r4 bes,8 [ bes8 ] 
        ces8 [ ces8 des8 des8 ] | % 4
    es8 [ es8 f8 f8 ] 
        ges8 [ ges8 as8 as8 ] 

    \repeat segno 2 {
        | %5
        r4 bes,8 [ es8 ]
        des4 des8 [ ces8 ] | % 6
        bes4 ces4 des4 r4 | % 7
        r4 bes8 [ es8 ] des4 des8 [
        ces8 ] | % 8
        bes4 ces4 bes4 r4 | % 9
        r4 bes8 [ es8 ] des4 des8 [
        ces8 ] | \barNumberCheck #10
        bes4 ces4 des8 [ es16 f16 ]
        es4 | % 11
        r4 f8 [ f8 ] f4 f8 [ es8 ] | % 12
        des4 f4 es4 r8 es8 | % 13
        des4 f4 es4 r8 es8 | % 14
        des4 f4 es2 | % 15
        r4 des'8 [ des8 ] des4 des8
        [ des8 ] | % 16
        <<  { des4 es4 
                des8 [ ces8 bes8 as8 ] }
            \\ { as,8 [ bes8 ces8 des8 ]
                es8 [ f8 ges8 as8 ] } 
            >> | % 17
        bes4 r4 r2 | % 18
        r2. as4 | % 19
        des4 r4 r2 | \barNumberCheck #20
        r2 bes4 as4 | % 21
        bes4 r4 r2 | % 22
        R1 | % 23
        des4 r4 r2 | % 24
        des4 f4 es4 r4 | % 25
        des4 f4 es4 r4 | % 26
        des4 f4 es4 des8 [
        ces8 ] | % 27
        bes4 r4 r2 | % 28
        R1 \repeat volta 2 {
            | % 29
            % \mark \markup { \box { C } } 
            bes4 ^ "All quarter notes here can have a little trill" 
                ces8 [ bes8 ] bes4 ces8 [ bes8 ] | \barNumberCheck #30
            des4 ces8 [ bes8 ] bes4
            ces8 [ bes8 ] | % 31
            bes4 ces8 [ bes8 ] bes4
            ces8 [ bes8 ] | % 32
            des8 [ es8 ces8 bes8 ]
            bes4 ces8 [ bes8 ] }
        \repeat volta 2 {
            | % 33
            c8 [ des8 des8 des8 ] 
            des4 f8 [ es8 ] 
            \alternative {
                { 
                    | % 34
                    es4 c4 des8 [ des8 ] des4 
                }
                {
                    | % 35
                    es4 c4 des4 f8 [
                    es8 ] | % 36
                    es4 f8 [ es8 ] es4
                    f8 [ es8 ] | % 37
                    es4 c4 des8 [ ces8
                    bes8 as8 ] | %38
                }
            }
        }
       
    }
    r4 des,8 [ des8 ] des4 des8 [
    ces8 ] | \barNumberCheck #39
    bes4 as4 bes4 r4 | % 40
}

Ana_Dammi_Falastini-Accompaniment =  \relative bes, {
    \repeat volta 3 {
        | % 1
        bes1 ~ | % 2
        bes1 
    }
    | % 3
    r4 bes8 [ bes8 ] 
        ces8 [ ces8 des8 des8 ] | % 4
    es8 [ es8 f8 f8 ] 
        ges8 [ ges8 as8 as8 ]

    \repeat segno 2 {
        | % 5 
        bes4 r4 r2 | % 6
        r2. as,4 | % 7
        des4 r4 r2 | % 8
        r2 bes4 as4 | % 9
        bes4 r4 r2 | \barNumberCheck #10
        R1 | % 11
        des4 r4 r2 | % 12
        R1 | % 13
        bes4 r4 r2 | % 14
        bes4 r4 bes4 bes4 | % 15
        des4 r4 r2 | % 16
        as8 [ bes8 ces8 des8 ] es8 [
        f8 ges8 as8 ] \bar "||"
        r4 bes,8 [ es8 ] des4 des8 [
        ces8 ] | % 18
        bes4 ces4 des4 r4 | % 19
        r4 bes8 [ es8 ] des4 des8 [
        ces8 ] | \barNumberCheck #20
        bes4 ces4 bes4 r4 | % 21
        r4 bes8 [ es8 ] des4 des8 [
        ces8 ] | % 22
        bes4 ces4 des8 [ es16 f16 ]
        es4 | % 23
        r4 f8 [ f8 ] f4 f8 [ es8 ] | % 24
        des4 f4 es4 r8 es8 | % 25
        des4 f4 es4 r8 es8 | % 26
        des4 f4 es2 | % 27
        r4 des8 [ des8 ] des4 des8 [
        des8 ] | % 28
        des4 es4 des8 [ ces8 bes8
        as8 ] \repeat volta 2 {
            | % 29
            bes1 ~ | \barNumberCheck #30
            bes2. as4 | % 31
            bes1 ~ | % 32
            bes2. as4 }
        \repeat volta 2 {
            | % 33
            r4. bes8 -. r4 bes8 -. r8 
            \alternative {
                {
                    | % 34
                    r4. bes8 -. r4 bes8 -. r8 
                }
                {
                    | % 35
                    r4. bes8 -. r4 bes8 -. r8 | % 36
                    es4 r4 es4 r4 | % 37
                    es4 es4 des8 [ ces8 bes8
                    as8 ] | % 38
                }
            }
        }       
    }
    r4 des8 [ des8 ] des4 des8 [
    ces8 ] | \barNumberCheck #39
    bes4 as4 bes4 r4 | % 40
}

Ana_Dammi_Falastini-Bass = \relative bes, {
    \repeat volta 3 {
        | % 1
        bes1 ~ | % 2
        bes1    
    }
    | % 3
    bes4 r4 bes4 r4 | % 4
    r2. as4 

    \repeat segno 2 {
        | % 5
        bes4 r4 r2 | % 6
        r2. as4 | % 7
        des4 r4 r2 | % 8
        r2 bes4 as4 | % 9
        bes4 r4 r2 | \barNumberCheck #10
        R1 | % 11
        des4 r4 r2 | % 12
        R1 | % 13
        bes4 r4 r2 | % 14
        bes4 r4 bes4 bes4 | % 15
        des4 r4 r2 | % 16
        R1 \bar "||"
        \repeat percent 2 { bes4 r4 bes4 r4 } | % 19
        des4 r4 des4 r4 | \barNumberCheck #20
        bes4 r4 bes4 r4 | % 21
        \repeat percent 2 { bes4 r4 bes4 r4 } | % 23
        des4 r4 des4 r4 | % 24
        des4 r4 es4 r4 | % 25
        \repeat percent 2 { des4 r4 es4 r4 } | % 27
        bes4 r4 bes4 r4 | % 28
        bes4 r4 as4 r4 \repeat volta 2 {
            | % 29
            \repeat percent 4 { bes4 r4 bes4 r4 }
            }
        \repeat volta 2 {
            | % 33
            des4 r4 des4 r4
            \alternative {
                {
                    | % 34
                    des4 r4 des4 r4
                }
                {
                    | % 35
                    des4 r4 des4 r4 | % 36
                    es4 r4 es4 r4 | % 37
                    es4 es4 es4 as,4 | % 38
                }
            }
            }
      
        }
    bes4 r4 bes4 r4 | \barNumberCheck #39
    bes4 as4 bes4 r4 | % 40
}  

Ana_Dammi_Falastini-Chords =  \chordmode {
    \repeat volta 3 {
        | % 1
        bes1 
        | % 2
        s1 
    }

    | % 3
    bes4 s4 bes4 s4 | % 4
    s2. as4:5

    | % 5
    \repeat segno 2 {
        bes4 s4 s2 | % 6
        s2. as4 | % 7
        des4 s4 s2 | % 8
        s2 bes4 as4 | % 9
        bes4 s4 s2 | \barNumberCheck #10
        s1 | % 11
        des4 s4 s2 | % 12
        s1 | % 13
        bes4 s4 s2 | % 14
        bes4 s4 bes4 bes4 | % 15
        des4 s4 s2 | % 16
        s1 \bar "||"
        bes4 s4 s4 s4 | % 18
        bes4 s4 s4 s4 | % 19
        des4 s4 s4 s4 | \barNumberCheck #20
        bes4 s4 s4 s4 | % 21
        bes4 s4 s4 s4 | % 22
        bes4 s4 s4 s4 | % 23
        des4 s4 s4 s4 | % 24
        des4 s4 es4 s4 | % 25
        des4 s4 es4 s4 | % 26
        des4 s4 es4 s4 | % 27
        bes4 s4 s4 s4 | % 28
        bes4 s4 as4 s4 \repeat volta 2 {
            | % 29
            bes4 s4 s4 s4 | \barNumberCheck #30
            bes4 s4 s4 s4 | % 31
            bes4 s4 s4 s4 | % 32
            bes4 s4 s4 s4 }
        \repeat volta 2 {
            | % 33
            des4 s4 s4 s4 
            \alternative {
                {
                    | % 34
                    des4 s4 s4 s4
                }
                {
                    | % 35
                    des4 s4 s4 s4 | % 36
                    es4 s4 s4 s4 | % 37
                    es4 s4 s4 as4 | % 38
                }
            }
        }
    }
   
    bes4 s4 s4 s4 | \barNumberCheck #39
    bes4 as4 bes4 s4 | % 40
}

Ana_Dammi_Falastini-Percussion =  \relative e' {
    \stopStaff \override Staff.StaffSymbol.line-count = #1 \startStaff
    \repeat volta 3 {
        | % 1
        e4 e4 e4 e4 
        | % 2
        e4. e4. e4 
    }
    | % 3
    e4 r4 e4 r4 | % 4
    e4 e4 e4 e4 

    \repeat segno 2 {
        | % 5
        e4 r4 r2 | % 6
        r2. e4 | % 7
        e4 r4 r2 | % 8
        r2 e4 e4 | % 9
        e4 r4 r2 |
        \barNumberCheck #10
        R1 | % 11
        e4 r4 r2 | % 12
        R1 | % 13
        e4 r4 r2 | % 14
        e4 r4 e4 e4 | % 15
        e4 r4 r2 | % 16
        e8 e8 r8 e8 e4 e4 \bar
        "||"
        e4. ^ "Ayub" e8 e4 e4 | % 18
        R1*11 
        \repeat volta 2 {
            | % 29
            e4 e4 e4 e4 | \barNumberCheck #30
            e4. e4. e4 | % 31
            R1*2 
        }
        \repeat volta 2 {
            | % 33
            e4. ^ "Ayub" e8 e4 e4 
            \alternative {
                {
                    | % 34
                    R1
                }
                {
                    | % 35
                    R1 | % 36
                    e4 r4 e4 r4 | % 37
                    e4 e4 e4 e4 | % 38
                }
            }
        }
    }
    e4 r4 e4 r4 | \barNumberCheck #39
    e4 e4 e4 r4 | % 40
}


% The score definition
% \score {
%     \Ana_Dammi_Falastini-header
%     <<        
%         \new StaffGroup
%         <<
%             \new Staff
%             <<
%                 \set Staff.instrumentName = "Melody"
%                 \set Staff.shortInstrumentName = "mldy."
                
%                 \context Staff << 
%                     \mergeDifferentlyDottedOn
%                     \mergeDifferentlyHeadedOn
%                     \Ana_Dammi_Falastini-Form
%                     \context Voice = "Melody" { \Ana_Dammi_Falastini-Melody }
%                     >>
%                 >>
%             \new Staff
%             <<
%                 \set Staff.instrumentName = "Accompaniment"
%                 \set Staff.shortInstrumentName = "acc."
                
%                 \context Staff << 
%                     \mergeDifferentlyDottedOn
%                     \mergeDifferentlyHeadedOn
%                     \clef "bass"
%                     \Ana_Dammi_Falastini-Form
%                     \context Voice = "Accompaniment" {  \Ana_Dammi_Falastini-Accompaniment }
%                     >>
%                 >>
%             \context ChordNames = "Chords" { \Ana_Dammi_Falastini-Chords}
%             \new Staff
%             <<
%                 \set Staff.instrumentName = "Bass"
%                 \set Staff.shortInstrumentName = "bass"
                
%                 \context Staff << 
%                     \mergeDifferentlyDottedOn
%                     \mergeDifferentlyHeadedOn
%                     \clef "bass"
%                     \Ana_Dammi_Falastini-Form
%                     \context Voice = "Bass" {  \Ana_Dammi_Falastini-Bass }
%                     >>
%                 >>
            
%             >>
%         \new RhythmicStaff
%         <<
%             \set RhythmicStaff.instrumentName = "Percussion"
%             \set RhythmicStaff.shortInstrumentName = "perc."
            
%             \context RhythmicStaff << 
%                 \mergeDifferentlyDottedOn
%                 \mergeDifferentlyHeadedOn
%                 \clef "percussion"
%                 \Ana_Dammi_Falastini-Form
%                 \context Voice = "Percussion" {  \Ana_Dammi_Falastini-Percussion }
%                 >>
%             >>
        
%         >>
%     }

