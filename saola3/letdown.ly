\version "2.18.2"

intro = <<
	\new Voice {
		\voiceOne
		\relative c'' {
			< d fis >4. < cis e >4 < b d >4.            | < cis e >4.             < b d >4 < a cis >4.~ | < a  cis >1 |
			< d fis >4. < cis e >4 < b d >4 < cis e >8~ | < cis e >4 < cis e >8^> < b d >4 < a cis >4.~ | < a  cis >1 |
			< d fis >4. < cis e >4 < b d >4 < cis e >8~ | < cis e >4.              < b d >4 < a cis >4 < gis b >8~ |
				< gis b >8 a gis a gis8\mordent e b gis | s1 |
		}
	}

	\new Voice {
		\voiceTwo
		\relative c' {
			d2 e, | a1 | a1              |
			d2 e, | a1 | a2 r8 d8. cis8. |
			d2 e, | a1 | e1 | e1 |
		}
	}
>>

introTwo = <<
	\new Voice {
		\voiceOne
		\relative c''' {
			s1 | s2.. a8~ | a4 a8 gis4 e4. |
			s1 | s2.. a8~ | a4 a8 gis4 e4. |
			s1 | s2.. s8  | s4 gis8 a gis\mordent e b gis~ | gis1 |
		}
	}
	
	\new Voice {
		\voiceOne
		\relative c'' {
			< d fis >4. < e, cis' e >4 << { < b' d >4. } \\ { fis4 gis8 } >>   | < cis e >4.             < b d >4 < a cis >4. | s1 
			< d fis >4. < e, cis' e >4 << { < b' d >4. } \\ { fis8. gis8. } >> | < cis e >4 < cis e >8^> < b d >4 < a cis >4. | s1 
			< d fis >4. < e, cis' e >4 << { < b' d >4. } \\ { fis8. gis8. } >> | < cis e >4.             < b d >4 < a cis >4 < gis b >8~ |
				< gis b >8 \stemDown gis e'
		}
	}

	\new Voice {
		\voiceTwo
		\relative c' {
			d2 e,2 | a1 | a8 a' cis4 a,2        |
			d2 e,2 | a1 | a8 a' cis4 a,4 d8 cis |
			d2 e,2 | a1 | e1 | e1 |
		}
	}
>>

verse = <<
	\new Voice {
		\voiceOne
		\relative c'' {
			cis8 [ d cis d a'   ]
			cis,8[ d cis d e    ]
			cis8 [ d cis d gis  ]
			cis,8[ d cis d e    ]

			cis8 [ d cis d a'   ]
			cis,8[ d cis d e    ]
			cis8 [ d cis d gis  ]
			cis,8[ d cis d e    ]
			
			cis8 [ d cis d a'   ]
			cis,8[ d cis d e    ]
			cis8 [ d cis d gis  ]
			cis,8[ d cis d e     ]
			
			cis8[ d cis d ]
		}
	}

	\new Voice {
		\voiceTwo
		\relative c' {
			a2 a | a a | e e | e e |
			fis' fis | fis fis | e, e | e e |
		}
	}
>>

verseTwo = <<
	\new Voice {
		\voiceOne
		\relative c''' {
			cis1 | a | gis | e | 
			cis' | a | gis | e2 s2 |
		}
	}

	\new Voice {
		\voiceFour
		\relative c'' {
			cis8 d d cis d d cis d | 		
			a8\rest d d cis d d cis d | 		
			a8\rest d d cis d d cis d | 		
			a8\rest d d cis d d cis d | 		
			
			\stemUp
			cis8\rest d d cis d d cis d | 		
			cis8\rest d d cis d d cis d | 		
			
			\stemDown
			a8\rest d d cis d d cis d | 		
			a8\rest d d cis \stemUp d e fis gis |
		}
	}

	\new Voice {
		\voiceTwo
		\relative c' {
			a4. a a4 | a4. a a4 | e4. e e4 | e4. e e4 |
			fis'4. fis fis4 | fis4. fis fis4 | e,4. e e4 | e4. e e4  |
		}
	}
>>

