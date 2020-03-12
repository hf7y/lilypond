%book.ly
%Modified on 12 20, 2019 at 20:20
%Modified on 12  4, 2019 at 12:04
%Created  on 10 21, 2019 at 17:22

\version "2.19.83"
\include "/home/zach/lilypond/total-abstraction/definitions.ily"
\include "/home/zach/lilypond/z/note.ily"
\include "/home/zach/lilypond/z/square.ily"
\include "/home/zach/lilypond/z/dynamic.ily"
\include "/home/zach/lilypond/z/staff.ily"
\include "/home/zach/lilypond/z/metronome.ily"
\include "/home/zach/lilypond/z/frameEngraver.ily"

\header {
  title = "Total Abstraction"
  subtitle = ""
  composer = "Z.V. Pine"
  tagline = ""
}

\include "./0tuning.ly"
\score { \TUNINGscore }
\include "./1first.ly"
\score { \FIRSTscore }
\include "./2second.ly"
\score { \SECONDscore }
\include "./3third.ly"
\score { \THIRDscore }
\include "./4fourth.ly"
\score { \FOURTHscore }
\include "./5fifth.ly"
\score { \FIFTHscore }
\include "./6sixth.ly"
\score { \SIXTHscore }
\include "./7finale.ly"
\score { \FINALEscore }

\layout {
  \context {
    \Global
    \grobdescriptions #all-grob-descriptions
  }
  \context {
    \Score
    %proportionalNotationDuration = #(ly:make-moment 1/4)
    %\override SpacingSpanner.strict-note-spacing = ##t

    %\override SpacingSpanner.uniform-stretching = ##t
    %\override NonMusicalPaperColumn.line-break-permission = ##f
    %\override NonMusicalPaperColumn.page-break-permission = ##f
    \remove "Timing_translator"
    \remove "Default_bar_line_engraver"
    \remove "Metronome_mark_engraver"
  }
  \context {
    \Staff
    \numericTimeSignature
    \consists "Timing_translator"
    \consists "Default_bar_line_engraver"
    \consists "Metronome_mark_engraver"
    \consists \frameEngraver
  }
  \context {
    \Voice
    \override Glissando.thickness = #2.5
    \consists "Horizontal_bracket_engraver"
    \remove "Forbid_line_break_engraver"
  }
  \context {
    \Dynamics
    \consists "Metronome_mark_engraver"
  }
}
\paper {
  system-separator-markup = \slashSeparator
  #(set! paper-alist (cons '("ipad pro" . (cons ( * 220 mm) ( * 305 mm))) paper-alist))
  #(set! paper-alist (cons '("montalvo" . (cons ( * 11  in) ( * 14  in))) paper-alist))
  #(set-paper-size "letter")
  
  indent = 0.5\in

  top-margin = 0.5\in
  left-margin = 0.5\in
  right-margin = 0.5\in
  bottom-margin = 0.5\in

  markup-system-spacing =
    #'((basic-distance    . 15)
       (minimum-distance  . 10)
       (padding           . 5 )
       (stretchability    . 1 ))

  system-system-spacing =
    #'((basic-distance    . 15)
       (minimum-distance  . 10)
       (padding           . 5 )
       (stretchability    . 10))
}
