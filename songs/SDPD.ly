\version "2.18.2"

\header {
	title = "STARS, DIAMONDS, PUPILS, DIMES"
	composer = "S. J. Hitchcock"
	tagline = ""
}

\paper {
	#(set-paper-size "letter")
	top-margin = 1\in
	left-margin = 1\in
	right-margin = 1\in
	system-system-spacing.basic-distance = #15
	markup-system-spacing.basic-distance = #25
}
forTab = {
	\relative c {
		< dis fis b dis >1 |
		< e gis cis e\2 >2 < d a' cis fis\2 > |
		< d fis a  e'\2 >2 < cis gis' b e\2 > |
		< e gis cis e\2 >2 < d a' cis fis\2 > |
		< d fis a  e'\2 >2 < gis, gis' bis dis > |

		< e' gis cis e\2 >2 < d a' cis fis\2 > |
		< d fis a  e'\2 >2 < cis gis' b e\2 > |
		< e gis cis e\2 >2 < d a' cis fis\2 > |
		< d fis a  e'\2 >2 < gis, cis b' eis\2 > |
	}
}

melody = {
	\autoBeamOff
	\key fis \minor
	\relative c {
		r8 cis4 a'4   fis8 e   cis |
		r8 cis4 cis4 b8   gis4  |
		r8 b b  b     b   b   b4      |
		r8 cis4 b8     gis4    r4      |

		r8    cis8 cis16 cis  gis'4 fis8 cis b  |
		a8    cis  cis        cis4 b8   e4     | 
		r8    cis  cis   cis4   b8   e4         |

		<< {
		e16 e e4         e4.        dis4        |

		r8 e4      e4.  d4 |
		r8 d8 cis8 cis4. r4 |
		r8 e4      e8   fis4 fis|
		r8 a4      a8   b4   r |

		r8 e,4      e8   e4   e |
		r8 d4      cis8 cis4 r |
		r8 e4      e8   fis4 fis|
		r8 a4      a8   b4   r | }

		\new TabStaff {
			\forTab
		}

		>>
	}
}

chordos = {
	\chordmode {
		fis1:min a1:maj7 b1:7 cis:7
		fis1:min a1:maj7 d1:maj7 b1:7/dis
		
		cis2:min/e d:maj7
		d:maj9 cis:min7
		cis2:min/e d:maj7
		d:maj9  gis:7
		
		cis2:min/e d:maj7
		d:maj9 cis:min7
		cis2:min/e d:maj7
		d:maj9  cis:7/gis
	}
}


texto = \lyricmode {
	I tas -- ted tears when
	I kissed your eyes.
	Love is a se -- ries of
	long good -- byes.

	I real -- ly meant no harm
	when I hit the snooze a -- larm.
	I just wan -- ted a
	lit -- tle more time with

	stars, dia -- monds, pu -- pils, dimes.
	Stan -- ding na -- ked in the dark,
	I said, "\"does" it feel to you
	like we're be -- ing torn a -- "part?\""
}

\score {
<<
	\new ChordNames {
		\chordos
	}
	\new Staff {
		\new Voice = "tenor" {
			\key fis \minor
			\clef "bass"
			\melody
		}
		\bar "|."
	}

	\new Lyrics \lyricsto "tenor" {
		\texto
	}
>>

}

\layout {
	\context {
		\Staff
	}
}
