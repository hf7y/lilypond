\version "2.24.1"
% automatically converted by musicxml2ly from Zeina.musicxml
\pointAndClickOff

Zeina-header = \header {
    piece =  "Zeina"
    tag =  
    }

\layout {
    \context { \Score
        skipBars = ##t
        autoBeaming = ##f
        }
    }
Zeina-Melody =  \relative bes' {
    \clef "treble" \numericTimeSignature\time 4/4 \key bes \major
    \repeat volta 2 {
        | % 1
        \tempo 4=180 \mark \markup { \box { Intro } } <bes d>4
        -. ^ "Trumpets" _ "Lower harmony only on repeat" <c
            es>4 -. <a c>4 -. <c es>4 -. | % 2
        r8 <bes d>8 -. r8 <a c>8 -. r8 <g
            bes>8 -. r8 <fis a>8 -. | % 3
        <bes d>4 -. <c es>4 -. <a c>4 -.
        <c es>4 -. | % 4
        <bes d>4 -. f4 ^ "Saxes" e2 \trill | % 5
        <bes' d>4 -. ^ "Trumpets" <c es>4 -.
        <a c>4 -. <c es>4 -. | % 6
        r8 <bes d>8 -. r8 <a c>8 -. r8 <g
            bes>8 -. r8 <fis a>8 -. | % 7
        <bes d>4 -. <c es>4 -. <a c>4 -.
        <c es>4 -. | % 8
        <bes d>4 -. g4 ^ "Saxes" d4 r4 }
    \repeat volta 2 {
        | % 9
        \mark \markup { \musicglyph "scripts.segno" } \mark \markup {
            \box { A } } d4 ^ "Trumpets" -
        "A Section repeats 4X" c4 d4 es4 |
        \barNumberCheck #10
        fis8 [ g8 g8 fis8 ] es4
        fis8 [ g8 ] | % 11
        es8 [ d8 ] c4 es16 [ fis16
        es16 d16 ] es4 | % 12
        d4 d'16 [ ^ "Saxes" es16 d16
        c16 ] d4 ( c4 ) }
    | % 13
    \mark \markup { \box { B } } r2 r4 <bes, d g>4 | % 14
    r2 r4 <bes d g>4 | % 15
    r2 r4 <bes d g>4 | % 16
    r2 r4 <bes d g>4 | % 17
    r4 bes'4 a4 g4 | % 18
    fis4 r4 r2 | % 19
    r4 a4 g4 fis4 | \barNumberCheck #20
    es4 r4 r2 | % 21
    r4 bes'4 a4 g4 | % 22
    fis4 r4 r2 | % 23
    r4 a4 g4 fis4 | % 24
    es4 r4 r2 | % 25
    \mark \markup { \box { C } } d'4 c4 b4
    g8 [ c8 ~ ] | % 26
    c8 [ bes8 ] a4 fis4 d4 | % 27
    a'4 g4 fis4 d8 [ g8 ~ ] | % 28
    g8 [ f8 ] es4 d4 a4 | % 29
    es'8 [ d8 ] c4 fis8 [ es8 ]
    d4 | \barNumberCheck #30
    g8 [ fis8 ] es4 a8 [ g8 ]
    fis4 | % 31
    g8 [ fis8 es8 g8 ] fis8 [
    es8 es8 d8 ] | % 32
    d4 d'16 ( [ ^ "Only when repeating" es16
    d16 c16 ] d4 c4 ) ^ "D.S."
    \bar "|."
    \repeat volta 2 {
        \mark \markup { \box { D } } \tempo 4=220 r4 ^ "Saxes"
        d,8 -. [ d8 -. ] r4 d8 -. [ d8 -. ] r4
        d8 -. [ d8 -. ] r4 d8 -. [ d8 -.
        ] r4 d8 -. [ d8 -. ] r4 d8 -. [
        d8 -. ] r4 d8 -. [ d8 -. ] r4 d8 -. [
        d8 -. ] r4 d8 -. [ d8 -. ] r4 d8
        -. [ d8 -. ] }
    \alternative { {
            r4 d8 -. [ d8 -. ] r4 d8 -. [
            d8 -. ] r4 d8 -. [ d8 -. ] r4
            d8 -. [ d8 -. ] r2 d'8 [ ^ "All"
            d8 ] d4 }
        {
            r4 d,8 -. [ d8 -. ] r4 d8 -. [
            d8 -. ] r4 d8 -. [ d8 -. ] r4
            d8 -. [ d8 -. ] r8 d8 [ ^ "Trumpets"
            es8 fis8 ] g8 [ a8
            bes8 c8 ] }
        } \bar "|."
    \repeat volta 2 {
        \mark \markup { \box { E } } d2 ^ "Trumpets"
        c4 b4 c4 a8 [ ^ "Saxes" bes8
        ] a8 [ bes8 a8 bes8 ]
        c2 ^ "Trumpets" bes4 a4 bes4
        g8 [ ^ "Saxes" a8 ] g8 [ a8 g8
        a8 ] bes2 ^ "Trumpets" a4 g4
        a4 fis8 [ ^ "Saxes" g8 ] fis8 [
        g8 fis8 g8 ] }
    \alternative { {
            a4 ^ "Trumpets" bes4 c4
            bes8 [ a8 ] bes4 g4 ^ "Saxes"
            fis8 [ f8 ] fis4 }
        {
            a4 ^ "Trumpets" g4 fis4 es4
            d4 ^ "rit." \startTrillSpan es8 [ ^ "All"
            fis8 ] es8 [ d8 ] c4 }
        } ^ "D.S." \bar "|."
    \stopTrillSpan }

