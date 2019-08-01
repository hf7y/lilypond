\version "2.19.80"
%Score for harmonic-black
%Started Sat Jun 16 01:11:31 EDT 2018
\header {
  title = "harmonic-black"
  subtitle = ""
  composer = "Z. V. Pine"
  tagline = ""
}%end header

sharpen = #(define-music-function (music) (ly:music?)
  (let (p (ly:music-property music 'pitch)))
  (let (n (ly:pitch-notename p)))
  (set! n (+ n 1))
  (set! p (ly:make-pitch 0 n))
  (ly:music-set-property! music 'pitch p))

music = \relative c' {
  \key c \major
  \time 4/4
  \sharpen c
}%end music

\score {<<
  \new Staff \with { 
    instrumentName = #""
	shortInstrumentName = #""
  }{
    \clef "treble"
	\new Voice = "voice" {
	  \music
	}
  }
>>}%end score

\paper {
  #(set-paper-size "quarto")
}%end paper
\layout {
  \context {
    \Score
	proportionalNotationDuration = #(ly:make-moment 1/10)
	\override Score.SpacingSpanner.strict-note-spacing = ##t
  }
}%end layout
