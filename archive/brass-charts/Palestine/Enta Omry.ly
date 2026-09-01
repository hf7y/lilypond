\version "2.24.1"
% automatically converted by musicxml2ly from Enta Omry.musicxml
\pointAndClickOff

Enta_Omry-header = \header {
    piece =  "Enta Omry"
    tag =  ""
    }

  Enta_Omry-Form =  \relative f' {
    \numericTimeSignature\time 4/4 \key es \major | % 1
    \tempo 4=120 \mark \markup { \box { Intro } } s1 | % 2
    s1 | % 3
    s1 | % 4
    s1 | % 5
    s1*4 | % 9
    s1 | \barNumberCheck #10
    s1*3 | % 13
    s1 \bar ".|:-||"
    \break

    \repeat volta 2 {
        | % 14
        \mark \markup { \box { A } } s2. ^ "4x" s4 | % 15
        s1 }
    \break
    \repeat volta 2 {
        | % 16
        \mark \markup { \box { B } } s4 ^ "Trumpets"
        s2. | % 17
        s1 | % 18
        s1 | % 19
        s1 | \barNumberCheck #20
        s1*3 | % 23
        s1 \bar "||"
        \break

        \mark \markup { \box { B' } } s4 ^ "Saxes"
        s2. | % 25
        s2 s8 s8 ^ "Trumpets" s8 s8 | % 26
        s4 ^ "Saxes" s4 s2 | % 27
        s2 s8 s8 ^ "Trumpets" s4 | % 28
        s4 ^ "Saxes" s2. | % 29
        s1 | \barNumberCheck #30
        s4 s8 ^ "All" s8 s2 | % 31
        \key bes \major s4 s2. \bar "||"
        \break

        \mark \markup { \box { B'' } } 
        s1 | % 33
        s8 s8 _ "Saxes" s2. | % 34

        s1 | % 35
        s8 s8 _ "Saxes" s2. | % 36

        s1 | % 37
        s1
        }
    \alternative { {
            | % 38
            s1 | % 39
            s1 }
        } \repeat volta 2 {
        | \barNumberCheck #40
        \time 3/4  s4. - "4x" ^ "rit."
        s8 s8 s8 }
    | % 41
    s2. ^\fermata \caesura
    \break

    \textMark "Drums start with 4 bars of maksoum" 
    \numericTimeSignature\time 4/4 \mark \markup { \box { C } } \tempo
    4=150 s1*4
    \repeat volta 2 {
        s8  s8
        s2.
        s1
        s1
        s1
        s1
        s1
        s1
        s1 }
    \break
    
    \mark \markup { \box { D } } s1 s1 s1 s1
    s1*4 
    s1*4
    \repeat volta 2 {
        s8 - "3x" s8 s2.
        s1 }
    s1 \bar "|."
    }

Enta_Omry-Melody =  \relative f' {
    \clef "treble" \numericTimeSignature\time 4/4 \key es \major | % 1
    \tempo 4=120 \mark \markup { \box { Intro } } r4. f8
    g2 | % 2
    r4. f8 g2 | % 3
    r4. as8 f2 | % 4
    r4. es16 [ f16 ] g2 | % 5
    r4. as16 [ bes16 ] c2 | % 6
    r4. bes16 [ c16 ] d2 | % 7
    r4 es8 [ c8 ] d8 [ bes16
    as16 ] g4 | % 8
    r4 es'8 [ c8 ] d8 [ bes16
    as16 ] g4 | % 9
    r4 bes8 [ g8 ] f8 [ e16 f16
    ] g4 | \barNumberCheck #10
    r4 bes8 [ g8 ] f8 [ e16 f16
    ] g4 | % 11
    r4 es'8 [ c8 ] d8 [ bes16
    as16 ] g4 | % 12
    r4 es'8 [ c8 ] d8 [ bes16
    as16 ] g4 | % 13
    r4 es'8 [ c8 ] d8 [ bes8 ]
    as16 [ g16 f8 ] \bar "||"
    \repeat volta 2 {
        | % 14
        \mark \markup { \box { A } } r2. ^ "4x" r8 es'16 [
        d16 ] | % 15
        c8 [ d8 bes8 as8 ]
        g4 r4 }
    \repeat volta 2 {
        | % 16
        \mark \markup { \box { B } } d'4 ^ "Trumpets"
        es4 es4 d8 [ d8 ~ ] | % 17
        d8 [ d8 ] es4 es2 | % 18
        c4 d4 d4 c8 [
        c8 ~ ] | % 19
        c8 [ c8 ] d4 d4 r4 |
        \barNumberCheck #20
        bes4 c4 c4 bes8 [
        d8 ~ ] | % 21
        d8 c4 d8 bes4 as4
        | % 22
        g4 r4 r2 | % 23
        R1 \bar "||"
        \mark \markup { \box { B' } } d'4 ^ "Saxes"
        es4 es4 d8 [ d8 ~ ] | % 25
        d8 [ d8 ] es4 es8 f,8 ^. [ ^ "Trumpets" g8 ^.
        as8 ^. ]
        | % 26
        c4 ^ "Saxes" d4 d4 c8 [
        c8 ~ ] | % 27
        c8 [ c8 ] d4 d8 d,8 ^. [ ^ "Trumpets" es8 ^.
        f8 ^. ] | % 28
        bes4 ^ "Saxes" c4 c4 bes8
        [ d8 ~ ] | % 29
        d8 c4 d8 bes4 as4
        | \barNumberCheck #30
        g4 d'8 [ ^ "All" f8 ] e4
        \trill c8 [ es8 ] | % 31
        \key bes \major d4 \trill r8 c8 f8
        [ es8 g8 es8 ] \bar "||"
        \mark \markup { \box { B'' } } 
        << {
            d4 es4 es4 d8 [ d8 ~ ] | % 33
            d8 [ d8 ] _ "Saxes" es4 es4 r4 | % 34
            } \\ {
            s1 | % 33
            e,8 \rest d8 [ es8 f8 ] g8 [ f8 as8 g8 ] | % 34
            } >>
        << { 
            c4 d4 d4 c8 [ c8 ~ ] | % 35
            c8 [ c8 ] _ "Saxes" d4 d4 r4 | % 36
            } \\ {
            s1 | % 35
            r8 c,8 [ d8 es8 ] f8 [ es8 g8 f8 ] | % 36
            } >>
        bes4 c4 c4 bes8 [
        d8 ~ ] | % 37
        d8 c4 d8 bes4 as4
        }
    \alternative { {
            | % 38
            g4 d'8 [ f8 ] e4
            \trill c8 [ es8 ] | % 39
            d4 \trill r8 c8 f8 [
            es8 g8 es8 ] }
        } \repeat volta 2 {
        | \barNumberCheck #40
        \time 3/4  g,4. - "4x" ^ "rit." \startTrillSpan ^ "rit."
        \startTrillSpan bes8 as8 [ c8 ] }
    | % 41
    g2. ^\fermata \caesura \stopTrillSpan \stopTrillSpan
    \numericTimeSignature\time 4/4 \mark \markup { \box { C } } \tempo
    4=150 R1*4 \repeat volta 2 {
        g8 [ - "Drums start with 4 bars of maksoum" as8
        g8 as8 ] g4 as4 bes4
        as4 bes4 r4 as4 bes4 r4
        as4 as8 [ bes16 c16 ]
        bes8 [ as8 ] as4 g4 g8
        f4 g8 f4 g4 as4
        g4 as4 r4 f4 as4 r4 f4
        es4 f4 g4 r4 }
    \mark \markup { \box { D } } R1 d'4 ( c4 )
    c4 ( bes4 ) R1 c4 ( bes4 )
    bes4 ( as4 ) R1 bes4 ( as4 )
    as4 ( g4 ) d'8 [ es8 d8
    c8 ] c8 [ d8 c8
    bes8 ] bes8 [ c8 bes8 as8 ]
    as8 [ bes8 as8 g8 ] g8 [
    as8 ] bes4 r4 g8 [ as8 ]
    bes8 [ c16 d16 ] c8 [ bes8 ]
    bes8 [ as8 ] g4 d'8 [ es8
    d8 c8 ] c8 [ d8 c8
    bes8 ] bes8 [ c8 bes8
    as8 ] as8 [ bes8 as8 g8 ]
    \repeat volta 2 {
        g8 [ - "3x" as8 ] bes4 r4 g8 [
        as8 ] bes8 [ c16 d16 ]
        c8 [ bes8 ] bes8 [ as8 ]
        g4 }
    g8 [ as8 ] bes4 r2 \bar "|."
    }

