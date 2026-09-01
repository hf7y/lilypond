\version "2.24.1"
% automatically converted by musicxml2ly from Leve Palestina.musicxml

Leve_Palestina-header = \header {
    title =  "Leve Palestina"
    tagline =  ""
}

Leve_Palestina-Form =  \relative f' {
    \time 4/4 
    \key bes \major 
    | % 1
    \tempo 4=100 
    \mark \markup \padded-box "Intro"
    s8 % ^ "Trumpets Only" 
        s8 s2. | % 2
    s1 | % 3
    s8 % ^ "All Join" 
        s8 s2. | % 4
    s1 
    \break

    \removeWithTag #'noBreaks \break
    \mark \markup \padded-box "A"
    \repeat volta 2 {
        | % 5
        \textMark \markup \column {
            \line { "The form is Intro, AB AB AB AB AB....." }
            \line { "each B having a different featured group" }
        }
        s8 s8 s2. | % 6
        s1 
    }
    \repeat volta 2 {
        | % 7
        s1 | % 8
        s1 
    }
    \break

    \removeWithTag #'noBreaks \break
    \mark \markup \padded-box "B"
    \repeat volta 2 {
        | % 9
        s8 % ^ "Featured group"
            s8 s2. | \barNumberCheck #10
        s8 % ^ "Response"
            s8 s2. | % 11
        s1 | % 12
        s8 %^ "Response" 
            s8 s2. 
    }
    | % 13
    s1 | % 14
    s1 | % 15
    s8 % ^ "Response" 
        s8 s2. | % 16
    s1 \bar "|."
}

Leve_Palestina-Melody =  \relative f' {
    % \clef "treble" 
    % \numericTimeSignature
    % \time 4/4 
    % \key bes \major 
    | % 1
    % \tempo 4=100 
    % \mark \markup { \box { Intro } } 
    f8 [ ^ "Trumpets Only" g8 g8 g8 ] 
        f8 ( [ g8 ) g8 ] r8 | % 2
    f8 [ g8 g8 f8 ] 
        es8 ( [ d8 ) d8 ] r8 | % 3
    f8 [ ^ "All Join" g8 g8 g8 ]
        f8 ( [ g8 ) g8 ] r8 | % 4
    f8 [ g8 g8 f8 ] 
        es8 ( [ d8 ) d8 ] r8 
    \repeat volta 2 {
        | % 5
        % \mark \markup \padded-box "A"
        f8 ( [ g8 ) ] g4
            f8 ( [ g8 ) ] g4 | % 6
        g8 [ a8 bes8 a8 ] 
            bes8 [ a8 ] g4 
    }
    \repeat volta 2 {
        | % 7
        bes8 [ a8 g8 f8 ] 
            g8 [ a8 f8 es8 ] | % 8
        f8 [ g8 es8 d8 ] f8 [
        es8 ] d4 }
    \repeat volta 2 {
        | % 9
        % \mark \markup \padded-box "B"
        g8 [ ^ "Featured group" bes8 bes8 a8 ] 
            bes8 [ a8 ] g4 | \barNumberCheck #10
        g8 [ ^ "Response" bes8 bes8 a8 ]
            bes8 [ a8 ] g4 | % 11
        g8 [ bes8 bes8 bes8 ]
            c8 [ bes8 ] g4 | % 12
        g8 [ ^ "Response" bes8 bes8 bes8 ]
            c8 [ bes8 ] g4 
    }
    | % 13
    g8 [ bes8 ~ bes8 a8 ] g4 f4 | % 14
    es8 [ g8 g8 g8 ] 
        f8 [ es8 ] d4 | % 15
    g8 [ ^ "Response" bes8 ~ bes8 a8 ]
        g4 f4 | % 16
    es8 [ g8 g8 g8 ] 
        f8 [ es8 ] d4 \bar "|."
}

