\version "2.19"
#(set! paper-alist ( cons '( "xps" . ( cons ( * 8 in ) ( * 8.8 in ))) paper-alist ))

\paper {
	#(set-paper-size "xps")
}

voce = \relative c' {
	\time 4/4
	%intro
	\partial 8 r8 | 
	R1 | R1 | R1 | R1 |
	R1 | R1 | R1 | R1 |
	%verseOne
	r2 cis8 d cis4 | r8 cis cis cis cis b a fis |
	e2 r2 | r2. e8 e |

	cis' b a b cis a b4 | r8 a b cis b4 a |
	a2 r2 | R1 |

	fis'4 e8 cis cis d cis4 | r8 cis cis cis cis b a fis |
	e8. cis'16 cis2 r4 | r2. e,8 e | 

	\tuplet 5/4 { cis'8 b a b a~ } a4 r | r8 a b cis b a b a |
	R1 | r2. e8 e |

	b'8 b b cis b4 a | a8 fis4. r8 e e e |
	b'8 b b cis b4 a | d4. cis16 b a8 b4. |
	R1 
}

fingerIntro = \relative c' {

	\time 4/4
	
	% first theme
	\partial 8 r8 |
	r4 < cis gis >8 e\1 
	< cis^\2 fis^\3 >4 < cis fis > |
	r4 < cis gis >8 e
	< cis fis >8 gis') fis e |

	r4 < cis gis >8 e
	< cis fis >4 < cis fis >8 e |
	cis2 r2 |
 
	r4 < cis gis >8 e 
	< cis fis >4 < cis fis > |
	r4 < cis gis >8 e 
	< cis fis >8 gis' fis e |

	r4 < cis gis >8 e 
	< cis fis >4 b'\harmonic |
	e,2 r2 |
}

fingerVerseOne = \relative c' {
	r4 < b gis > s2 |
	s1 |

	r4 < cis gis >8 e 
	< cis fis >4 < cis fis >8 e |
	cis2 r2 |

}

fingerish = \relative c' {

	% second theme

	\bar "||" \time 6/8

	s1. * 14 
	s4 < cis, gis >8 e |
	< cis fis >4 < cis fis >|
	s4 < cis gis >8 e |
	< cis fis >8 gis' < fis a > b |

	<< { cis2 | } { 
		s4 cis,8 e | } >>
	< d fis> 4 cis'16 b a gis |
	fis4 e |
	s4 cis |
	
	s4 < cis gis >8 e |
	< cis fis >4 b'\harmonic|
	s4 < cis, gis >8 e |
	< cis fis >8 gis' < fis a > b |

	cis8 b d cis | 
	< fis b a >4 < gis, d b > |
	b2 | 
	a2 |

  a,,8 fis' cis' fis, |
  a,8 e' cis' e, |
  a,8 d a' b |
  cis b a4 |
	a,8 f' a b |
	c b a4 |

	c4\rest < gis cis > |
	c4\rest < a d > |
	c4\rest < gis cis > |
	c4\rest < a d >\fermata |
	c4\rest < gis cis > |
	c4\rest < a d > |
	c4\rest < gis cis > |
	c4\rest < a d >\fermata |

	a8 cis e fis |
	aes es c aes |
	g b e fis |
	< dis bis fis >4 gis |
	< a~ e~ cis_~ >2 | < a e cis >


}

thumbIntro = \relative c {
	\mergeDifferentlyHeadedOn

	\partial 8 e,8 |
	a8 e'8 s4 | r8 a,4 e8 |
	a8 e'8 s4 | a,4. e8 |
	a8 e'8 s4 | r8 a,4 e8 |
	a8 e'8 gis e  | a,8 e' gis e,|
	
	a8 e'8 s4 | r8 a,4 e8 |
	a8 e'8 s4 | a,4. e8 |
	a8 e'8 s4 | r8 a,4 e8 |
	a8 e'8 gis e  | a,8 e' gis e |
}

thumbVerseOne = \relative c {
	a8 e'8 gis e \oneVoice a,8 e' gis e |
	a,8 e'8 gis e a,8 e' d b | \voiceTwo
	cis a s4 r8 a4 e8 |
	a8 e'8 gis e a,8 e' gis e |

}

thumby = \relative c {

	\oneVoice
	\repeat unfold 3 { a e' < gis cis >8 } ais, e' < g cis > | 

	\repeat volta 2 {
		\repeat unfold 3 { b, fis' < a d > } e, fis' < a d >  |
		\repeat unfold 3 { fis, e' < a cis > } e, e' < a cis > |
		b, d < a' cis > \repeat unfold 3 { c, e < a d > } |
		\repeat unfold 2 { c, e < a d > } \repeat unfold 2 { c, fis < a d > } 
	}
	
	\repeat volta 2 {
		\repeat unfold 2 { g, f' < bes d > } \repeat unfold 2 { a, g' < c e > } |
		\repeat unfold 2 { bes, a' < d f > } \repeat unfold 2 { c, g' < c e > } | 
		\repeat unfold 2 { g, f' < bes d > } \repeat unfold 2 { a, g' < c e > } |
		bes, a' < d f > c, g' < c e > c, f < bes d > c, e  < bes' d > |
	}

	\repeat unfold 3 { b, fis' < a d > } e, fis' < a d >  |
	\repeat unfold 3 { fis, e' < a cis > } e, e' < a cis > |
	b, d < a' cis > \repeat unfold 3 { c, e < a d > } |
	b, fis' < a d > cis, gis' < b e > 
		\set tieWaitForNote = ##t d,~ a'~ < cis~ fis~ > < d, a' cis fis >4. |
	d8~ a'~ < c f >~ < d, a' c f >2. r8. e,8. |

	\voiceTwo

	a8 e'8 s4 | a,8 a~ a e |
	a8 e'8 s4 | a,4 d |

	a8 gis' cis gis |
	a,8 a' a, e |
	a8 a' cis gis |
	a,8 gis' cis e,, |
	
	a8 e'8 s4 | a,8 a~ a e |
	a8 e'8 s4 | a,4 d |
	a8 gis' cis fis |
	d,4	d8 e, |

	\once \override NoteColumn #'ignore-collision = ##t 
	\override TextSpanner.bound-details.left.text = "l.v."
	\textSpannerDown
	
	<< { 
		\once \hide Stem a2\startTextSpan | 
		s4.. s16\stopTextSpan
	} \\ { 
		\once \hide NoteHead a8 a' cis e | 
		a e cis gis | 
	} >> 

	a,2 | a2 | a2~ | a2 | a2~ | a4. e8 |
	a8 e' gis e | a, f'4. |
	a,8 e' gis e | a, f' a e, |
	a8 e' gis e | a, f'4. |
	a,8 e' gis e | a, f'4. |

	e,2\startTextSpan
	s2 |
	s2 |
	s4 r8 \stopTextSpan e'8\harmonic |
	a,2~ | a2 |

}

\score {
	\new StaffGroup <<
		\new Staff {
			\clef "treble_8"
			\key a \major
			\voce
		}
		\new Staff <<
			\clef "treble_8"
			\key a \major
			\tempo 4 = 80
	
			\new Voice {
				\voiceOne
				\fingerIntro
				\fingerVerseOne
			}
	
			\new Voice {
				\voiceTwo
				\thumbIntro
				\thumbVerseOne
			}
	
			\new Voice = "breaks" {
			}
		>>
	>>
}

