\version "2.18.2"

arpeggioTwelveE = {
	\new Voice {
		\voiceOne
		\autochange
		\relative c {
			e8 g b c d e g e d c b g |
			e8 g b c d e g e d c b g |
			e8 g b c d e g e d c b g |
			e8 g b c d e g e d c b g |
		}
	}
}

arpeggioTwelveD = {
	\new Voice {
		\voiceOne
		\autochange
		\relative c {
			d8 f a c d e g e d c a f |
			d8 f a c d e g e d c a f |
			d8 f a c d e g e d c a f |
			d8 f a c d e g e d c a f |
		}
	}
}


arpeggioTenE = {
	\new Voice {
		\voiceOne
		\autochange
		\relative c {
			e8 g b c d e d c b g |
			e8 g b c d e d c b g |
			e8 g b c d e d c b g |
			e8 g b c d e d c b g |
		}
	}
}

arpeggioTenD = {
	\new Voice {
		\voiceOne
		\autochange
		\relative c {
			d8 f a c d e d c a f |
			d8 f a c d e d c a f |
			d8 f a c d e d c a f |
			d8 f a c d e d c a f |
		}
	}
}

arpeggioEightE = {
	\new Voice {
		\voiceOne
		\autochange
		\relative c {
			e8 g b c d c b g |
			e8 g b c d c b g |
			e8 g b c d c b g |
			e8 g b c d c b g |
		}
	}
}

arpeggioEightD = {
	\new Voice {
		\voiceOne
		\autochange
		\relative c {
			d8 f a c d c a f |
			d8 f a c d c a f |
			d8 f a c d c a f |
			d8 f a c d c a f |
		}
	}
}

A  = {
	\time 3/2
	<<
		\arpeggioTwelveE	
	
		\new Voice {
			\voiceTwo
			\autochange
			\relative c {
				c1.~|
				c1.~|
				c1.~|
				c1.|
			}
		}
	>>
	
	<<
		\arpeggioTwelveE	
	
		\new Voice {
			\voiceTwo
			\autochange
			\relative c, {
				c1.~|
				c1.~|
				c1.~|
				c1.|
			}
		}
	>>
	
	<<
		\arpeggioTwelveD	
	
		\new Voice {
			\voiceTwo
			\autochange
			\relative c {
				c1.~|
				c1.~|
				c1.~|
				c1.|
			}
		}
	>>
	
	<<
		\arpeggioTwelveD	
	
		\new Voice {
			\voiceTwo
			\autochange
			\relative c, {
				c1.~|
				c1.~|
				c1.~|
				c1.|
			}
		}
	>>

	<<
		\arpeggioTwelveE	
	
		\new Voice {
			\voiceTwo
			\autochange
			\relative c,, {
				c1.~|
				c1.~|
				c1.~|
				c1.|
			}
		}
	>>
}


B  = {
	\time 5/4
	<<
		\arpeggioTenE	
	
		\new Voice {
			\voiceTwo
			\autochange
			\relative c {
				c2.~ c2~|
				c2.~ c2~|
				c2.~ c2~|
				c2.~ c2|
			}
		}
	>>
	
	<<
		\arpeggioTenE	
	
		\new Voice {
			\voiceTwo
			\autochange
			\relative c, {
				c2.~ c2~|
				c2.~ c2~|
				c2.~ c2~|
				c2.~ c2|
			}
		}
	>>
	
	<<
		\arpeggioTenD	
	
		\new Voice {
			\voiceTwo
			\autochange
			\relative c {
				c2.~ c2~|
				c2.~ c2~|
				c2.~ c2~|
				c2.~ c2|
			}
		}
	>>
	
	<<
		\arpeggioTenD	
	
		\new Voice {
			\voiceTwo
			\autochange
			\relative c, {
				c2.~ c2~|
				c2.~ c2~|
				c2.~ c2~|
				c2.~ c2|
			}
		}
	>>

	<<
	
		\arpeggioTenE	
		\new Voice {
			\voiceTwo
			\autochange
			\relative c,, {
				c2.~ c2~|
				c2.~ c2~|
				c2.~ c2~|
				c2.~ c2|
			}
		}
	>>
}

C = {
	\time 4/4
	<<
		\arpeggioEightE
		\new Voice {
			\voiceTwo
			\autochange
			\relative c, {
				c1~
				c1~|
				c1~|
				c1 |
			}
		}
	>>

	<<
		\arpeggioEightD
		\new Voice {
			\voiceTwo
			\autochange
			\relative c, {
				c1~
				c1~|
				c1~|
				c1 |
			}
		}
	>>

	<<
		\arpeggioEightE	
		\new Voice {
			\voiceTwo
			\autochange
			\relative c,, {
				c1~
				c1~|
				c1~|
				c1 |
			}
		}
	>>
}

\score
{
	\new PianoStaff <<
		\new Staff = "up" {
			\clef "treble"
			\A \B \C
		}
		\new Staff = "down" {
			\clef "bass"
		}
	>>
}


