\version "2.24.1"
% automatically converted by musicxml2ly from Bil Afrah.musicxml

Bil_Afrah-header = \header {
    title =  "Bil Afrah"
    tagline = ""
}

Bil_Afrah-Form =  \relative g' {
    \time 3/4 
    \key bes \major 
    \repeat volta 2 {
        | % 1
        \tempo 4=100 
        \mark \markup \padded-box "A"
        s8 % ^ "Section/Solo" 
        s8 s4 s4 | % 2
        s2. | % 3
        s8 s8 s8 s16 % ^ "All" 
        s16 s4 | % 4
        s8 s8 s4 s8 s8 | % 5
        s8 s8 s8 s8 s4 | % 6
        s8 s8 s8 s16 % ^ "All" 
        s16 s4 | % 7
        s2. | % 8
        s2. | % 9
        s2. | \barNumberCheck #10
        s2. | % 11
        s2. | % 12
        s16 s16 s16 s16 s4 s16 % ^ "All" 
        s16 s16
        s16 | % 13
        \break

        \removeWithTag #'noBreaks \break
        \mark \markup \padded-box "B"
        s8 % ^ "All" 
        s8 s8 s8 s8 s8 | % 14
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
    \alternative { 
        {
            | % 24
            s2. }
        {
            | % 25
            s2. }
    }
    | % 26
    \time 4/4 
    \tempo 4=200 
    \textMark "4 bars just drums" 
    s1*4 | % 30
    \break
    \repeat volta 2 {
        \removeWithTag #'noBreaks \break
        \mark \markup \padded-box "C"
        s4. s4. s4 | % 31
        s1 | % 32
        s1 | % 33
        s1 | % 34
        s1 | % 35
        s1 | % 36
        s1 | % 37
        s1 | % 38
        s1 | % 39
        s1 | % 40
        s1 | % 41
        s1 | % 42
        s1 | % 43
        s1 | % 44
        s1 | % 45
        s1 | % 46
        \break
        
        \removeWithTag #'noBreaks \break
        \mark \markup \padded-box "C′"
        s1 | % 47
        s1 | % 48
        s1 | % 49
        s1 | \barNumberCheck #50
        s1 | % 51
        s1 | % 52
        s1 | % 53
        s1 | % 54
        s1 | % 55
        s1 | % 56
        s1 | % 57
        s1 | % 58
        s1 | % 59
        s1 | % 60
        s1 | % 61
        s1 }
    | % 62
    s1 | % 63
    s1 | % 64
    s1 |
    \barNumberCheck #65
    s1 \bar "|."
}

