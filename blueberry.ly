\version "2.18.2"

verseGuitar = <<
	\new Voice {
		\stemDown
		\slurDown
		\relative c' {
			a4 s8 a a s4 a8~ a s4 a8 a4 s |
			d4 s8 d d s4 d8~ d s4 d8 d4 s8 gis, |
			a4 s8 a a s4 a8~ a s4 a8 a4 s |
			d4 s8 d d s4 d8~ d s4 d8 d4 a8 ais 
				
			b4 s8 b b s4 b8~ b s4 b8 b4 s |
			e4 s8 e e s4 e8~ e2. gis,4 |
			a4 s8 a a s4 a8~ a s4 a8 a4 s |
			a4 s8 a a s4 a8~ a2. e4 |
		}
	}
	\new Voice {
		\stemUp
		\relative c'' {
			s4 < gis cis  e >8 s s < gis cis  e >4 s < gis cis  e> s8 s4 < gis cis  e > |
			s4 < fis cis' e >8 s s < fis cis' e >4 s < fis cis' e> s8 s4 < fis cis' e > |
			s4 < gis cis  e >8 s s < gis cis  e >4 s < gis cis  e> s8 s4 < gis cis  e > |
			s4 < fis cis' e >8 s s < fis cis' e >4 s < fis cis' e> s8 s8 < fis cis' e > s4 |
	
			s4 < a d fis >8 s s < a d fis >4 s < a d fis > s8 s4 < a d fis > |
			s4 < gis d' fis >8 s s < gis d' fis >4 < gis d' fis >8~ < gis d' fis >2. s4 |
			s4 < gis cis  e >8 s s < gis cis  e >4 s < gis cis  e> s8 s4 < gis cis  e > |
			s4 < gis cis  e >8 s s < gis cis  e >4 < gis cis  e>8~ < gis cis  e >2. s4 |
		}
	}

>>

verseGuitarTwo = { <<
	\new Voice {
		\stemDown
		\slurDown
		\relative c' {
			a4 s8 a a s4 a8~ a s4 a8 a4 s |
			d4 s8 d d s4 d8~ d s4 d8 d4 s8 gis, |
			a4 s8 a a s4 a8~ a s4 a8 a4 s |
			d4 s8 d d s4 d8~ d s4 d8 d4 a8 ais 
				
			b4 s8 b b s4 b8~ b s4 b8 b4    s     |
			e4 s8 e e s4 e8~ e s4 e8 e8 s8 b bis |

			cis4 s8 cis cis s4 cis8~ cis s4 cis8 cis4 s |
			fis4 s8 fis fis s4 fis8~ fis s4 fis8 fis8 s8 cis c |

			b4 s8 b b s4 b8~ b s4 b8 b4 s |
			e4 s8 e e s4 e8~ e2. r4 |
		}
	}
	\new Voice {
		\stemUp
		\relative c'' {
			s4 < gis cis  e >8 s s < gis cis  e >4 s < gis cis  e> s8 s4 < gis cis  e > |
			s4 < fis cis' e >8 s s < fis cis' e >4 s < fis cis' e> s8 s4 < fis cis' e > |
			s4 < gis cis  e >8 s s < gis cis  e >4 s < gis cis  e> s8 s4 < gis cis  e > |
			s4 < fis cis' e >8 s s < fis cis' e >4 s < fis cis' e> s8 s8 < fis cis' e > s4 |
	
			s4 < a   d  fis >8 s s < a   d  fis >4 s < a   d  fis > s8 s4 < a   d  fis > |
			s4 < gis d' fis >8 s s < gis d' fis >4 s < gis d' fis > s8 s4 < gis d' fis > |
			
			s4 < b   e  gis >8 s s < b   e  gis >4 s < b   e  gis > s8 s4 < b   e  gis > |
			s4 < ais e' gis >8 s s < ais e' gis >4 s < ais e' gis > s8 s4 < ais e' gis > |

			s4 < a d fis >8 s s < a d fis >4 s < a d fis > s8 s4 < a d fis > |
			s4 < gis d' fis >8 s s < gis d' fis >4 < gis d' fis >8~ < gis d' fis >2. s4 |
		}
	}