Enta_Omry-Accompaniment =  \relative f {
    % \clef "treble_8" \numericTimeSignature\time 4/4 \key es \major | % 1
    r4. f8 g2 | % 2
    r4. f8 g2 | % 3
    r4. as8 f2 | % 4
    r4. es16 [ f16 ] g2 | % 5
    r4. as16 [ bes16 ] c2 | % 6
    r4. bes16 [ c16 ] d2 | % 7
    r4 es8 [ c8 ] d8 [ bes16
    as16 ] g4 | % 8
    r4 es'8 [ c8 ] d8 [ bes16
    as16 ] g4 | % 9
    r4 bes8 [ g8 ] f8 [ e16 f16
    ] g4 | \barNumberCheck #10
    r4 bes8 [ g8 ] f8 [ e16 f16
    ] g4 | % 11
    r4 es'8 [ c8 ] d8 [ bes16
    as16 ] g4 | % 12
    r4 es'8 [ c8 ] d8 [ bes16
    as16 ] g4 | % 13
    R1 \bar "||"
    \repeat volta 2 {
        | % 14
        d4 -. g8 -. g4 -. g8 -.
        g4 -. | % 15
        d4 -. d4 -. g4 -. r4 }
    \repeat volta 2 {
        | % 16
        r4 g8 -. g4 -. g8 -. g4 -. | % 17
        g,4 -. g'4 -. g4 -. r4 | % 18
        r4 g8 -. g4 -. g8 -. g4 -. | % 19
        g,4 -. g'4 -. g4 -. r4 | \barNumberCheck
        #20
        r4 g8 -. g4 -. g8 -. g4 -. | % 21
        g,4 -. g'4 -. g4 -. r4 | % 22
        r4 d8 [ f8 ] e4 c8 [ es8
        ] | % 23
        d4 r8 c8 f8 [ es8 g8
        es8 ] \bar "||"
        r4 g8 -. g4 -. g8 -. g4 -. | % 25
        g,4 -. g'4 -. g8 -. f8 -. [
        g8 -. as8 -. ] | % 26
        r4 g8 -. g4 -. g8 -. g4 -. | % 27
        g,4 -. g'4 -. g8 -. d8 -. [
        es8 -. f8 -. ] | % 28
        r4 g8 -. g4 -. g8 -. g4 -. | % 29
        g,4 -. g'4 -. g4 -. r4 | \barNumberCheck
        #30
        r4 d8 [ f8 ] e4 c8 [ es8
        ] | % 31
        \key bes \major d4 r8 c8 f8 [ es8
        g8 es8 ] \bar "||"
        d4 es4 es4 d8 [ d8 ~ ] | % 33
        d8 [ d8 ] es4 es4 r4 | % 34
        c4 d4 d4 c8 [ c8 ~ ] | % 35
        c8 [ c8 ] d4 d4 r4 | % 36
        bes4 c4 c4 bes8 [ d8 ~ ]
        | % 37
        d8 c4 d8 bes4 as4 | % 38
        g4 d''8 [ f8 ] e4
        c8 [ es8 ] | % 39
        d4 r8 c8 f8 [ es8
        g8 es8 ] }
    \repeat volta 2 {
        | \barNumberCheck #40
        \time 3/4  g,4. bes8 as8 [
        c8 ] }
    | % 41
    g2. ^\fermata \caesura \numericTimeSignature\time 4/4 R1*4
    \repeat volta 2 {
        r8 <d g>8 r8 <d g>8 r4 <d g>4 r8
        <d g>8 r8 <d g>8 r4 <d g>4 as'4
        bes4 r4 r4 r8 <d, g>8 r8 <d g>8 r4
        <d g>4 r8 <c f>8 r8 <c f>8 r4 <c
            f>4 r8 <c f>8 r8 <c f>8 r4 <c f>4
        f4 as4 r2 es4 f4 g4 r4 }
    d8 [ es8 d8 es8 ] d4
    es4 R1 c8 [ d8 c8 d8 ] c4
    d4 R1 bes8 [ c8 bes8 c8 ]
    bes4 c4 R1 r4 d'8 [ c8 ] r4
    c8 [ bes8 ] r4 bes8 [ as8 ] r4
    as8 [ g8 ] g8 [ as8 ] bes4
    r2 R1 r4 d8 [ c8 ] r4 c8 [
    bes8 ] r4 bes8 [ as8 ] r4 as8 [ g8 ]
    \repeat volta 2 {
        g8 [ as8 ] bes4 r2 R1 }
    g8 [ as8 ] bes4 r2 \bar "|."
    }

