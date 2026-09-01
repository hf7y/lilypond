\version "2.24.3"

\include "composition-functions.ly"
\include "woodwind-functions.ly"

% Voices: rh, lh, clarinet, flute
% Sections: a, b, c, d

a-rh = {
  \partial 2
  #(rexp (5ach 24) 1) r2 | %m2
  r2 #(rexp (5ach 25) 1) r2 | %m4

  r2. #(rexp (5ach 26) 2) r4 
  #(rexp (5ach 30) 1)
  #(rexp (5ach 42) 1) r2 %m8 |
  r2 \break \bar "||"

  %phrase 2
  r2 |
  R1 | #(rexp (5ach 28) 1) |
  r2. #(aplad (rexp (4ach 29) 2) #{2.#}) 
  #(rexp (5ach 39) 2) r4 r4
    \clef "bass" \transpose c c,, { #(rexp (reverse (5ach 38)) 2)  } r2. |
  r2 \bar "||" \clef "treble"

  %phrase 3
  #(rexp (5ach 40) 1) r2 | %m2
  r2. #(rexp (5ach 41) 2) r2. | %m19

  << { r2. #(aplad (rexp (4ach 33) 2) 2) }
     { s1 } >>  
  #(aplad (rexp (5ach 43) 1) 2)
  << { #(rexp (5ach 44) -1) \bar "||" }
     { s2 \time 3/2 } >>

  %phrase 2
  \pageBreak
  \time 4/4
  r2 #(rexp (5ach 48) 1) r4
  #(aplad (rexp (5ach 49) 2) 4) r4
  #(rexp (5ach 50) 2) r4 r4
    \clef "bass" \transpose c c,, { #(rexp (reverse (5ach 51)) 1)  } 
    \bar "||" \clef "treble"

  % phrase 4
  << { r4 #(aplad (rexp (5ach 62) 0) 4)~ 2 | }
     { s2 \time 3/2 } >>
  % r2. #(rexp (5ach 37) (ly:make-duration 1 0)) r4 r2 |

  #(aplad (rexp (5ach 63) -1) 2)
  \transpose c c' 
    { #(aplad (rexp (5ach 64) 0) 32)
      #(exp (5ach 65) (ly:make-duration 0 0)) \bar "||" }
}
a-lh = {
  \partial 2
  r2 |
  R1 | R1 |
  R1 | R1 |
  R1 | R1 |
  R1 |

  r2 \bar "||"

  %phrase 2
  \clef "treble"
    \transpose c c' { 
    #(rexp (-5ach 24) 1) r2 | %m8
    r2 #(rexp (-5ach 25) 1) r2 | %m12

    #(rexp (inv-pentachord 26) 1)
    #(rexp (inv-pentachord 27) 1) | R1 |
    r2 \bar "||"
  }

  %phrase 3
  \clef "bass"
  r2 | #(rexp (inv-pentachord 25) 1) |
  r2 #(aplad (rexp (-5ach 27) 1) #{32#})
    #(aplad (exp (-4ach 29) 2) #{2.#})

  r2 #(rexp (inv-pentachord 41) 1) r4 
  \clef "treble"
  \transpose c c' #(aplad (rexp (inv-pentachord 40) 2) 16)
  \clef "bass"
  #(exp (inv-pentachord 42) (ly:make-duration -1 0)) r2 \bar "||" %m23

  %phrase 2
  \clef "treble"
  \transpose c c' {
    #(rexp (-5ach 48) 1)  | %m8
    #(rexp (-5ach 49) 1) | %m12

    \transpose c c' #(rexp (inv-pentachord 50) 1) |
    #(rexp (inv-pentachord 51) 1) |
    r2 \bar "||"
  }
  %phrase 4
  \clef "bass"
  #(aplad (rexp (-5ach 63) 1) 2)_63
  #(aplad (rexp (-5ach 64) 0) 2) 
  \transpose e c #(aplad (rexp (-5ach 13) 1) 2)
  \clef "treble" \transpose c c' {
    #(aplad (rexp (inv-pentachord 66) 1) 16)
      #(aplad (exp (-4ach 67) 1) 8) 
  }
  \clef "bass" 
  #(aplad (rexp (-5ach 9) 2) 8) |
  \time 4/4
  #(rexp (inv-pentachord 11) 2) 
}
a-fl = {
  \clef "treble"
  \partial 2
  r2 | R1*5 | 
  r2. \tag #'flute ^\markup { "blend into clarinet" }
  \partCombine 
    { \stemDown f''4_\<~ |  f''1\p~ | <f'' f'>2 } 
    { s4 | r2. f'4~ | f'2 }
  % \bar "||" 

  %phrase 2
  r4 % \footnote #'(-1 . -1) "All single pitches should have an aeolian sound matching the breathiness of split overtones"
    f'4\<~ | 
  1~ | 
  2\pp r4 g'4\<~ |
  g'1\pp |
  r4 f'\<~ <f' f''>2\pp |
  r4 e'4\<~ <e' e''>2\p~ | 1 | %m15
  r2

  %prhase 3
  r4 c'4~\< | 
  <c' c''>2\pp \grace { c'8 } c''2( | c'2)  r4 d'4~\< |
  <d' d''>2_~ <d' a''>2\p( | d''2.) r4 |
  \tag #'(flute tmi) { \pageBreak }
  <c' c''>1\< | <c' g''>1~\p\< |
  \time 3/2 
  g''2\f < \parenthesize g d'' g''>1 | %m23

  %phrase 2
  \tempo 4=90
  r2 f'4(\p 4 | 4) r4 e'4( 4 |
  4\< <e' e''>4) <eih' eih''>4( 4 |
  4)\f r4 d'4(\p 4 | %m27
  \time 2/4 <d' d''>4 4)

  %phrase 4
  <dis' dis''>4_( 4 |
  <e' b''>4\< \grace { b''8 } e'4) |
  <dis'' ais''>4 <e'' b''>4 |
  % \time 4/4 <f'' c'''>4\f r4 \bar "||"
}

% a-cl = {
%   \tag #'(clarinet tmi) { \override Score.GraceSpacing.spacing-increment = #3.0 }
%   \partial 2 
%   r2
%   \tag #'(clarinet tmi) \grace { s1 s1 -#(diagram 1) } #(roche 1 1)~\pp  | 
%   #(roche 1 #{2.#}) r4\! | 
%   \tag #'(clarinet tmi) \grace { s1 s1 -#(diagram 2) } #(roche 2 1)~ |
%   #(roche 2 #{2.#}) r4\! |
%   #(roche 2 2) r2 |
%   \tag #'(clarinet tmi) \grace { s1 s1 -#(diagram 3) } #(roche 3 2) r2 | 
%   \tag #'(clarinet tmi) { \break }
%   \tag #'(clarinet tmi) \grace { s1 s1 -#(diagram 1) } #(roche 1 1)\p~ | %m8
%   d2 %\bar "||"



%   %phrase 2
%   r2 | 
%   R1 | 
%   r2 \tag #'(clarinet tmi) \grace {  s1 s1 -#(diagram 2) } #(roche 2 2)\pp~  |
%   #(roche 2 1) |
%   \tag #'(clarinet tmi) \grace { s1 s1 -#(diagram 3) } #(roche 3 1) | 
%   \tag #'(clarinet tmi) { \break }
%   e1\p | d,1 | %m15
%   R1 |

%   r2 f2~\pp | 2 r4 g4\< | 
%   e4 \tag #'(clarinet tmi) \grace { 
%     s1 s1-\markup \with-dimensions-from \null { 
%             \translate-scaled #'(0 . -0.5) #(diagram-markup 5) } } #(roche 5 #{2.#})_~\p |
%   e2 r4 f4\pp_( |
%   \tag #'(clarinet tmi) \grace { 
%     s1 s1 -#(diagram 3) } #(roche 3 #{2.#})) r8 f'(\< |
%   e'2 #(roche 5 2)\p)\< |
%   \time 3/2 
%   \tag #'(clarinet tmi) \grace { 
%     s1 s1 -#(diagram 2) } #(roche 2 #{1.#})\f  | \bar "||"

%   \tag #'clarinet { \pageBreak }

%   %phrase 2 
%   \time 4/4
%   R1 | 
%   \tag #'(clarinet tmi) \grace { s1 s1 -#(diagram 2) } 
%     #(roche 2 4)(\p  #(roche 2 4) 
%     #(roche 2 4)) r4 |
%   \tag #'(clarinet tmi) \grace { s1 s1 -#(diagram 3) } 
%     #(roche 3 4)(\<  #(roche 3 4)
%     #(roche 3 4)) c''4( |
%   4 4 4)\f r4 | %m27
%   \time 2/4 e,4\p  e4 |

%   %phrase 4
%   b,4 c |
%    r4 d'4\< | %m30
%   e'4 fis'8 8 | 
%   % \time 4/4 g8 g e e) \bar "||"
%   \tag #'(clarinet tmi) { \revert Score.GraceSpacing.spacing-increment }
% }

% b-rh = {
%   \partial 2
%   \mark #2
%   % phrase 1
%   r8 #(aplad (rexp (5ach 73) 2) 8)_73 | %m32
%   \set Score.currentBarNumber = 32
%   #(aplad (rexp (5ach 72) 2) 32)
%   #(aplad (exp (5ach 40) 1) 32)
%   #(aplad (exp (5ach 28) 1) 32)

%   #(aplad (exp (5ach 29) 1) 32)_29
%   #(aplad (exp (5ach 77) 1) 32)
%   #(aplad (exp (5ach 100) 1) 64)
%   #(aplad (exp (5ach 101) 2) 8)

%   #(aplad (rexp (5ach 76) 2) 64)_76
%   #(aplad (exp (5ach 78) 2) 64)
%   #(aplad (exp (5ach 30) 2) 8)

%   % #(rexp (5ach 64) 4)
%   % #(rexp (5ach 66) 4) _66
  
%   \pageBreak
%   #(aplad (rexp (5ach 6) 2) 16)
%     #(aplad (rexp (5ach 54) 4) 128)
%     #(aplad (exp (5ach 55) 4) 128)
%     #(aplad (exp (5ach 7) 4) 128)_7
%     #(aplad (exp (5ach 78) 4) 128)
%     #(aplad (exp (5ach 79) 4) 16)

%   #(aplad (rexp (5ach 80) 2) 128)
%     #(aplad (exp (5ach 107) 4) 8)
%     #(aplad (rexp (5ach 104) 2) 128)
%     #(aplad (exp (5ach 131) 4) 8)

%   #(aplad (rexp (5ach 155) 2) 128)
%     \transpose c c' #(aplad (exp (5ach 11) 4) 8)
%     #(aplad (rexp (5ach 100) 2) 128)
%     #(aplad (exp (5ach 154) 4) 8)
% }
% b-rh-ww = {
%   \partial 2
%   \mark #2
%   % phrase 1
%   r8 #(aplad (rexp (5ach 73) 2) 8)_73 | %m32
%   \set Score.currentBarNumber = 32
%   #(aplad (wwrexp (5ach 72) 2) 32)
%   #(aplad (wwexp (5ach 40) 1) 32)
%   #(aplad (wwexp (5ach 28) 1) 32)

%   #(aplad (wwexp (5ach 29) 1) 32)_29
%   #(aplad (wwexp (5ach 77) 1) 32)
%   #(aplad (wwexp (5ach 100) 1) 64)
%   #(aplad (wwexp (5ach 101) 2) 8)

%   #(aplad (wwrexp (5ach 76) 2) 64)_76
%   #(aplad (wwexp (5ach 78) 2) 64)
%   #(aplad (wwexp (5ach 30) 2) 8)

%   % #(rexp (5ach 64) 4)
%   % #(rexp (5ach 66) 4) _66
  
%   \pageBreak
%   #(aplad (wwrexp (5ach 6) 2) 16)
%     #(aplad (wwrexp (5ach 54) 4) 128)
%     #(aplad (wwexp (5ach 55) 4) 128)
%     #(aplad (wwexp (5ach 7) 4) 128)_7
%     #(aplad (wwexp (5ach 43) 4) 128)
%     #(aplad (wwexp (5ach 78) 4) 16)

%   #(aplad (wwrexp (5ach 80) 2) 128)
%     #(aplad (wwexp (5ach 82) 4) 8)
%     #(aplad (wwrexp (5ach 84) 2) 128)
%     #(aplad (wwexp (5ach 70) 4) 8)

%   #(aplad (wwrexp (5ach 80) 2) 128)
%     #(aplad (wwexp (5ach 82) 4) 8)
%     #(aplad (wwrexp (5ach 84) 2) 128)
%     #(aplad (wwexp (5ach 70) 4) 8)
% }
b-lh = {
  \partial 2
  % phrase 1
  #(aplad (rexp (inv-pentachord 73) 2) 8)
  #(aplad (rexp (inv-pentachord 72) 2) 8) r4
  \transpose e c' #(aplad (rexp (inv-pentachord 123) 2) 8) 
  #(aplad (rexp (inv-pentachord 74) 2) 8) r8

  #(aplad (rexp (inv-pentachord 95) 2) 8)_95 r8
  #(aplad (rexp (inv-pentachord 79) 1) 8)

  \transpose c f #(aplad (rexp (-4ach 78) 2) 64)
  \transpose c c 
    #(apply-to-last 
      (aplad (exp (inv-pentachord 42) 2) 64)
      (lambda (m) #{ 
        % \footnote #'(1 . 1) "A small caesura is acceptable before leaps" 
        #m #}))
  #(aplad (exp (inv-pentachord 77) 2) 64)
  \transpose g f 
    #(apply-to-last 
       (aplad (exp (inv-pentachord 118) 2) 64)
       (lambda (m) #{ 
        \footnote #'(-1 . 1) "A small caesura is acceptable before leaps" 
        #m #}))
  #(aplad (exp (inv-pentachord 72) 2) 64) _40
  #(aplad (exp (inv-pentachord 115) 2) 65)
    #(aplad (exp (-5ach 139) 2) 64)
    #(aplad (exp (-5ach 67) 2) 64)
    #(aplad (exp (-5ach 68) 2) 64)
    #(aplad (exp (-5ach 116) 2) 128) _71

  #(exp (-5ach 124) 4)_124
    #(aplad (rexp (-5ach 125) 2) 128)
    #(exp (-5ach 127) 4)
    #(aplad (rexp (-5ach 151) 2) 64)

  #(exp (-4ach 19) 4)
    #(aplad (rexp (-5ach 43) 2) 128)
    #(exp (-5ach 67) 4)
    #(rexp (-5ach 154) 4)
}

blue = \once \override Voice.NoteHead.color = "cyan"


#(define (tremolo-to-list lst)
         (cons (make-music 'TremoloEvent 'tremolo-type 32)
               lst))
#(define (flutter-tongue music)
  (music-map
    (lambda (note)
      (let ((articulation (ly:music-property note 'articulation)))
           (set! (ly:music-property note 'articulation)
                 (tremolo-to-list articulation))
           note))
    music))

b-fl = \transpose c c'' {
  \partial 2
  <f c'>4\f r8 \tag #'flute ^\markup { \italic "flz." } d8:64\p~ |
    4:32 c2:32 \transpose c c, { c4\pp~ \tag #'flute ^\markup { \italic "ord." } |
    4 b,2 } c4:32\p~ \tag #'flute ^\markup { \italic "flz." } |
    4:16 e2:32\< eih4:32 |
  f4.:32\f d8~\p \tag #'flute ^\markup { \italic "ord." } d8 e4 c8~ |
  4 b,8.\< d16~ 
    16 e8 c16~ 16 e8 f16~ 
  4 d8 g8~ 4\f e8 a8:64\<~ \tag #'flute ^\markup { \italic "flz." } 4:32 b8:64 c'8:64~ 
  4:32 \transpose c c' { e8:64 a8:64\ff }
}
% b-cl = {
%   \partial 2
%   g'4\f d4:32~ \tag #'clarinet ^\markup { \italic "flz." }\p |
%   8:64 e4.:32~ 4:32 f4~\pp \tag #'clarinet ^\markup { \italic "ord." } |
%   8 d4.~ 8 g,4.:32~\p\< \tag #'clarinet ^\markup { \italic "flz." } |
%   4.:32 b,8~:64 4:32 f,4:32 |
%   d4:32\f r4 f,8\p \tag #'clarinet ^\markup { \italic "ord." } f e4 |
%   g,4 f,8\< d b,4 c8 b, |
%   a,8 b,8 r4 a,8 g,8\f r4 |
%   f,8:64\<\tag #'clarinet ^\markup { \italic "flz." } d8:64 r4 c8:64 b,8:64 a,8:64 g,8:64\ff |
% }

c-rh = {
  \set Score.currentBarNumber = 39
  \time 31/32 
  \set Timing.baseMoment = #(ly:make-moment 1/256)
  \set Timing.beatStructure = 31,31,31,31,31,31,31,31
  #(exp (5ach 149) 8)    
    #(exp (5ach 125) 8)
    << { #(exp (5ach 101) 8) }
       { s128 } >>
    #(exp (5ach 78) 8)
    << { #(exp (5ach 76) 4) }
       { s128 \footnote #'(1 . -1) "dividing of hands" \hide g'64} >>
    #(exp (5ach 72) 4) |

  \set Timing.baseMoment = #(ly:make-moment 1/128)
  \set Timing.beatStructure = 31,31,31,31
  #(exp (5ach 67) 4)
    #(exp (5ach 43) 4)
    #(exp (5ach 114) 2)

  \repeat unfold 1 {
    \set Timing.baseMoment = #(ly:make-moment 1/32)
    \set Timing.beatStructure = 31,31
    #(exp (5ach 115) 1)
  }

  %phrase 1b 
  \transpose c f {
    \set Timing.baseMoment = #(ly:make-moment 1/256)
    \set Timing.beatStructure = 31,31,31,31,31,31,31,31
    #(exp (5ach 149) 8)    
      #(exp (5ach 125) 8)
      << { #(exp (5ach 101) 8) }
         { s128 } >>
      #(exp (5ach 78) 8)
      << { #(exp (5ach 76) 4) }
         { s128 s64} >>
      #(exp (5ach 72) 4) |

    \set Timing.baseMoment = #(ly:make-moment 1/128)
    \set Timing.beatStructure = 31,31,31,31
    #(exp (5ach 70) 4)
      #(exp (5ach 46) 4)
      #(exp (5ach 56) 2)

    \repeat unfold 1 {
      \set Timing.baseMoment = #(ly:make-moment 1/32)
      \set Timing.beatStructure = 31,31
      #(exp (5ach 58) 1)
    }

    \time 31/16 
      \set Timing.baseMoment = #(ly:make-moment 1/16)
      \set Timing.beatStructure = 15,16
    #(exp (5ach 59) 0)
  }

  %phrase 1c
  \transpose c g {
    \time 31/32 
    \set Timing.baseMoment = #(ly:make-moment 1/256)
    \set Timing.beatStructure = 31,31,31,31,31,31,31,31
    #(exp (5ach 149) 8)    
      #(exp (5ach 125) 8)
      << { #(exp (5ach 101) 8) }
         { s128 } >>
      #(exp (5ach 78) 8)
      << { #(exp (5ach 76) 4) }
         { s128 s64} >>
      #(exp (5ach 72) 4) |
  }

  \transpose c d {
    \set Timing.baseMoment = #(ly:make-moment 1/256)
    \set Timing.beatStructure = 31,31,31,31,31,31,31,31
    #(exp (5ach 149) 8)    
      #(exp (5ach 125) 8)
      << { #(exp (5ach 101) 8) }
         { s128 } >>
      #(exp (5ach 78) 8)
      << { #(exp (5ach 76) 4) }
         { s128 s64} >>
      #(exp (5ach 72) 4) |
  }

  \transpose c a {
    \set Timing.baseMoment = #(ly:make-moment 1/256)
    \set Timing.beatStructure = 31,31,31,31,31,31,31,31
    #(exp (5ach 149) 8)    
      #(exp (5ach 125) 8)
      << { #(exp (5ach 101) 8) }
         { s128 } >>
      #(exp (5ach 78) 8)
      << { #(exp (5ach 76) 4) }
         { s128 s64} >>
      #(exp (5ach 72) 4) |
  }

  %phrase 1d
  \transpose c e {
    \set Timing.baseMoment = #(ly:make-moment 1/256)
    \set Timing.beatStructure = 31,31,31,31,31,31,31,31
    #(exp (5ach 149) 8)    
      #(exp (5ach 125) 8)
      << { #(exp (5ach 101) 8) }
         { s128 } >>
      #(exp (5ach 78) 8)
      << { #(exp (5ach 76) 4) }
         { s128 s64} >>
      #(exp (5ach 72) 4) |

    \set Timing.baseMoment = #(ly:make-moment 1/128)
    \set Timing.beatStructure = 31,31,31,31
    #(exp (5ach 67) 4)
      #(exp (5ach 43) 4)
      #(exp (5ach 58) 2)

    \repeat unfold 1 {
      \set Timing.baseMoment = #(ly:make-moment 1/32)
      \set Timing.beatStructure = 31,31
      #(exp (5ach 77) 1)
    }

    \time 31/16 
      \set Timing.baseMoment = #(ly:make-moment 1/16)
      \set Timing.beatStructure = 15,16
    #(exp (5ach 77) 0)

    << { #(aplad (exp (5ach 79) -1) #{16#})~ 1.... }
       { s2.. } >> |
  }
}
c-lh = {
  \transpose c c, #(exp (-5ach 5) 8)
  #(exp (-5ach 149) 8)
    #(exp (-5ach 125) 8)
    #(exp (-5ach 101) 8)
    #(exp (-5ach 78) 8)
    #(exp (-5ach 54) 8)
    #(exp (-5ach 52) 8)
    #(exp (-5ach 28) 8) |

  #(exp (-5ach 94) 4)
    #(exp (-5ach 70) 4)
    #(exp (-5ach 46) 4)
    #(exp (-5ach 22) 4) |
  
  #(exp (-5ach 52) 2)
    #(exp (-5ach 28) 2) | \bar "||"

  %phrase 1b
  \transpose c g, {
    \transpose c c, #(exp (-5ach 5) 8)
    #(exp (-5ach 149) 8)
      #(exp (-5ach 125) 8)
      #(exp (-5ach 101) 8)
      #(exp (-5ach 78) 8)
      #(exp (-5ach 54) 8)
      #(exp (-5ach 52) 8)
      #(exp (-5ach 36) 8) |

    #(exp (-5ach 94) 4)
      #(exp (-5ach 70) 4)
      #(exp (-5ach 46) 4)
      #(exp (-5ach 22) 4) |
    
    #(exp (-5ach 52) 2)
      #(exp (-5ach 28) 2) |
      
    \time 31/16
    #(exp (-5ach 76) 1) 
      #(exp (-5ach 79) 1) |
  }

  %phrase 1c

  % \time 31/32
  \transpose c f, {
    \transpose c c, #(exp (-5ach 5) 8)
    #(exp (-5ach 149) 8)
      #(exp (-5ach 125) 8)
      #(exp (-5ach 101) 8)
      #(exp (-5ach 78) 8)
      #(exp (-5ach 54) 8)
      #(exp (-5ach 52) 8)
      #(exp (-5ach 28) 8) |
  }

  \transpose c bes, { 
    \transpose c c, #(exp (-5ach 5) 8)
    #(exp (-5ach 149) 8)
      #(exp (-5ach 125) 8)
      #(exp (-5ach 101) 8)
      #(exp (-5ach 78) 8)
      #(exp (-5ach 54) 8)
      #(exp (-5ach 52) 8)
      #(exp (-5ach 28) 8) |
  }

  \transpose c es, {
    \transpose c c, #(exp (-5ach 5) 8)
    #(exp (-5ach 149) 8)
      #(exp (-5ach 125) 8)
      #(exp (-5ach 101) 8)
      #(exp (-5ach 78) 8)
      #(exp (-5ach 54) 8)
      #(exp (-5ach 52) 8)
      #(exp (-5ach 28) 8) |

  }

     %phrase 1d

  \transpose c aes, {
    \transpose c c, #(exp (-5ach 5) 8)
      #(exp (-5ach 149) 8)
        #(exp (-5ach 125) 8)
        #(exp (-5ach 101) 8)
        #(exp (-5ach 78) 8)
        #(exp (-5ach 54) 8)
        #(exp (-5ach 52) 8)
        #(exp (-5ach 28) 8) |

      #(exp (-5ach 94) 4)
        #(exp (-5ach 70) 4)
        #(exp (-5ach 46) 4)
        #(exp (-5ach 22) 4) |
      
      #(exp (-5ach 52) 2)
        #(exp (-5ach 28) 2) |
        
      \time 31/16
      #(exp (-5ach 74) 1) 
        #(exp (-5ach 75) 1) |

    #(exp (-5ach 76) 0)
    #(exp (-5ach 77) 0) |
  }
}
c-fl = {
  \set Score.currentBarNumber = 39
  \time 31/32 
  \set Timing.baseMoment = #(ly:make-moment 1/256)
  \set Timing.beatStructure = 31,31,31,31,31,31,31,31
  
  \stopStaff 
  \override NoteHead.style = #'cross
  \transpose c f { 
    << #(exp (-5ach 0) 8)
       s16\f\> >>
      #(exp (-5ach 0) 8)
      #(exp (-5ach 0) 8)
      #(exp (-5ach 0) 8)
      << #(exp (-5ach 0) 4) 
         s8 >>
      #(exp (-5ach 0) 4)\p |
  }

  \set Timing.baseMoment = #(ly:make-moment 1/128)
  \set Timing.beatStructure = 31,31,31,31
  #(exp (-5ach 0) 4)
    #(exp (-5ach 0) 4)
    #(exp (-5ach 0) 2)

  \repeat unfold 1 {
    \set Timing.baseMoment = #(ly:make-moment 1/32)
    \set Timing.beatStructure = 31,31
    #(exp (-5ach 0) 1)
  } \bar "||" \tag #'(flute tmi) { \pageBreak } 

  \startStaff 
  \transpose c f { 
    \override TextSpanner.bound-details.left.text =
    \markup { \upright "with pitched air" }
    #(exp (-5ach 0) 8) \tag #'flute \startTextSpan
      #(exp (-5ach 24) 8)
      #(exp (-5ach 48) 8)
      #(exp (-5ach 72) 8)
      #(exp (-5ach 96) 4)\p \tag #'flute \stopTextSpan
  }
  r16... \revert NoteHead.style f'8

  \override NoteHead.style = #'cross
  \set Timing.baseMoment = #(ly:make-moment 1/128)
  \set Timing.beatStructure = 31,31,31,31
  \transpose c c' {
    << #(exp (-5ach 72) 4)
       s16\f\> >>
      #(exp (-5ach 72) 4)
      #(exp (-5ach 120) 2)\p
  }
  \repeat unfold 1 {
    \set Timing.baseMoment = #(ly:make-moment 1/32)
    \set Timing.beatStructure = 31,31
    % #(exp (-5ach 0) 1)
    \revert NoteHead.style
    r4... g''2(\<~^\markup "breathy" |
    \time 31/16
    g''4..\f fis''2 
      << a''1)
         { s2.\> s4\p } >> |
  }

  \time 31/32
  \set Timing.baseMoment = #(ly:make-moment 1/256)
  \set Timing.beatStructure = #'(31 31 31 31 31 31 31 31)
  { r32... e'''16\f\> }
    { r32... d'''16 } 
    { r32... c'''16 }
    { r32... b''16 } 
    { r16... a''8 } 
    { r16... g''8\p } |
 

  \set Timing.baseMoment = #(ly:make-moment 1/256)
  \set Timing.beatStructure = #'(31 31 31 31 31 31 31 31)
  { r32... b''16\f\> } 
    { r32... a''16 }
    { r32... g''16 }
    { r32... fis''16 }
    { r16... e''8 }
    { r16... d''8\p } |
   

  \set Timing.baseMoment = #(ly:make-moment 1/256)
  \set Timing.beatStructure = #'(31 31 31 31 31 31 31 31)
  r32... fis'''16\f\>
    r32... e'''16
    r32... d'''16 
    r32... cis'''16\p
    r16... b''8\f
    r16... a''8\p |
 
  \set Timing.baseMoment = #(ly:make-moment 1/256)
  \set Timing.beatStructure = #'(31 31 31 31 31 31 31 31)
  r32... cis'''16\ff\>
    r32... b''16
    r32... a''16
    r32... gis''16
    r16... fis''8
    r16... e''8\f |

  \set Timing.baseMoment = #(ly:make-moment 1/128)
  \set Timing.beatStructure = #'(31 31 31 31)
  r16... a''8
    r16... gis''8
    r8... fis''4 |

  \set Timing.baseMoment = #(ly:make-moment 1/32)
  \set Timing.beatStructure = #'(31 31)
  r8.. e''4\> << gis''2 { s4 s4\! } >> |

  \time 31/16
  \set Timing.baseMoment = #(ly:make-moment 1/16)
  \set Timing.beatStructure = #'(15 16)
  r8. dis''4\p e''2  gis''1
  r8 b'4\pp dis''2 fis''1  a''16 ~ 
    << 1....\>
       { s1. s4\ppp } >>
}
% c-cl = {
%   % \time 31/32
%   \mark #3
%   \tag #'(clarinet tmi) { \break }
%   \tag #'(clarinet tmi) { \stemDown }
%   \tag #'(clarinet tmi) { \dynamicUp }
%   \crossStaff
%   {
%     \transpose c c' {
%       s32...^\markup { "with harpsicord" }   f,16\pp
%         s32... g,16
%         s32... \pushNC a,16
%         s32... \pushNC b,16
%         s32... \pushNC c16\<
%         s32... \pushNC d16
%         s32... \pushNC e16
%         s32... \pushNC f16\p |
%     }

%     s16... a,8 
%       s16... b,8
%       s16... c8
%       s16... d8 |

%     s8... e4\<
%       s8... f4\f | \tag #'(clarinet tmi) \pageBreak %\bar "||"

%     s32... \pushNC c,16\p
%     s32... \pushNC d,16
%     s32... \pushNC e,16
%     s32... \pushNC fis,16
%     s32... g,16\<
%     s32... a,16
%     s32... b,16
%     s32... b,16\f |

%     \tag #'(clarinet tmi) \break

%     s16... \pushNC e,8^\p
%       s16... \pushNC fis,8
%       s16... g,8
%       s16... a,8 |

%     { s16.. c8\<( \pushNC b,4) }
%       { s16.. d8( c4)\f } |
    
%     \time 31/16
%     { r16. c8 \pushNC b,4 \pushNC a,2 } 
%       { r16. c8\> \pushNC a,4 \pushNC fis,2\p } | %m46
     
%     \tag #'(clarinet tmi) \break
%     \tempo 4=100
%     \pushNCs
%     { s32... bes,,16\f\>
%         s32...   c,16
%         s32... d,16
%         s32... e,16
%         s32... f,16
%         s32... g,16 } %end pushNCs
%       s32... a,16
%       s32... bes,16^\p | %m47
     
%     \transpose c c' {
%       s32... \pushNCs ees,16\f\>
%         s32... f,16
%         s32... g,16
%         s32... a,16
%         s32... bes,16
%         s32... c16
%         s32... d16
%         s32... ees16\p | %m48
%     }
     
%     \transpose c c' {
%       s32... aes,,16\f\>
%         s32... bes,,16
%         s32... c,16
%         s32... d,16\p
%     }
%       s32... ees,16\f\>
%       s32... f,16
%       s32... g,16
%       s32... aes,16\p |

%     \tag #'clarinet { \autoBeamOff }
     
%     s32... des,16\ff\>
%       s32... ees,16 
%       s32... f,16
%       s32... g,16 
%       s32... aes,16
%       s32... bes,16 
%       s32... c16 
%       s32... des16\f

%     \tag #'(clarinet tmi) \break
%     s32.. g,16  f,8
%       s32.. aes,16  g,8
%       s32.. bes,16  aes,8
%       s32.. c16  bes,8 |

%     s32. ees16\> des8  c4
%       s32. f16 ees8  des4\! |
%   } %end cross staff

%   \dynamicNeutral
%   \tag #'(clarinet tmi) \break  
%   \time 31/16
%   r32 f16[\p ees8] c4  bes,2
%     r32 \transpose c c' { f16[\> ees8] c4  aes,2 | }
  
%   \transpose c c' { g16[\pp f8] des4 c2  bes,1\> } |
%   { g16[ f8] des4 c2  aes,1\ppp } |
% }

d-rh = {
  \mark #4
  \time 31/16 
  \set Timing.baseMoment = #(ly:make-moment 1/32)
  \set Timing.beatStructure = 31,31
  #(exp (cdr (5ach 80)) 0)
  \time 4/4 
  \retrograde { #(rexp (reverse (cdr (-5ach 81))) 16) #(exp (5ach 81) 0) }
  #(rexp (5ach 81) 0)
  \retrograde #(rexp (5ach 81) 1)
  #(rexp (cddr (reverse (-5ach 7))) 8) #(exp (cdr (5ach 77)) 0)
  \retrograde #(rexp (5ach 81) 1)_81

  #(rexp (5ach 81) 8) << \transpose c c'' #(exp (cdr (reverse (-5ach 50))) 0)
                         {s^"lh"} >>
  \retrograde { 
    #(rexp (cdr (5ach 60)) 16) 
    \transpose c c'' { #(exp (reverse (cdr (-5ach 40))) 1) }
  }
  #(rexp (cddr (5ach 40)) 16) \transpose c c'' #(exp (reverse (-5ach 60)) 0)
  \retrograde { 
    #(rexp (cdr (5ach 15)) 16)_64
    \transpose c c'' { #(exp (reverse (cdr (-5ach 40))) 1) }
  }
  #(rexp (cdr (5ach 24)) 8) \transpose c c' { #(exp (cdr (reverse (-5ach 1))) 0) }
  \retrograde { #(rexp (reverse (cdr (-5ach 12))) 32) #(exp (5ach 81) 1) }
  #(rexp (cdr (reverse (-5ach 7))) 16) #(exp (cdr (5ach 77)) 1)
}
d-lh = {
    \time 15/8 
    \set Timing.baseMoment = #(ly:make-moment 1/32)
    \set Timing.beatStructure = 31,31
  #(exp (cdr (-5ach 77)) 0)
  \retrograde #(rexp (-5ach 77) 1)
  #(rexp (-5ach 77) -1)
  \retrograde #(rexp (-5ach 77) 1)
  #(rexp (cddr (reverse (5ach 7))) 8) #(exp (cdr (-5ach 77)) 0)
  \retrograde #(rexp (-5ach 77) 1)
  #(rexp (cddr (reverse (5ach 7))) 8) #(exp (cdr (-5ach 77)) 0)

  \retrograde #(rexp (-5ach 77) 1)_77
  #(rexp (cdr (-5ach 77)) 8) << \transpose c c,, #(exp (reverse (cdr (5ach 1))) 0)
                                { s2..^"rh" } >>
  \transpose c c, { 
    \retrograde { #(rexp (cddr (reverse (5ach 2))) 32) 
                  #(exp (-5ach 50) 1) } }
  \transpose c c, { #(rexp (cddr (reverse (5ach 7))) 8) #(exp (cdr (-5ach 77)) 0) }
  \transpose c c, { \retrograde { #(rexp (reverse (cdr (5ach 12))) 16) 
                                  #(exp (cdr (-5ach 15)) 1) }}
  \transpose c c, { #(rexp (reverse (5ach 14)) 8) #(exp (cdr (-5ach 77)) 0) }
}