Zeina-Accompaniment =  \relative d {
    \clef "treble_8" \numericTimeSignature\time 4/4 \key bes \major
    \repeat volta 2 {
        | % 1
        d4 -. es4 -. c4 -. es4 -. | % 2
        r8 d8 -. r8 c8 -. r8 bes8 -. r8
        a8 -. | % 3
        d4 -. es4 -. c4 -. es4 -. | % 4
        d4 -. r4 r2 | % 5
        d4 -. es4 -. c4 -. es4 -. | % 6
        r8 d8 -. r8 c8 -. r8 bes8 -. r8
        a8 -. | % 7
        d4 -. es4 -. c4 -. es4 -. | % 8
        d4 -. r4 r2 }
    \repeat volta 2 {
        | % 9
        d4 -. d4 -. d8 -. [ d8 -. ]
        d4 -. | \barNumberCheck #10
        d4 -. d8 -. [ d8 -. ] d4 -.
        d8 -. [ d8 -. ] | % 11
        d4 -. d4 -. d8 -. [ d8 -. ]
        d4 -. | % 12
        d4 -. d8 -. [ d8 -. ] d4 (
        c4 ) }
    | % 13
    es4 fis4 g2 | % 14
    \grace { fis32 } g4. fis8 es2 | % 15
    r4 g4 g2 | % 16
    \grace { fis32 } g4. fis8 es8 [
    fis8 ] es4 | % 17
    R1 | % 18
    r4 fis8 [ g8 ] a4 a8 [ g8 ]
    | % 19
    fis4 r4 r2 | \barNumberCheck #20
    r4 es8 [ fis8 ] g8 [ a8 bes8
    c8 ] | % 21
    d4 r4 r2 | % 22
    r4 fis,8 [ g8 ] a4 a8 [ g8 ]
    | % 23
    fis4 r4 r2 | % 24
    r4 es8 [ fis8 ] g8 [ a8 bes8
    c8 ] | % 25
    d4 c4 b4 g8 [ c8 ~ ] | % 26
    c8 [ bes8 ] a4 fis4 d4 | % 27
    a'4 g4 fis4 d8 [ g8 ~ ] | % 28
    g8 [ f8 ] es4 d4 a4 | % 29
    es'2 ges2 | \barNumberCheck #30
    g2 a2 | % 31
    c,4 es2 c4 | % 32
    d4 d'16 ( [ ^ "Only when repeating" es16
    d16 c16 ] d4 c4 ) \bar "|."
    \repeat volta 2 {
        d,4 r4 fis4 es4 d4 r4 g4
        fis4 es4 r4 a4 g4 fis4
        es4 d4 c4 d4 r4 fis4
        es4 d4 r4 g4 fis4 es4 r4
        bes'4 g4 a4 r4 r2 }
    d,4 r4 fis4 g4 a4 fis4
    es4 fis4 d4 r4 r2 \bar "|."
    \repeat volta 2 {
        r4. d8 -. r4 d8 -. r8 r4. c8 -. r4
        c8 -. r8 r4. c8 -. r4 c8 -. r8 r4.
        bes8 -. r4 bes8 -. r8 r4. bes8 -. r4
        bes8 -. r8 r4. a8 -. r4 a8 -. r8 r4.
        a8 -. r4 a8 -. r8 r4. g8 -. r4 g8
        -. r8 }
    a'4 g4 fis4 es4 d4
    es8 [ fis8 ] es8 [ d8 ] c4 \bar "|."
    }

