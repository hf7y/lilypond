\version "2.18.2"

%http://lilypond.org/doc/v2.19/Documentation/notation/techniques-specific-to-lyrics#Simple-repeats

\header {
  title = "Summer Sleep"
  subtitle = ""
  composer = "Z.V. Pine"
  tagline = "" }

    
\include "./poem.ly"

#(define mag 2)
sopranoMusic = \context Lyrics {
  \time 1/8
  \set Timing.defaultBarType = ""
  \summersleep r2
  \imissedthedawn r4
  \break
  \mytiredeyes r4
  \tooheavytoopen r1*2
  \break
  \faroffbirdsargue r2*2
  \freewayshiss r1*2
  \break
  \caralarmstrill r2.*2
  \falseemergencies r2*2
  \break
  \indreamiamten 
  \nappinginthemastershouse
  \break
  \mysinglebed 
  \aonegirlcoffin
  \break
  \tootighticry 
  \myfeetcantfit
  \break
  \hescowlsandsighs 
  \scornsmymediocrity
}
\include "/home/zach/lilypond/z/paper.ily"
\z_montalvo

\include "/home/zach/lilypond/z/score.ily"
\score {
  \pointAndClickOff
  <<
    \z_voice "soprano"
    \context Staff = "soprano" { 
      \autoBeamOff
      \set Staff.instrumentName = "Soprano"
      \sopranoMusic }
  >>
}

