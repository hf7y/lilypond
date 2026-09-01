\version "2.24.3"

% #(set-default-paper-size "letter")

\pointAndClickOff
\layout {
  \context {
    \Staff
    \override Hairpin.to-barline = ##f
    \override Beam.beam-thickness = #0.48
  }
}

% AL NIENTE
% \relative c'' {
%   \override Hairpin.circled-tip = ##t
%   c2\< c\!
%   c4\> c\< c2\!
% }

\paper {
  %https://lilypond.org/doc/v2.23/Documentation/notation/page-breaking#page-breaking
  page-breaking = #ly:page-turn-breaking

  bookpart-level-page-numbering = ##t
  
  % bookTitleMarkup = \markup {
  %   \override #'(baseline-skip . 3.5)
  %   \column {
  %     \fill-line { \fromproperty #'header:dedication }
  %     \override #'(baseline-skip . 3.5)
  %       \fill-line {
  %         { \fromproperty #'header:instrument }
  %         { \huge \larger \larger \bold
  %         \fromproperty #'header:title }
  %         \null
  %       }
  %       \fill-line {
  %         % { \fromproperty #'header:instrument }
  %         { \large \bold \fromproperty #'header:subtitle }
  %         % \null
  %       }
  %       \fill-line {
  %         \smaller \bold
  %         \fromproperty #'header:subsubtitle
  %       }
  %       \fill-line {
  %         \fromproperty #'header:poet
  %         \fromproperty #'header:composer
  %       }
  %       \fill-line {
  %         \fromproperty #'header:meter
  %         \fromproperty #'header:arranger
  %       }
  %     }
  %   }
  evenHeaderMarkup = \markup
    \fill-line {
      \if \should-print-page-number \fromproperty #'page:page-number-string
      \unless \on-first-page-of-part 
        \concat { \fromproperty #'header:title 
                  "—" 
                  \fromproperty #'header:instrument }
      ""
    }
  oddHeaderMarkup = \markup
    \fill-line {
      ""
      \unless \on-first-page-of-part
        \concat { \fromproperty #'header:title 
                  "—" 
                  \fromproperty #'header:instrument }
      \if \should-print-page-number \fromproperty #'page:page-number-string
    }
    markup-system-spacing = #'((basic-distance . 14)
                               (padding . 1)
                               (stretchability . 30))
    system-system-spacing = #'((basic-distance . 10)
                               (padding . 1.5)
                               (stretchability . 30))
    top-markup-spacing = #'((basic-distance . 2)
                            (minimum-distance . 1)
                            (padding . 1))
    top-system-spacing = #'((basic-distance . 10)
                            (minimum-distance . 1)
                              (padding . 2))

    top-margin = 0.5\in     % scaled to paper-size
    % left-margin = 0.5\in % scaled to paper-size
    % right-margin = 0.5\in    % scaled to paper-size
    bottom-margin = 0.5\in % scaled to paper-size
    inner-margin = 0.625\in
    outer-margin = 0.5\in
    % binding-offset = 0.125\in 
    two-sided = ##t
}