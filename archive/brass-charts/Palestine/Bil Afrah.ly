\version "2.24.1"
% automatically converted by musicxml2ly from Bil Afrah.musicxml
\pointAndClickOff

Bil_Afrah-header = \header {
    piece =  "Bil Afrah"
    tag = ""
    }

Bil_Afrah-Form =  \relative g' {
    \time 3/4 \key bes \major \repeat volta 2 {
        | % 1
        \tempo 4=100 \mark \markup { \box { A } } s8 ^
        "Section/Solo" s8 s4 s4 | % 2
        s2. | % 3
        s8 s8 s8 s16 ^
        "All" s16 s4 | % 4
        s8 s8 s4 s8 s8 | % 5
        s8 s8 s8 s8 s4 | % 6
        s8 s8 s8 s16 ^
        "All" s16 s4 | % 7
        s2. | % 8
        s2. | % 9
        s2. | \barNumberCheck #10
        s2. | % 11
        s2. | % 12
        s16 s16 s16 s16 s4 s16 ^ "All" s16 s16
        s16 | % 13
        \break

        \mark \markup { \box { B } } s8 ^ "All" s8 s8 s8 s8 s8 | % 14
        s2. | % 15
        s2. | % 16
        s2. | % 17
        s2. | % 18
        s2. | % 19
        s2. | \barNumberCheck #20
        s2. | % 21
        s2. | % 22
        s2. | % 23
        s2.
    }
    \alternative { {
            | % 24
            s2. }
        {
            | % 25
            s2. }
        } 
    \numericTimeSignature\time 4/4 \tempo 4=200 
    s1*4 - "4 bars just drums" 
    \break
    \repeat volta 2 {
        \mark \markup { \box { C } } s4. s4. s4 
        s1
        s1
        s1
        s1
        s1
        s1
        s1
        s1
        s1
        s1
        s1
        s1
        s1
        s1
        s1
        \break
        
        \mark \markup { \box { C' } } s1
        s1
        s1
        s1
        s1 | % 26
        s1 | % 27
        s1 | % 28
        s1 | % 29
        s1 | \barNumberCheck #30
        s1 | % 31
        s1 | % 32
        s1 | % 33
        s1 | % 34
        s1 | % 35
        s1 | % 36
        s1 }
    | % 37
    s1 | % 38
    s1 | % 39
    s1 |
    \barNumberCheck #40
    s1 \bar "|."
    }

Bil_Afrah-Melody =  \relative g' {
    \clef "treble" \time 3/4 \key bes \major \repeat volta 2 {
        | % 1
        \tempo 4=100 \mark \markup { \box { A } } g8 [ ^
        "Section/Solo" d'8 ] d4 d4 | % 2
        c8 [ d8 ] c4 bes4 | % 3
        c8 [ d8 ] d8 [ bes16 ^
        "All" a16 ] g4 | % 4
        g8 [ d'8 ] d4 f8 [
        es8 ] | % 5
        d8 [ c8 ] d8 [ c8 ]
        bes4 | % 6
        c8 [ d8 ] d8 [ bes16 ^
        "All" c16 ] d4 | % 7
        c8 [ d8 ] es8 [ d8 ]
        f8 [ es8 ] | % 8
        d8 [ c8 ] d8 [ c8 ]
        es8 [ d8 ] | % 9
        c8 [ bes8 ] c8 [ bes8 ]
        d8 [ c8 ] | \barNumberCheck #10
        bes8 [ a8 ] bes8 [ a8 ]
        c8 [ bes8 ] | % 11
        d8 [ c8 ] bes8 [ a8 ]
        g4 | % 12
        a16 [ c16 bes16 a16 ]
        g4 es16 [ ^ "All" d16 fis16
        es16 ] | % 13
        \mark \markup { \box { B } } g8 [ ^ "All" fis8 ]
       <\parenthesize g \parenthesize d \parenthesize bes>8 [ fis8 ] es8 [ d8 ] | % 14
        g8 [ fis8 ] g8 [ fis8 ]
        es8 [ d8 ] | % 15
        fis8 [ g8 ] a8. [ g16 ]
        a16 [ g16 fis16 es16 ] | % 16
        fis8 [ g8 ] a8 [ g8 ] g8
        [ fis8 ] | % 17
        fis8 [ es8 ] es8 [ d8 ]
        d8 [ c8 ] | % 18
        c8 [ bes16 c16 ] bes16 [
        a16 bes8 ~ ] bes4 | % 19
        bes'8 [ es8 ] es8 [ d8 ]
        d8 [ c8 ] | \barNumberCheck #20
        c8 [ bes8 ] bes8 [ a8 ]
        a8 [ g8 ] | % 21
        g8 [ g'8 ~ ] g2 | % 22
        f8 [ es8 ] es8 [ d8 ]
        d8 [ c8 ] | % 23
        c8 [ bes8 ] bes8 [ a8 ]
        g4 }
    \alternative { {
            | % 24
            a16 [ c16 bes16 a16
            ] g4 d4 }
        {
            | % 25
            a'16 [ c16 bes16 a16
            ] g4 ^\fermata r4 }
        } \numericTimeSignature\time 4/4 \tempo 4=200 R1*4 \repeat volta
    2 {
        \mark \markup { \box { C } } d'4. -. -
        "4 bars just drums" d4. -. d4 ~ d4
        d4 c4 bes4 c4. -.
        c4. -. c4 ~ c4 c4
        bes4 a4 d8 [ f8
        e8 f8 ] d2 r4 d4 c4
        bes4 c4. -. c4. -. c4 ~
        c4 c4 bes4 a4
        bes8 [ bes8 ] r8 bes8 c4 a4
        bes8 [ bes8 ] r8 bes8 c4
        a4 bes8 [ bes8 ] r8 bes8
        c4 c8 [ d8 ] bes8 [
        c8 bes8 c8 ] a4 g4
        bes8 [ bes8 ] r8 bes8 c4
        a4 bes8 [ bes8 ] r8 bes8
        c4 a4 bes8 [ bes8 ] r8
        bes8 c4 c8 [ d8 ]
        bes8 [ c8 bes8 c8 ]
        a4 g4 \mark \markup { \box { C' } } r4 d8
        [ d8 ] r4 d4 r4 d8 [ d8 ] r4
        d4 r4 d8 [ d8 ] r4 d4 r4
        d8 [ d8 ] r4 d4 r4 d8 [ d8 ] r4
        d4 | % 26
        r4 d8 [ d8 ] r4 d4 | % 27
        r4 d8 [ d8 ] r4 d4 | % 28
        r2 e8 [ fis8 e8 fis8 ] | % 29
        g1 | \barNumberCheck #30
        r4 g8 [ g8 ] r4 g4 | % 31
        r4 g8 [ g8 ] r4 g4 | % 32
        r2 <e g>8 [ <fis a>8 <e g>8 <fis
            a>8 ] | % 33
        <g bes>1 | % 34
        r4 g8 [ g8 ] r4 g4 | % 35
        r4 g8 [ g8 ] r4 g4 | % 36
        r4 g8 [ g8 ] r4 g4 }
    | % 37
    g'8 [ fis8 g8 fis8 ]
    g8 [ fis8 g8 fis8 ] | % 38
    g8 [ fis8 g8 fis8 ]
    g8 [ fis8 g8 fis8 ] | % 39
    g8 [ fis8 g8 fis8 ]
    g8 [ fis8 g8 fis8 ] |
    \barNumberCheck #40
    g4 r4 r2 \bar "|."
    }

Bil_Afrah-Accompaniment =  \relative bes {
    % \clef "treble_8" \time 3/4 \key bes \major 
    \repeat volta 2 {
        | % 1
        r4 <bes d g>4 r4 | % 2
        r4 <bes d g>4 r4 | % 3
        r4 <bes d g>8 [ bes16 a16 ]
        g4 | % 4
        r4 <bes d g>4 r4 | % 5
        r4 <bes d g>4 r4 | % 6
        r4 <bes d g>8 [ bes16 c16 ]
        d4 | % 7
        r4 <bes d g>4 r4 | % 8
        r4 <bes d g>4 r4 | % 9
        r4 <bes d g>4 r4 | \barNumberCheck #10
        r4 <bes d g>4 r4 | % 11
        r4 <bes d g>4 r4 | % 12
        r4 <bes d g>4 es16 [ ^ "All" d16
        fis16 es16 ] | % 13
        g8 [ ^ "All" fis8 ] g8 [
        fis8 ] es8 [ d8 ] | % 14
        g8 [ fis8 ] g8 [ fis8 ]
        es8 [ d8 ] | % 15
        fis8 [ g8 ] a8. [ g16 ]
        a16 [ g16 fis16 es16 ] | % 16
        fis8 [ g8 ] a8 [ g8 ]
        g8 [ fis8 ] | % 17
        fis8 [ es8 ] es8 [ d8 ]
        d8 [ c8 ] | % 18
        c8 [ bes16 c16 ] bes16 [
        a16 bes8 ~ ] bes4 | % 19
        bes8 [ es8 ] es8 [ d8 ]
        d8 [ c8 ] | \barNumberCheck #20
        c8 [ bes8 ] bes8 [ a8 ]
        a8 [ g8 ] | % 21
        g8 [ g'8 ~ ] g2 | % 22
        f8 [ es8 ] es8 [ d8 ]
        d8 [ c8 ] | % 23
        c8 [ bes8 ] bes8 [ a8 ]
        g4 | % 24
        a16 [ c16 bes16 a16 ]
        g4 d4 }
    | % 25
    a'16 [ c16 bes16 a16 ]
    g4 ^\fermata r4 \numericTimeSignature\time 4/4 R1*4 \repeat
    volta 2 {
        r4 g8 [ g8 ] r4 g4 r4 g8 [
        g8 ] r4 g4 r4 g8 [ g8 ] r4
        g4 r4 g8 [ g8 ] r4 g4 r4
        g8 [ g8 ] r4 g4 r4 g8 [ g8 ] r4
        g4 r4 g8 [ g8 ] r4 g4 r2
        e'8 [ fis8 e8 fis8 ] g1
        r4 g,8 [ g8 ] r4 g4 r4 g8 [
        g8 ] r4 g4 r2 e'8 [ fis8
        e8 fis8 ] g1 r4 g,8 [ g8 ] r4
        g4 r4 g8 [ g8 ] r4 g4 r4
        g8 [ g8 ] r4 g4 d'4. -. d4.
        -. d4 ~ d4 d4 c4
        bes4 c4. -. c4. -. c4 ~
        c4 c4 bes4 a4 d8
        [ f8 e8 f8 ] d2 | % 26
        r4 d4 c4 bes4 | % 27
        c4. -. c4. -. c4 ~ | % 28
        c4 c4 bes4 a4 | % 29
        bes8 [ bes8 ] r8 bes8 c4
        a4 | \barNumberCheck #30
        bes8 [ bes8 ] r8 bes8 c4
        a4 | % 31
        bes8 [ bes8 ] r8 bes8 c4
        c8 [ d8 ] | % 32
        bes8 [ c8 bes8 c8 ]
        a4 g4 | % 33
        bes8 [ bes8 ] r8 bes8 c4
        a4 | % 34
        bes8 [ bes8 ] r8 bes8 c4
        a4 | % 35
        bes8 [ bes8 ] r8 bes8 c4
        c8 [ d8 ] | % 36
        bes8 [ c8 bes8 c8 ]
        a4 g4 }
    | % 37
    g'8 [ fis8 g8 fis8 ]
    g8 [ fis8 g8 fis8 ] | % 38
    g8 [ fis8 g8 fis8 ]
    g8 [ fis8 g8 fis8 ] | % 39
    g8 [ fis8 g8 fis8 ]
    g8 [ fis8 g8 fis8 ] |
    \barNumberCheck #40
    g4 r4 r2 \bar "|."
    }

Bil_Afrah-Bass =  \relative g, {
    \repeat volta 2 {
        | % 1
        \repeat percent 8 { g2 d4 } | % 9
        \repeat percent 8 { g2 d4 } | % 17
        \repeat percent 8 { g2 d4 }
        }
    | % 25
    g2 ^\fermata r4 \numericTimeSignature\time 4/4 R1*4 \repeat
    volta 2 {
        \repeat percent 8 { g2. d4 }
        \repeat percent 8 { g2. d4 }
        \repeat percent 8 { g2. d4 }
        \repeat percent 8 { g2. d4 } }
    | % 37
    \repeat percent 2 { g2. d4 } | % 39
    g2. d4 | \barNumberCheck #40
    g4 r4 r2 \bar "|."
    }

Bil_Afrah-Chords =  \chordmode {
    \repeat volta 2 {
        | % 1
        g2:5 s4 | % 2
        g2:5 s4 | % 3
        g2:5 s4 | % 4
        g2:5 s4 | % 5
        g2:5 s4 | % 6
        g2:5 s4 | % 7
        g2:5 s4 | % 8
        g2:5 s4 | % 9
        g2:5 s4 | \barNumberCheck #10
        g2:5 s4 | % 11
        g2:5 s4 | % 12
        g2:5 s4 | % 13
        g2:5 s4 | % 14
        g2:5 s4 | % 15
        g2:5 s4 | % 16
        g2:5 s4 | % 17
        g2:5 s4 | % 18
        g2:5 s4 | % 19
        g2:5 s4 | \barNumberCheck #20
        g2:5 s4 | % 21
        g2:5 s4 | % 22
        g2:5 s4 | % 23
        g2:5 s4 | % 24
        g2:5 s4 }
    | % 25
    g2:5 s4 s1 s1 s1 s1 \repeat volta 2 {
        g2.:5 s4 g2.:5 s4 g2.:5 s4 g2.:5 s4 g2.:5 s4 g2.:5 s4 g2.:5 s4
        g2.:5 s4 g2.:5 s4 g2.:5 s4 g2.:5 s4 g2.:5 s4 g2.:5 s4 g2.:5 s4
        g2.:5 s4 g2.:5 s4 g2.:5 s4 g2.:5 s4 g2.:5 s4 g2.:5 s4 g2.:5 s4 | % 26
        g2.:5 s4 | % 27
        g2.:5 s4 | % 28
        g2.:5 s4 | % 29
        g2.:5 s4 | \barNumberCheck #30
        g2.:5 s4 | % 31
        g2.:5 s4 | % 32
        g2.:5 s4 | % 33
        g2.:5 s4 | % 34
        g2.:5 s4 | % 35
        g2.:5 s4 | % 36
        g2.:5 s4 }
    | % 37
    g2.:5 s4 | % 38
    g2.:5 s4 | % 39
    g2.:5 s4 | \barNumberCheck #40
    g4:5 s4 s2 \bar "|."
    }

Bil_Afrah-Percussion =  \relative e' {
    \clef "percussion" \time 3/4 \key c \major \stopStaff \override
    Staff.StaffSymbol.line-count = #1 \startStaff \repeat volta 2 {
        | % 1
        e8 ^ "Darij" e16 [ e16 ] e8
        e8 e4 | % 2
        R2.*23 }
    | % 25
    R2. \numericTimeSignature\time 4/4 \stopStaff \override
    Staff.StaffSymbol.line-count = #1 \startStaff e8 ^ "Rumba"
    r8 r8 e8 r8 r8 e8 r8 R1*3 \repeat volta 2 {
        R1*32 }
    | % 37
    R1*4 \bar "|."
    }


% The score definition
% \score {
%     <<
        
%         \new StaffGroup
%         <<
%             \new Staff
%             <<
%                 \set Staff.instrumentName = "Melody"
%                 \set Staff.shortInstrumentName = "mldy."
                
%                 \context Staff << 
%                     \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
%                     \context Voice = "Melody" {  \Bil_Afrah-Melody }
%                     >>
%                 >>
%             \new Staff
%             <<
%                 \set Staff.instrumentName = "Accompaniment"
%                 \set Staff.shortInstrumentName = "acc."
                
%                 \context Staff << 
%                     \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
%                     \context Voice = "Accompaniment" {  \Bil_Afrah-Accompaniment }
%                     >>
%                 >>
%             \context ChordNames = "Chords" { \Bil_Afrah-Chords}
%             \new Staff
%             <<
%                 \set Staff.instrumentName = "Bass"
%                 \set Staff.shortInstrumentName = "bass"
                
%                 \context Staff << 
%                     \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
%                     \context Voice = "Bass" {  \Bil_Afrah-Bass }
%                     >>
%                 >>
            
%             >>
%         \new RhythmicStaff
%         <<
%             \set RhythmicStaff.instrumentName = "Percussion"
%             \set RhythmicStaff.shortInstrumentName = "perc."
            
%             \context RhythmicStaff << 
%                 \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
%                 \context Voice = "Percussion" {  \Bil_Afrah-Percussion }
%                 >>
%             >>
        
%         >>
%     }