Enta_Omry-Bass =  \relative g, {
    | % 1
    \repeat percent 8 { g2. r4 } | % 9
    \repeat percent 4 { g2. r4 } | % 13
    g2. r4 % \bar "||"
    \repeat volta 2 {
        | % 14
        d4. g4. g4 | % 15
        d2 g4 r4 }
    \repeat volta 2 {
        | % 16
        \repeat percent 3 { 
            d4. g4. g4 | % 17
            d2 g4 r4 | } | % 22
        g4 f4 e4 es4 | % 23
        d4 r4 f4 g4 \bar "||"
        \repeat percent 3 { 
            d4. g4. g4 |
            d2 g4 r4 | } | \barNumberCheck #30
        g4 f4 e4 es4 | % 31 \key bes \major
        d4 r4 f4 g4 \bar "||"
        \repeat percent 3 { 
            d4. g4. g4 |
            d2 g4 r4 | } | % 38
        g4 f4 e4 es4 | % 39
        d4 r4 f4 g4 }
    \repeat volta 2 {
        | \barNumberCheck #40
        \time 3/4  g4. bes8 as8 [
        c8 ] }
    | % 41
    g2. ^\fermata \caesura \numericTimeSignature\time 4/4 R1*4
    \repeat volta 2 {
        \repeat percent 2 { g4 r4 g4 g'4 }
        g,4 g4 r4 r4 
        g4 r4 g'4 r4 
        \repeat percent 2 { f,4 r4 f4 f'4 }
        f,4 f4 r4 r4
        es4 f4 g4 r4 }
    d'2 d2 d2 c2 c2
    c2 c2 bes2 bes2
    bes2 bes2 as2 d2 c2
    bes2 as2 g8 [ as8 ] bes4 r2
    bes2 as4 g4 d'2 c2
    bes2 as2 \repeat volta 2 {
        g8 [ as8 ] bes4 r2 bes2
        as4 g4 }
    g8 [ as8 ] bes4 r2 \bar "|."
    }

Enta_Omry-Chords =  \chordmode {
    \repeat volta 2 {
        | % 1
        g2.:5 s4 | % 2
        g2.:5 s4 | % 3
        g2.:5 s4 | % 4
        g2.:5 s4 | % 5
        g2.:5 s4 | % 6
        g2.:5 s4 | % 7
        g2.:5 s4 | % 8
        g2.:5 s4 | % 9
        g2.:5 s4 | \barNumberCheck #10
        g2.:5 s4 | % 11
        g2.:5 s4 | % 12
        g2.:5 s4 | % 13
        g2.:5 s4 \bar "||"
        d4.:5 g4.:5 g4:5 | % 15
        d2:5 g4:5 s4 }
    \repeat volta 2 {
        | % 16
        d4.:5 g4.:5 g4:5 | % 17
        d2:5 g4:5 s4 | % 18
        d4.:5 g4.:5 g4:5 | % 19
        d2:5 g4:5 s4 | \barNumberCheck #20
        d4.:5 g4.:5 g4:5 | % 21
        d2:5 g4:5 s4 | % 22
        g4:5 f4:5 e4:5 es4:5 | % 23
        d4:5 s4 f4:5 g4:5 \bar "||"
        d4.:5 g4.:5 g4:5 | % 25
        d2:5 g4:5 s4 | % 26
        d4.:5 g4.:5 g4:5 | % 27
        d2:5 g4:5 s4 | % 28
        d4.:5 g4.:5 g4:5 | % 29
        d2:5 g4:5 s4 | \barNumberCheck #30
        g4:5 f4:5 e4:5 es4:5 | % 31
        d4:5 s4 f4:5 g4:5 \bar "||"
        d4.:5 g4.:5 g4:5 | % 33
        d2:5 g4:5 s4 | % 34
        d4.:5 g4.:5 g4:5 | % 35
        d2:5 g4:5 s4 | % 36
        d4.:5 g4.:5 g4:5 | % 37
        d2:5 g4:5 s4 | % 38
        g4:5 f4:5 e4:5 es4:5 | % 39
        d4:5 s4 f4:5 g4:5 }
    \repeat volta 2 {
        | \barNumberCheck #40
        g4.:5 bes8:5 as8:5 c8:5 }
    | % 41
    g2.:5 s1 s1 s1 s1 \repeat volta 2 {
        g4:5 s4 s4 s4 g4:5 s4 s4 s4 g4:5 g4:5 s4 s4 g4:5 s4 s4 s4 f4:5
        s4 s4 s4 f4:5 s4 s4 s4 f4:5 f4:5 s4 s4 es4:5 f4:5 g4:5 s4 }
    d2:5 d2:5 d2:5 c2:5 c2:5 c2:5 c2:5 bes2:5 bes2:5 bes2:5 bes2:5 as2:5
    d2:5 c2:5 bes2:5 as2:5 g8:5 as8:5 bes4:5 s2 bes2:5 as4:5 g4:5 d2:5
    c2:5 bes2:5 as2:5 \repeat volta 2 {
        g8:5 as8:5 bes4:5 s2 bes2:5 as4:5 g4:5 }
    g8:5 as8:5 bes4:5 s2 \bar "|."
    }

Enta_Omry-Percussion =  \relative e' {
    \clef "percussion" \numericTimeSignature\time 4/4 \key c \major
    \stopStaff \override Staff.StaffSymbol.line-count = #1 \startStaff | % 1
    R1*13 \bar "||"
    \repeat volta 2 {
        | % 14
        e4. ^ "Chiftitelli" e4. e4 | % 15
        e4 r4 e4 r4 }
    \repeat volta 2 {
        | % 16
        R1*8 \bar "||"
        R1*8 \bar "||"
        R1*8 }
    \repeat volta 2 {
        | \barNumberCheck #40
        \time 3/4  e4 e8 [ e8 ] e4 ^
        "Roll/shake" }
    | % 41
    R2. \numericTimeSignature\time 4/4 \stopStaff \override
    Staff.StaffSymbol.line-count = #1 \startStaff e8 ^
    "Maksoum" e8 r8 e8 e4 e4 R1*3
    \repeat volta 2 {
        R1*2 e4 ^ "Baladi (halftime)" e4 r4
        e4 e8 ^ "Maksoum" e8 r8 e8 e4
        e4 R1*2 e4 ^ "Baladi (halftime)" e4
        r4 e4 e8 ^ "Maksoum" e8 r8 e8
        e4 e4 }
    e8 ^ "Maksoum" e8 r8 e8 e4
    e4 R1*7 e4 ^ "Baladi (halftime)" e4 r4
    e4 e8 ^ "Maksoum" e8 r8 e8
    e4 e4 R1*2 \repeat volta 2 {
        e4 ^ "Baladi (halftime)" e4 r4 e4
        e8 ^ "Maksoum" e8 r8 e8 e4
        e4 }
    e8 [ ^
    "Baladi (halftime)"
    e8 ] e4
    r2 \bar "|."
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
%                     \context Voice = "Melody" { \Enta_Omry-Melody }
%                     >>
%                 >>
%             \new Staff
%             <<
%                 \set Staff.instrumentName = "Accompaniment"
%                 \set Staff.shortInstrumentName = "acc."
                
%                 \context Staff << 
%                     \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
%                     \context Voice = "Accompaniment" {  \Enta_Omry-Accompaniment }
%                     >>
%                 >>
%             \context ChordNames = "Chords" { \Enta_Omry-Chords}
%             \new Staff
%             <<
%                 \set Staff.instrumentName = "Bass"
%                 \set Staff.shortInstrumentName = "bass"
                
%                 \context Staff << 
%                     \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
%                     \context Voice = "Bass" {  \Enta_Omry-Bass }
%                     >>
%                 >>
            
%             >>
%         \new RhythmicStaff
%         <<
%             \set RhythmicStaff.instrumentName = "Percussion"
%             \set RhythmicStaff.shortInstrumentName = "perc."
            
%             \context RhythmicStaff << 
%                 \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
%                 \context Voice = "Percussion" {  \Enta_Omry-Percussion }
%                 >>
%             >>
        
%         >>
%     }