Zeina-Bass =  \relative d {
    \clef "treble_15" \numericTimeSignature\time 4/4 \key bes \major
    \repeat volta 2 {
        | % 1
        d2 _ "Only on repeat" r2 | % 2
        d2 r2 | % 3
        d2 r2 | % 4
        d2 r2 | % 5
        d2 r2 | % 6
        d2 r2 | % 7
        d2 r2 | % 8
        d4 g4 d4 r4 }
    \repeat volta 2 {
        | % 9
        d,4 d'4 r4 d4 | \barNumberCheck #10
        d,4 r4 d'4 r4 | % 11
        d,4 d'4 r4 d4 | % 12
        d,4 r4 d'4 r4 }
    | % 13
    d,4 g4 r4 g4 | % 14
    d2 g2 | % 15
    d4 g2 g4 | % 16
    d2 g2 | % 17
    d4 d'2 d4 | % 18
    d,2 d'2 | % 19
    d,4 d'2 d4 | \barNumberCheck #20
    c,2 c'2 | % 21
    d,4 d'2 d4 | % 22
    d,2 d'2 | % 23
    d,4 d'2 d4 | % 24
    c,2 c'2 | % 25
    d,4 d'2 d4 | % 26
    d,2 d'2 | % 27
    d,4 d'2 d4 | % 28
    c,2 c'2 | % 29
    es,2 fis2 | \barNumberCheck #30
    g2 a2 | % 31
    c,4 c'2 c,4 | % 32
    d2 d'2 \bar "|."
    \repeat volta 2 {
        d,1 d1 es1 es1 d1 d1 es1 d1 }
    d1 c1 d1 \bar "|."
    \repeat volta 2 {
        d'2 d2 c2 c2 c2
        c2 bes2 bes2 bes2
        bes2 a2 a2 a2 a2
        g2 d2 }
    a'4 g4 fis4 es4 d4 r4 r2
    \bar "|."
    }

Zeina-Chords =  \chordmode {
    \repeat volta 2 {
        \repeat volta 2 {
            \repeat volta 2 {
                | % 1
                d2:5 s2 | % 2
                d2:5 s2 | % 3
                d2:5 s2 | % 4
                d2:5 s2 | % 5
                d2:5 s2 | % 6
                d2:5 s2 | % 7
                d2:5 s2 | % 8
                d4:5 g4:5 d4:5 s4 }
            \repeat volta 2 {
                | % 9
                d4:5 s4 s4 s4 | \barNumberCheck #10
                d4:5 s4 s4 s4 | % 11
                d4:5 s4 s4 s4 | % 12
                d4:5 s4 s4 s4 }
            | % 13
            g4:5 s4 s4 s4 | % 14
            g2:5 s2 | % 15
            g4:5 s2 s4 | % 16
            g2:5 s2 | % 17
            d4:5 s2 s4 | % 18
            d2:5 s2 | % 19
            d4:5 s2 d4:5 | \barNumberCheck #20
            c2:5 s2 | % 21
            d4:5 s2 s4 | % 22
            d2:5 s2 | % 23
            d4:5 s2 s4 | % 24
            c2:5 s2 | % 25
            d4:5 s2 s4 | % 26
            d2:5 s2 | % 27
            d4:5 s2 s4 | % 28
            c2:5 s2 | % 29
            c2:5 s2 | \barNumberCheck #30
            c2:5 s2 | % 31
            c4:5 s2 s4 | % 32
            d2:5 s2 \bar "|."
            d1:5 d1:5 es1:5 es1:5 d1:5 d1:5 es1:5 d1:5 }
        d1:5 c1:5 d1:5 \bar "|."
        d2:5 s2 c2:5 s2 c2:5 s2 bes2:5 s2 bes2:5 s2 a2:5 s2 a2:5 s2 g2:5
        d2:5 }
    a4:5 g4:5 fis4:5 es4:5 d4:5 s4 s2 \bar "|."
    }

Zeina-Percussion =  \relative e' {
    \clef "percussion" \numericTimeSignature\time 4/4 \key c \major
    \stopStaff \override Staff.StaffSymbol.line-count = #1 \startStaff
    \repeat volta 2 {
        | % 1
        e4 _. ^ "Play with melody only on repeat" e4 _.
        e4 _. e4 _. | % 2
        r8 e8 _. r8 e8 _. r8 e8 _. r8 e8
        _. | % 3
        e4 _. e4 _. e4 _. e4 _. | % 4
        e4 _. r4 r2 | % 5
        e4 _. e4 _. e4 _. e4 _. | % 6
        r8 e8 _. r8 e8 _. r8 e8 _. r8 e8
        _. | % 7
        e4 _. e4 _. e4 _. e4 _. | % 8
        e4 _. r4 r2 }
    \repeat volta 2 {
        | % 9
        e4 ^ "Baladi" e4 r4 e4 |
        \barNumberCheck #10
        e4 r4 e4 r4 | % 11
        R1*2 }
    | % 13
    R1*20 \bar "|."
    \repeat volta 2 {
        \stopStaff \override Staff.StaffSymbol.line-count = #1 \startStaff
        e4. ^ "Ayub" e8 \parenthesize e4
        e4 R1*7 }
    R1*3 \bar "|."
    \repeat volta 2 {
        e4. ^ "Malfuf" e8 r4 e4 R1*7 }
    | \barNumberCheck #20
    R1*2 \bar "|."
    }


% The score definition
\score {
    <<
        
        \new StaffGroup
        <<
            \new Staff
            <<
                \set Staff.instrumentName = "Melody"
                \set Staff.shortInstrumentName = "mldy."
                
                \context Staff << 
                    \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                    \context Voice = "Melody" {  \Zeina-Melody }
                    >>
                >>
            \new Staff
            <<
                \set Staff.instrumentName = "Accompaniment"
                \set Staff.shortInstrumentName = "acc."
                
                \context Staff << 
                    \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                    \context Voice = "Accompaniment" {  \Zeina-Accompaniment }
                    >>
                >>
            \context ChordNames = "Chords" { \Zeina-Chords}
            \new Staff
            <<
                \set Staff.instrumentName = "Bass"
                \set Staff.shortInstrumentName = "bass"
                
                \context Staff << 
                    \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                    \context Voice = "Bass" {  \Zeina-Bass }
                    >>
                >>
            
            >>
        \new RhythmicStaff
        <<
            \set RhythmicStaff.instrumentName = "Percussion"
            \set RhythmicStaff.shortInstrumentName = "perc."
            
            \context RhythmicStaff << 
                \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "Percussion" {  \Zeina-Percussion }
                >>
            >>
        
        >>
    }
