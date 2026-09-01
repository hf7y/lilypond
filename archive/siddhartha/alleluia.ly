\version "2.24.0" 

\header {
  title = "Alleluia"
  tagline = ""
}

\paper {
  system-system-spacing.basic-distance = #16
  markup-system-spacing =
    #'((basic-distance . 16)
       (minimum-distance . 6)
       (padding . 1)
       (stretchability . 12))
}

\layout {
  \context {
    \Staff
    \override VerticalAxisGroup
              .default-staff-staff-spacing
              .basic-distance = #18
  }
}

figureA = {
	c'4. b8 a8 g~ | g2. |
}

figureAA = {
	c'4. b8 a4~ | a2. \fermata
}

figureB = {
	f4. g8 a b!~ | b2. |
}

figureBB = {
	f4. g8 a4~ | a2. \fermata
}

sopranoMusic = \transpose c c' {
	\figureA \figureA \figureA c'4. b8 a4~ | a2. \fermata
	b2.
}

altoMusic = \transpose c c' {
	R2. \figureA \figureA \figureA c'4. b8 a4 \fermata | b2. |
}

tenorMusic = {
	\figureB \figureB \figureB \figureBB \fermata
	a4 \glissando gis2
}

bassMusic = {
	R2. \figureB \figureB \figureB f4. g8 a4 \fermata
	a4 \glissando gis2
}

timeline = {
	\key c \major
	\time 3/4 s2. s2. s2. s2. \break
	\bar ".|:-|" s2. s2. \bar ":|." s2. s2. s2. \bar "|."
}

words = \lyricmode { Al -- le -- lu -- ia!  Al -- le -- lu -- ia!  Al -- le -- lu -- ia! Al -- le -- lu -- ia!}

\score {
	\new ChoirStaff \transpose c bes, <<
		\new Staff {
			\new Voice = "soprano" {
				<< \sopranoMusic \timeline >>
			}
		}
		\new Lyrics = "soprano"

		\new Staff {
			\new Voice = "alto" {
				<< \altoMusic \timeline >>
			}
		}
		\new Lyrics = "alto"

		\new Staff {
			\new Voice = "tenor" {
				\clef "treble_8"
				<< \tenorMusic \timeline >>
			}
		}
		\new Lyrics = "tenor"

		\new Staff {
			\new Voice = "bass" {
				\clef "bass"
				<< \bassMusic \timeline >>
			}
		}
		\new Lyrics = "bass"

		\context Lyrics = "soprano" {
			\lyricsto "soprano"
			\words
		}
		\context Lyrics = "alto" {
			\lyricsto "alto"
			\words
		}
		\context Lyrics = "tenor" {
			\lyricsto "tenor"
			\words
		}
		\context Lyrics = "bass" {
			\lyricsto "bass"
			\words
		}
	>>
}