\version "2.19.80"
%Score for poop
%Started Mon Jun 25 12:05:17 EDT 2018
\header {
  title = "poop"
  subtitle = ""
  composer = "Z. V. Pine"
  tagline = ""
}%end header

music = \relative c'' {
  \autoBeamOff
  \time 3/4
  \tupletUp
  \partial 4 c8 c | \tuplet 3/2 { 8 8 8 } r c c c |
  \tuplet 3/2 { c c c } r4 c8 c | \time 5/8 c c r c c |
  \time 4/4 \tuplet 5/4 { c c c c c }


}%end music

phrase = \lyricmode {
  We are ra -- pid -- ly be -- co -- ming pro -- to -- types of a peo -- ple that
  to -- ta -- li -- ta -- ri -- an mon -- sters could on -- ly drool a -- bout in their
  dreams. All the dic -- ta -- tors up to now have had to work hard at sup -- pres -- sing
  the truth. We, by our ac -- tions, are say -- ing that this is no lon -- ger
  ne -- ces -- sa -- ry, that we have ac -- qui -- red a spi -- ri -- tu -- al
  me -- cha -- ni -- sm that can de -- nude truth of a -- ny sig -- ni -- fi -- cance. 
}

\score {
  <<
	  \new Voice = "voice" {
	   \music
	  }
    \new Lyrics \lyricsto "voice" {
      \phrase
    }
  >>
}%end score

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
