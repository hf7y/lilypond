\version "2.19.80"
%Score for quartet
%Started Fri June 10 14:28 CDT 2018
%Revised Sun June 17 00:02 EDT 2018 at Walden School

\header {
  title = ""
  subtitle = ""
  composer = ""
  tagline = ""
}%end header

timecode = {
  \repeat unfold 10 {s1 \break s1 \break s1 \pageBreak}
}

#(set-global-staff-size 22)

\book {
  \paper {
    #(set! paper-alist (cons '("ipad" . (cons (* 220 mm) (* 305 mm))) paper-alist))
    #(set-paper-size "ipad")
    top-margin = 0.5\in
    left-margin = 0.8\in
    right-margin = 0.6\in
    bottom-margin = 0.7\in

    system-system-spacing =
    #'((basic-distance . 20)
       (minimum-distance . 15)
       (padding . 1)
       (stretchability . 0))

    %{print-page-number = ##t
    print-first-page-number = ##t
    oddHeaderMarkup = \markup \null
    evenHeaderMarkup = \markup \null
    oddFooterMarkup = \markup {
      \fill-line {
        \on-the-fly \print-page-number-check-first
        \fromproperty #'page:page-number-string
      }
    }
    evenFooterMarkup = \oddFooterMarkup
    %}
  }
  \score {
    \pointAndClickOff 
    \new StaffGroup <<
      \new Staff \with { 
        instrumentName = #"Violin 1"
        shortInstrumentName = #"Vln 1"
      }{
        \timecode
      }
      
      \new Staff = "violinTwo" \with { 
        instrumentName = #"Violin 2"
        shortInstrumentName = #"Vln 2"
      }{
        \timecode
      }

      \new Staff = "viola" \with { 
        instrumentName = #"Viola"
        shortInstrumentName = #"Vla"
      }{
        \timecode
      }

      \new Staff \with { 
        instrumentName = #"Cello"
        shortInstrumentName = #"Vc"
      }{
        \timecode
      }
    >>
  }%end score
}%end bookpart
\layout {
    indent = 0\in
    \context {
      \Staff
      \remove "Time_signature_engraver"
      \remove "Clef_engraver"
      \remove "Bar_engraver"   

    }
    \context {
      \Score
      \remove "Bar_number_engraver"
    }
}