>> }

verseGuitarThree = { <<
	\new Voice {
		\stemDown
		\slurDown
		\relative c' {
			a1 a1 |
			d4 s8 d d s4 d8~ d s4 d8 d4 s8 gis, |
			a4 s8 a a s4 a8~ a s4 a8 a4 s |
			d4 s8 d d s4 d8~ d s4 d8 d4 a8 ais 
				
			b4 s8 b b s4 b8~ b s4 b8 b4    s     |
			e4 s8 e e s4 e8~ e2 r2 |
		}
	}
	\new Voice {
		\stemUp
		\relative c'' {
			r4 < gis cis  e >2. < gis cis  e >4.< gis cis  e>4-> < gis cis  e >4-> < gis cis e >8 |
			s4 < fis cis' e >8 s s < fis cis' e >4 s < fis cis' e> s8 s4 < fis cis' e > |
			s4 < gis cis  e >8 s s < gis cis  e >4 s < gis cis  e> s8 s4 < gis cis  e > |
			s4 < fis cis' e >8 s s < fis cis' e >4 s < fis cis' e> s8 s8 < fis cis' e > s4 |
	
			s4 < a   d  fis >8 s s < a   d  fis >4 s < a   d  fis > s8 s4 < a   d  fis > |
			s4 < gis d' fis >8 s s < gis d' fis >4 < gis d' fis >8~ < gis d' fis >2 r2 |
		}
	}

>> }