Bil_Afrah-Melody =  \relative g' {
    \clef "treble"
    \time 3/4 
    \key bes \major 
    \repeat volta 2 {
        | % 1
        \tempo 4=100 
        % \mark \markup { \box { A } } 
        g8 [ ^ "Section/Solo" d'8 ] d4 d4 | % 2
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
        % \mark \markup { \box { B } } 
        g8 [ ^ "All" fis8 ]
        < g \parenthesize d \parenthesize bes>8 [ fis8 ] es8 [ d8 ] | % 14
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
    } 
    | % 26
    \numericTimeSignature
    \time 4/4 
    \tempo 4=200 
    R1*4 | % 30
    \repeat volta 2 {
        % \mark \markup { \box { C } } 
        d'4. -. % - "4 bars just drums" 
        d4. -. d4 ~ | % 31
        d4 d4 c4 bes4 | % 32
        c4. -. c4. -. c4 ~ | % 33
        c4 c4 bes4 a4 | % 34
        d8 [ f8 e8 f8 ] d2 | % 35
        r4 d4 c4 bes4 | % 36
        c4. -. c4. -. c4 ~ | % 37
        c4 c4 bes4 a4 | % 38
        bes8 [ bes8 ] r8 bes8 c4 a4 | % 39
        bes8 [ bes8 ] r8 bes8 c4 a4 \barNumberCheck #40
        bes8 [ bes8 ] r8 bes8 c4 c8 [ d8 ] | % 41
        bes8 [ c8 bes8 c8 ] a4 g4 | % 42
        bes8 [ bes8 ] r8 bes8 c4 a4 | % 43
        bes8 [ bes8 ] r8 bes8 c4 a4 | % 44
        bes8 [ bes8 ] r8 bes8 c4 c8 [ d8 ] | % 45
        bes8 [ c8 bes8 c8 ] a4 g4 | % 46
        % \mark \markup { \box { C' } } 
        r4 d8 [ d8 ] r4 d4 | % 47
        r4 d8 [ d8 ] r4 d4 | % 48
        r4 d8 [ d8 ] r4 d4 | % 49
        r4 d8 [ d8 ] r4 d4 \barNumberCheck #50
        r4 d8 [ d8 ] r4 d4 | % 51
        r4 d8 [ d8 ] r4 d4 | % 52
        r4 d8 [ d8 ] r4 d4 | % 53
        r2 e8 [ fis8 e8 fis8 ] | % 54
        g1 | \barNumberCheck #55
        r4 g8 [ g8 ] r4 g4 | % 56
        r4 g8 [ g8 ] r4 g4 | % 57
        r2 <e g>8 [ <fis a>8 <e g>8 <fis a>8 ] | % 58
        <g bes>1 | % 59
        r4 g8 [ g8 ] r4 g4 | % 60
        r4 g8 [ g8 ] r4 g4 | % 61
        r4 g8 [ g8 ] r4 g4 }
    | % 62
    g'8 [ fis8 g8 fis8 ]
    g8 [ fis8 g8 fis8 ] | % 63
    g8 [ fis8 g8 fis8 ]
    g8 [ fis8 g8 fis8 ] | % 64
    g8 [ fis8 g8 fis8 ]
    g8 [ fis8 g8 fis8 ] |
    \barNumberCheck #65
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
    g4 ^\fermata r4 | % 26
    \numericTimeSignature
    \time 4/4 
    R1*4 | % 30
    \repeat volta 2 {
        r4 g8 [ g8 ] r4 g4 | % 31
        r4 g8 [ g8 ] r4 g4 | % 32
        r4 g8 [ g8 ] r4 g4 | % 33
        r4 g8 [ g8 ] r4 g4 | % 34
        r4 g8 [ g8 ] r4 g4 | % 35
        r4 g8 [ g8 ] r4 g4 | % 36
        r4 g8 [ g8 ] r4 g4 | %37
        r2 e'8 [ fis8 e8 fis8 ] | % 38
        g1 | % 39
        r4 g,8 [ g8 ] r4 g4 \barNumberCheck #40
        r4 g8 [ g8 ] r4 g4 | % 41
        r2 e'8 [ fis8 e8 fis8 ] | % 42
        g1 | % 43
        r4 g,8 [ g8 ] r4 g4 | % 44
        r4 g8 [ g8 ] r4 g4 | % 45
        r4 g8 [ g8 ] r4 g4 | % 46
        d'4. -. d4. -. d4 ~ | % 47
        d4 d4 c4 bes4 | % 48
        c4. -. c4. -. c4 ~ | % 49
        c4 c4 bes4 a4 | % 50
        d8 [ f8 e8 f8 ] d2 | % 51
        r4 d4 c4 bes4 | % 52
        c4. -. c4. -. c4 ~ | % 53
        c4 c4 bes4 a4 | % 54
        bes8 [ bes8 ] r8 bes8 c4 a4 | \barNumberCheck #55
        bes8 [ bes8 ] r8 bes8 c4 a4 | % 56
        bes8 [ bes8 ] r8 bes8 c4
        c8 [ d8 ] | % 57
        bes8 [ c8 bes8 c8 ]
        a4 g4 | % 58
        bes8 [ bes8 ] r8 bes8 c4
        a4 | % 59
        bes8 [ bes8 ] r8 bes8 c4
        a4 | % 60
        bes8 [ bes8 ] r8 bes8 c4
        c8 [ d8 ] | % 61
        bes8 [ c8 bes8 c8 ] a4 g4 
    }
    | % 62
    g'8 [ fis8 g8 fis8 ]
    g8 [ fis8 g8 fis8 ] | % 63
    g8 [ fis8 g8 fis8 ]
    g8 [ fis8 g8 fis8 ] | % 64
    g8 [ fis8 g8 fis8 ]
    g8 [ fis8 g8 fis8 ] \barNumberCheck #65
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
    g2 ^\fermata r4 | % 26
    \numericTimeSignature
    \time 4/4 
    R1*4 | %30
    \repeat volta 2 {
        \repeat percent 8 { g2. d4 } | % 38
        \repeat percent 8 { g2. d4 } | % 46
        \repeat percent 8 { g2. d4 } | % 54
        \repeat percent 8 { g2. d4 } }
    | % 62
    \repeat percent 2 { g2. d4 } | % 64
    g2. d4 | \barNumberCheck #65
    g4 r4 r2 \bar "|."
    }

Bil_Afrah-Chords =  \chordmode {
    \repeat volta 2 {
        | % 1
        g2 s4 | % 2
        g2 s4 | % 3
        g2 s4 | % 4
        g2 s4 | % 5
        g2 s4 | % 6
        g2 s4 | % 7
        g2 s4 | % 8
        g2 s4 | % 9
        g2 s4 | \barNumberCheck #10
        g2 s4 | % 11
        g2 s4 | % 12
        g2 s4 | % 13
        g2 s4 | % 14
        g2 s4 | % 15
        g2 s4 | % 16
        g2 s4 | % 17
        g2 s4 | % 18
        g2 s4 | % 19
        g2 s4 | \barNumberCheck #20
        g2 s4 | % 21
        g2 s4 | % 22
        g2 s4 | % 23
        g2 s4 | % 24
        g2 s4 }
    | % 25
    g2 s4 | % 26
    s1 s1 s1 s1 | % 30
    \repeat volta 2 {
        g2. s4 | % 31
        g2. s4 | % 32
        g2. s4 | % 33
        g2. s4 | % 34
        g2. s4 | % 35
        g2. s4 | % 36
        g2. s4 | % 37
        g2. s4 | % 38
        g2. s4 | % 39
        g2. s4 | % 40
        g2. s4 | % 41
        g2. s4 | % 42
        g2. s4 | % 43
        g2. s4 | % 44
        g2. s4 | % 45
        g2. s4 | % 46
        g2. s4 | % 47
        g2. s4 | % 48
        g2. s4 | % 49
        g2. s4 | % 50
        g2. s4 | % 51
        g2. s4 | % 52
        g2. s4 | % 53
        g2. s4 | % 54
        g2. s4 | \barNumberCheck #55
        g2. s4 | % 56
        g2. s4 | % 57
        g2. s4 | % 58
        g2. s4 | % 59
        g2. s4 | % 60
        g2. s4 | % 61
        g2. s4 }
    | % 62
    g2. s4 | % 63
    g2. s4 | % 64
    g2. s4 | \barNumberCheck #65
    g4 s4 s2 \bar "|."
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