chorus = <<
	\new Voice {
		\voiceOne
		\relative c''' {
			< a fis >8 fis a b cis d cis b | cis4 cis8 b4 a4 < e a >8~ | a e a gis4 e4 cis8 |
			d8 fis a b cis d cis b | cis4 cis8 b4 a4. | < a e >8 e a gis4 e4 cis8 |
			d8 fis a b cis d cis b | cis4 cis8 b4 a4 < b, e gis >8~ | < e gis > b < e gis>8 a gis\mordent e b gis~ | gis1 |
		}
	}

	\new Voice {
		\voiceTwo
		\relative c' {
			d4. e4 fis4 gis8 | a,2 a4 a4 | a2 a2 |
			d4. e4 fis4 gis8 | a,2 a4 a4 | a2 a4 a4 |
			d4. e4 fis4 gis8 | a,2 a4 a4 | e1 | e1 |
		}
	}
>>

vamp = <<
	\new Voice {
		\voiceOne
		\relative c'' {
			r8 e4 fis gis a8~ | a8 gis e a gis e a gis |
			r8 e4 fis gis a8~ | a8 gis e a gis e \tuplet 3/2 { cis' gis e } |
			r8 e4 fis gis a8~ | a8 gis e a gis e a gis |
			r8 e4 fis gis a8~ | a8 gis e a gis e \tuplet 3/2 { e' gis, e } |
			r8 e4 fis gis a8~ | a8 gis e a gis e a gis |
			r8 e4 fis gis a8~ | a8 gis e a gis e \tuplet 3/2 { cis' gis e } |
			r8 e4 fis gis a8~ | a8 gis e a gis e a gis |
			r8 e4 fis gis a8~ | a8 gis4 a b4. |
		}
	}

	\new Voice {
		\voiceTwo
		\relative c' {
			a4 a a a |
			a4 a a a |
			a4 a a a |
			a4 a a a |
			a4 a a a |
			a4 a a a |
			a4 a a a |
			a4 a a a |
			a4 a a a |
			a4 a a a |
			a4 a a a |
			a4 a a a |
			d4 d d d |
			e, e e e |
		}
	}
>>

vampVerse = <<
	\new Voice {
		\voiceOne
		\relative c''' {
			a8   cis a   gis a gis e cis | a'   cis a   gis a   gis e cis |
			gis' cis gis e   gis e b gis | gis' cis gis e   gis e   b gis |
			a'8  cis a   gis a gis e cis | a'   cis a   gis a   gis e cis |
			gis' cis gis e   gis e b gis | gis' cis gis e   d'  cis b a~  |

			          a8 < cis a e >8 < cis a e >4 < cis a e >8 < cis a e >4              < cis a e >8~ |
			< cis a e >8 < cis a e >8 < cis a e >4 < cis a e >8 < cis a e >4              < cis a e >8  |

			                r8 < cis gis e > < cis gis e >4 < cis gis e >8 < cis gis e >4                < cis gis e >8~ |
			< cis gis e cis >8 < cis gis e > < cis gis e >4 < cis gis e >8 < cis gis e >4                < cis gis e >8  |

			                r8 < cis a   e >     < cis a   e >4     < cis a   e >8     < cis a   e >4                         < cis a   e cis >8~ |
			< cis a   e cis >8 < cis a   e cis > < cis a   e cis >4 < cis a   e cis >8 < cis a   e cis >8 < cis a   e cis  >8 < cis a   e cis >8  |

			                  r8 < cis gis e b gis > < cis gis e b gis  >4                      < cis gis e b gis >8 < cis gis e b gis >4                       < cis gis e b gis >8  |
			< cis gis e b gis >8 < cis gis e b gis > < cis gis e b gis  >8 < cis gis e b gis >8 < cis gis e b gis >8 < cis gis e b gis >8 < cis gis e b gis  >8 < cis gis e b gis >8~ |
		}
	}

	\new Voice {
		\voiceTwo
		\relative c' {
			a4 a a a | a a a a | e e e e | e e e e |
			fis' fis fis fis | fis fis fis fis | e, e e e | e e e e |

			a4 a a a | a a a a | e e e e | e e e e |
			fis' fis fis fis | fis fis fis fis | e, e e e | e8 e e e e e e e |
		}
	}
>>

vampTwo = <<
	\new Voice {
		\voiceOne
		\relative c'' {
			r8 e4 fis4 gis4 a16( gis) | e8 gis16 e~ e2. |
			s2.                r8 a8~ | a4. gis4. r8 a16( gis) | 
			e8 gis16 e~ e2 \tuplet 3/2 { e'8 d cis } | s1 |
			r8 e,4 fis gis a8~ | a8 gis4 a b4. |
		}
	}

	\new Voice {
		\voiceTwo
		\relative c' {
			r1      | a4 a a a | a a a a | a   a a a |
			a a a a | a  a a a | d1      | e,2   e   |
		}
	}
>>