Leve_Palestina-Accompaniment =  \relative f {
    % \clef "treble_8" 
    % \numericTimeSignature
    % \time 4/4 
    % \key bes \major 
    | % 1
    R1*2 | % 3
    f8 [ g8 g8 g8 ] f8 ( [
    g8 ) g8 ] r8 | % 4
    f8 [ g8 g8 f8 ] es8 ( [
    d8 ) d8 ] r8 \repeat volta 2 {
        | % 5
        g,4. g16 [ g16 ] g2 | % 6
        g'4. g16 [ g16 ] g2 }
    \repeat volta 2 {
        | % 7
        <g bes>2 <f a>2 | % 8
        <es g>2 f8 [ es8 ] d4 }
    \repeat volta 2 {
        | % 9
        r8 ^ \markup \column {
            \line { "(Mids repeat this" }
            \line { "unless featured)" }
        } <g bes>8 ~
            <g bes>4 r2 | \barNumberCheck #10
        g8 [ ^ "Response" bes8 bes8 a8 ]
        bes8 [ a8 ] g4 | % 11
        g8 [ bes8 bes8 bes8 ]
        c8 [ bes8 ] g4 | % 12
        g8 [ ^ "Response" bes8 bes8 bes8
        ] c8 [ bes8 ] g4 }
    | % 13
    g8 [ bes8 ~ bes8 a8 ] g4
    f4 | % 14
    es8 [ g8 g8 g8 ] f8 [
    es8 ] d4 | % 15
    g8 [ ^ "Response" bes8 ~ bes8 a8 ]
    g4 f4 | % 16
    es8 [ g8 g8 g8 ] f8 [
    es8 ] d4 \bar "|."
     }

Leve_Palestina-Bass =  \relative g, {
    R1*4 \repeat volta 2 {
        | % 5
        g4 r8 f8 g4 r8 f8 | % 6
        g4 r8 f8 g4 r8 f8 }
    \repeat volta 2 {
        | % 7
        g4 r8 f8 g4 r8 f8 | % 8
        g4 r8 f8 g4 r8 f8 }
    \repeat volta 2 {
        | % 9
        g4 r8 f8 g4 r8 f8 |
        \barNumberCheck #10
        g4 r8 f8 g4 r8 f8 | % 11
        g4 r8 f8 g4 r8 f8 | % 12
        g4 r8 f8 g4 r8 f8 }
    | % 13
    g4 r8 f8 g4 r8 f8 | % 14
    g4 r8 f8 g4 r8 f8 | % 15
    g4 r8 f8 g4 r8 f8 | % 16
    g4 r8 r8 f'8 [ es8 ] d4 \bar
    "|."
    }

Leve_Palestina-Chords =  \chordmode {
    | % 1
    s1 s1 s1 s1 \repeat volta 2 {
        | % 5
        g4 s8 f8 g4 s8 f8 | % 6
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
    s4 s8 s8 f8 es8 d4 \bar "|."
    }

Leve_Palestina-Percussion =  \relative e' {
    \clef "percussion" 
    \numericTimeSignature
    \time 4/4 
    \key c \major
    \stopStaff \override Staff.StaffSymbol.line-count = #1 \startStaff 
    | % 1
    R1*2 ^ "Starts without drums" | % 3
    e4 e4 e4 e4 | % 4
    e4 e4 e8 [ e8 ] e4 \repeat volta 2 {
        | % 5
        R1*2 }
    \repeat volta 2 {
        R1 ^ "Continue" | % 7
        R1 }
    \repeat volta 2 {
        | % 9
        R1*4 }
    | % 13
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
%                     \context Voice = "Melody" {  \Leve_Palestina-Melody }
%                     >>
%                 >>
%             \new Staff
%             <<
%                 \set Staff.instrumentName = "Accompaniment"
%                 \set Staff.shortInstrumentName = "acc."
                
%                 \context Staff << 
%                     \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
%                     \context Voice = "Accompaniment" {  \Leve_Palestina-Accompaniment }
%                     >>
%                 >>
%             \context ChordNames = "Chords" { \Leve_Palestina-Chords}
%             \new Staff
%             <<
%                 \set Staff.instrumentName = "Bass"
%                 \set Staff.shortInstrumentName = "bass"
                
%                 \context Staff << 
%                     \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
%                     \context Voice = "Bass" {  \Leve_Palestina-Bass }
%                     >>
%                 >>
            
%             >>
%         \new RhythmicStaff
%         <<
%             \set RhythmicStaff.instrumentName = "Percussion"
%             \set RhythmicStaff.shortInstrumentName = "perc."
            
%             \context RhythmicStaff << 
%                 \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
%                 \context Voice = "Percussion" {  \Leve_Palestina-Percussion }
%                 >>
%             >>
        
%         >>
%     }