melodyGuitar = { 
	<<
	\repeat volta 2
	\new Voice {
		\voiceTwo
		\relative c' {
			a4 gis'8 a, a gis'4 r8 |
			a,4 gis'8 a, a gis'4 r8 |
			a,4 gis'8 a, a gis'4 r8 |
			a,4 gis'8 a, a gis'4 r8 |
			a,4 gis'8 a, a gis'4 r8 |
			a,4 gis'8 a, a gis'4 r8 |
			a,4 gis'8 a, a gis'4 r8 |
			a,4 gis'8 a, a gis'4 a,8 |
		
			d4 cis'8 d, d cis'4 r8 |
			d,4 cis'8 d, d cis'4 r8 |
			d,4 cis'8 d, d cis'4 r8 |
			d,4 cis'8 d, d cis'4 r8 |

			a,4 gis'8 a, a gis'4 r8 |
			a,4 gis'8 a, a gis'4 r8 |
			a,4 gis'8 a, a gis'4 r8 |
			a,4 gis'8 a, a gis'4 r8 |
			\bar "||"
			a,4 gis'8 a, a gis'4 r8 |
			a,4 gis'8 a, a gis'4 r8 |
			a,4 gis'8 a, a gis'4 r8 |
			a,4 gis'8 a, a gis'4 r8 |
			a,4 gis'8 a, a gis'4 r8 |
			a,4 gis'8 a, a gis'4 r8 |
			a,4 gis'8 a, a gis'4 r8 |
			a,4 gis'8 a, a gis'4 a,8 |
		
			d4 cis'8 d, d cis'4 r8 |
			d,4 cis'8 d, d cis'4 r8 |
			d,4 cis'8 d, d cis'4 r8 |
			d,4 cis'8 d, d cis'4 r8 |

			a,4 gis'8 a, a gis'4 r8 |
			a,4 gis'8 a, a gis'4 r8 |
			a,4 gis'8 a, a gis'4 r8 |
			a,4 gis'8 a, a gis'4 r8 |

			a,4 gis'8 a, a gis'4 r8 |
			e,4 gis'8 e, e gis'4 r8 |
		}
	}

	\repeat volta 2
	\new Voice {
		\voiceOne
		\relative c''' {
			r2 r8 gis\( fis a | gis2 fis2 |
			e1\) | r1 |
			r2 r8 gis\( fis a | gis2 fis2 |
			e1\) | r1 |
			r2 r8 gis\( fis a | gis2 fis2 |
			e1\) | r2 r8 cis \( d e |
			fis4 gis4 e4 cis'4\) | r2 r8 cis,\( d e |
			fis4 gis4 e2 \) | r1 |

			r2 r8 gis\( fis a | gis4. cis,8 fis4. cis8 |
			e1\) | r1 |
			r2 r8 gis\( fis a | gis4 cis4 fis,4 b4 |
			e,1\) | r1 |
			r2 r8 gis\( fis a | gis4 cis4 fis,4 b4 |
			e,1\) |  r2 r8 cis\( d e |
			fis4 gis4 e4 cis'4\) | r2 r8 cis,\( d e |
			fis4 gis4 e2\) | r2 r8 cis\( d e  |
			fis4 gis4 e4 cis'4\) | r2 f,4 e8 d |


		}
	}

	>>
}

verseVox = {
	\relative c'  {
		r2 cis8 cis4 b8 | e2. cis4 |
		r2 cis8 cis4 b8 | cis2. r4 |
		r2 gis'4. e16 cis | e8( fis4.) r4 fis, |
		r2 \tuplet 3/2 { b4 a cis } | fis,2. r4 |
		r2 a'2~ | a8 gis fis cis fis4 e4 |
		r1 | r2 \tuplet 3/2 { cis4 cis b } |
		cis1 | r1 | r1 | r1 |
	}
}


lyricsVox = \lyricmode {
	El -- ec -- tric touch of blue -- ber -- ry skin
	grace from a -- bove and light from with -- in
	crash -- ing and col -- lid -- ing so we be -- gin
}


verseVoxTwo = {
	\relative c' {
		r2 cis,8 cis4 b8 | e2. cis4 |
		r2 cis8 cis4 b8 | cis2. r4 |
		r2 \tuplet 3/2 { gis'4 fis cis' } | cis,4( e2.) |
		r2 \tuplet 3/2 { cis'4 b e } | cis2~( \tuplet 3/2 { cis4 b a }  |
		b2) r2  | r8 fis fis fis fis( gis4) e8~ |
		e2  r2  | r1 | 
		r1 | r8 gis gis gis gis( cis8[ fis,8]) ais8~ |
		ais2 r2 | r1 |
		r1 | r8 fis fis fis fis( gis4. )|
		r1 | \tuplet 3/2 { cis4 b e } \tuplet 3/2 { cis e, gis~ } 
		gis2 
	}
}

lyricsVoxTwo = \lyricmode {
	Sim -- mer -- ing nights and shi -- ver -- ring lips
	blue moon made light, sum -- mer fi -- ness
	blue -- ber -- ry pie dreams
	blue -- ber -- ry pie dreams
	blue -- ber -- ry pie dreams and de -- ri -- va -- tives
}

verseVoxThree = {
	\relative c' {
		r2 cis,8 cis b e | fis2. r4 |
		r2 cis8 cis4 b8 | cis2. r4 |
		r2 \tuplet 3/2 { gis'4 gis fis' } | b,2. r4 |
		r4 cis cis b8 e | cis ( b a4 ) r2 | 
		r2.. a'8~ | a gis fis cis fis4 e4 |
		r1 | cis4 cis cis8 e4 e, | a1 |
	}
}

lyricsVoxThree = \lyricmode {
	Me -- lan -- cho -- ly March Ho -- ney in May
	Shim -- me -- ring dew may -- hem ra -- di -- ates
	Eve -- ry -- bo -- dy's dan -- cing
	while I'm hi -- ding a -- way.
}
\score { <<
	\new Staff {
		\new Voice = "baritone" {
			\key a \major
			\clef "baritone"
			\autoBeamOff
			\verseVox
			\verseVoxTwo
			s1 * 33
			\verseVoxThree
		}
	}

	\new Lyrics \lyricsto "baritone" {
		\lyricsVox
		\lyricsVoxTwo
		\lyricsVoxThree
	}

	\new Staff {
		\key a \major
		\verseGuitar
		\bar "||"
		\verseGuitarTwo
		\bar "||"
		\melodyGuitar
		\bar "||"
		\verseGuitarThree
	}
>> }