chorusTwo = <<
	\new Voice {
		\voiceOne
		\relative c''' {
			< a fis >8 fis a b cis d cis b | cis4 r4 \tuplet 3/2 { cis,8 d cis a'4 cis,8 } | \tuplet 3/2 { d cis gis'4 cis,8 d } \tuplet 3/2 { cis e4 cis8 d cis } |
			        d8 fis a b cis d e   f | cis4 r4 \tuplet 3/2 { cis,8 d cis a'4 cis,8 } | \tuplet 3/2 { d cis gis'4 cis,8 d } \tuplet 3/2 { cis e4 cis8 d cis } |
			        d8 fis a b cis d cis b | cis4 cis8 b4 a4 < b, e gis >8~ | < e gis > b < e gis>8 a gis\mordent e b gis~ | \time 2/4 gis2 |
		}
	}

	\new Voice {
		\voiceTwo
		\relative c' {
			d4. e4 fis4 gis8 | a,4 a a4 a4 | a4 a4 a4 a4 |
			d4. e4 fis4 gis8 | a,4 a a4 a4 | a4 a4 a4 a4 |
			d4. e4 fis4 gis8 | a,4 a a4 a4 | e1 | e2 |
		}
	}
>>

verseThree = <<
	\time 4/4
	\new Voice {
		\voiceOne
		\relative c'' {
			\repeat unfold 7 {
				cis8 d d cis d d cis d | 
			}
				cis8 d d cis d dis e eis | 
		}
	}

	\new Voice {
		\voiceTwo
		\relative c' {
			a4. a a4 | a4. a a4 | e4. e e4 | e4. e e4 |
			fis'4. fis fis4 | fis4. fis fis4 | e,4. e e4 | e4. e~ e4  |
		}
	}
>>

outro = <<
	\new Voice {
		\voiceOne
		\relative c''' {
			s1 | s2.. s8  | s1 |
			s1 | s2.. a8~ | a4 a8 gis4 e4. |
		}
	}
	
	\new Voice {
		\voiceOne
		\relative c'' {
			< d fis >4. < cis e >4 < b d >4.            | < cis e >4.             < b d >4 < a cis >4.~ | < a  cis >1 |
			< d fis >4. < e, cis' e >4 << { < b' d >4. } \\ { fis8. gis8. } >> | < cis e >4 < cis e >8^> < b d >4 < a cis >4. | s1 
			< d fis >4. < cis e >4 < b d >4 < cis e >8~ | < cis e >4 < cis e >8 < b d >4 < a cis >4 < gis b >8~ |
				< gis b >8 < fis a > << { gis8 a } \\ { e4 } >> gis8\mordent e b e, |
				a8 e' < a d > < a cis > a, e' < a cis > e | < a, e' a cis a' >1\arpeggio | 
		}
	}

	\new Voice {
		\voiceTwo
		\relative c' {
			d2 e, | a1 | a1              |
			d2 e,2 | a2 a2 | a8 a' cis4 a,4 d8 cis |
			d2 e, | a2 a2 | e1 | 
		}
	}
>>

vox = {
	\relative c' {
		a2 a | a8 a4 a4. gis8 gis~ | gis2 gis | gis8 gis4 gis4 a4. | fis2 fis | fis8 fis4 fis8( e4) e8 e~ | e2 e4. e8 | e8 e4 e4 e4 a8~ |
		a2 a | a8 a4 a4 a4 gis8~ | gis2 gis | gis8 gis4 gis4 a4 fis8~ | fis2 fis4. fis8 | fis8 fis4 fis4 fis4. | e2 e2 | e8 e4 e4 e8 e4 |

		d'4. cis4 b4 cis8~  | cis4 cis8 b4 a4. | r1 |
		d2     r8 cis8. b8. | cis4 cis8 b8 b4.( cis16 b | a1) |
		d4. cis4 b4 cis8~   | cis4 cis8 b8( a) a4( gis8~ | gis2) r2 | r1 |
	}
}

voxTwo = { 
	\relative c' {
		a2            a        | a8   a4   cis4 b a8~   | a2     gis2 | gis8 gis4 d'4 cis4 b8~ | b2 a      | d4 cis8 b4 a4.      | cis2 gis8 gis4.  | d'8 d4 d8. d8. d8 d8(~ |
		d8 cis4) e8~ e2        | cis8 cis4 e4. d8 cis8~ | cis2 b4. b8 | b8   b4   d4. cis8 b8~ | b2 a4. a8 | d8 cis4 b4 a4 cis8~ | cis2 gis4. gis8  | d'8 cis4 b4 a4 cis8~   |
		cis2 gis2 | s1 | s s s s s s |
		
		fis'4. e4 d4. | e4 e8 d4 cis4. | r1 |
		fis2 r8 e8. d8. | e4 e8 d8 d4.( e16 d | cis1) |
		fis4. e4 d4 e8 ~| e4 e8 d4 cis4( b8~ | b2) r2 | r2 |


		a2 a | a8 a4 cis4. d8 cis~ | cis2 b2 | gis8 gis4 d'4. cis8 b~ | b2 a | d4 cis8 b4 a4 cis8~ | cis2 cis | r4. a8 a a a a(~ |
		a2~ a8 fis4 e8~ | e2 ) r2 | s1 | s s s s s s s s 
	}
}

\score {
<<
	\new Staff {
		\key a \major
		\clef "bass"
		s1 * 20
		\vox
		s1 * 16
		\voxTwo

	}
	\new Staff {
		\key a \major
		\clef "treble"
		\intro
		\introTwo
		\bar "||"
		\verse
		\verseTwo
		\bar "||"
		\chorus
		\bar "|.|"
		\vamp
		\bar "||"
		\vampVerse
		\bar "||"
		\vampTwo
		\bar "|.|"
		\chorusTwo
		\bar "||"
		\verseThree
		\bar "||"
		\outro
		\bar "|."
	}
>>
}
