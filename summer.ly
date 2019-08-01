\version "2.18.2"
%http://lilypond.org/doc/v2.19/Documentation/notation/techniques-specific-to-lyrics#Simple-repeats

\header {
  title = "Summer Sleep"
  subtitle = ""
  composer = "Z.V. Pine"
  tagline = "" }

    
sopranoMusic = {
  \context Voice = "soprano_voice" { 
    \relative c' { }
  }
}
sopranoLyrics = {
  \context Lyrics = "soprano_lyrics" {
    \lyricsto "soprano_voice" {
      Sum -- mer sleep    I missed the dawn
      my tired eyes    too hea -- vy to o -- pen

      Far off birds ar -- gue    free -- ways hiss
      Car a -- larms trill    false e -- mer -- gen -- cies
    }
  }
}

\include "/home/zach/lilypond/z/paper.ily"
\z_montalvo

\include "/home/zach/lilypond/z/score.ily"
\score {
  \pointAndClickOff
  <<
    \z_voice "soprano"
    \context Staff = "soprano" { 
      \set Staff.instrumentName = "Soprano" } 
    \sopranoMusic
    \sopranoLyrics
  >>
}
