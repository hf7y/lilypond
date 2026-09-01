\version "2.23.4"

%%%%%%%%%%%%double check ranges all insts
%check transpositions for winds
%remove double bars
%remove fingering numbers
%change accidental formatting
%harpsichord retrigger?
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%point and click off
%check flute rechisters for dynamics

% \include "composition-functions.ly"
% \include "woodwind-functions.ly"
% \include "material.ly"
% \include "lilymusic.ly"

#(set-default-paper-size "letter")

\pointAndClickOff

\book {
  \score {
    \new Staff {
      \displayMusic s1^\markup 
        \override #'(baseline.skip . 0.5)
        \center-column { 
          \number \override #'(style . default) #(number->string 4)
          \line { 
            \concat { 
              \large \bold \lower #1 "“"
              \pad-x #0.2 \note #(ly:make-duration 2 0) #DOWN
              \large \bold \lower #1 "”" 
            }
          }
        }
      s1^#(markup
            #:override
            (cons 'baseline.skip 0.5)
            (#:center-column
             (#:number
              (#:override (cons 'style 'default) "4")
              #:concat
              (#:large
               (#:bold (#:lower 1 "“"))
               #:pad-x
               0.2
               (#:note (ly:make-duration 2) -1)
               #:large
               (#:bold (#:lower 1 "”"))))))
    }
  }
}