\version "2.18.2"

intro = <<
	\new Voice {
		\change Staff = "up"
		\relative c''' {
			c4 r2. |
			c4 r2. |
			c4 r2. |
			c4 r2. |

			\time 7/8
			c8 r2. |
			\time 4/4
			c4 r2. |
			c4 r2. |
			\time 9/8
			c4. r2. |

			\time 4/4
			c4 r2. |
			c4 r2. |
			c4 r2. |
			c4 r2. |

			\time 7/8
			c8 r2. |
			\time 4/4
			c,4 r2. |
			c4 r2. |
			\time 9/8
			c4. r2. |

			\time 4/4
			c4 r2. |
			c4 r2. |
			c4 r2. |
			c4 r2. |

			\time 7/8
			c8 r2. |
			\time 4/4
			c,4 r8 c8 r2 |
			c4 r8 c'8 r2 |
			\time 9/8
			c,4. r8 c''8 r2 |
		}
	}

	\new Voice {
		\change Staff = "down"
		\relative c, {
			r4 \tuplet 4/3 { b2 d2 } |
			r4 \tuplet 4/3 { b2 e2 } |
			r4 \tuplet 5/3 { b2. a2 } |
			r4 \tuplet 4/3 { b2 g2 } |

			\time 7/8
			r8 \tuplet 4/3 { b2 d2 } |
			\time 4/4
			r4 \tuplet 4/3 { b2 e2 } |
			r4 \tuplet 5/3 { b2. a'2 } |
			\time 9/8
			r4. \tuplet 4/3 { b,2 g'2 } |
			
			\time 4/4
			r4 \tuplet 4/3 { b2 d2 } |
			r4 \tuplet 4/3 { b2 e2 } |
			r4 \tuplet 5/3 { b2. a2 } |
			r4 \tuplet 4/3 { b2 g2 } |

			\time 7/8
			r8 \tuplet 4/3 { b2 d2 } |
			\time 4/4
			r4 \tuplet 4/3 { b2 e2 } |
			r4 \tuplet 5/3 { b2. a'2 } |
			\time 9/8
			r4. \tuplet 4/3 { b,2 g'2 } |
			
			\time 4/4
			r4 \tuplet 4/3 { b2 d2 } |
			r4 \tuplet 4/3 { b2 e2 } |
			r4 \tuplet 5/3 { b2. a2 } |
			r4 \tuplet 4/3 { b2 g2 } |

			\time 7/8
			r8 \tuplet 4/3 { b2 d2 } |
			\time 4/4
			r4 \tuplet 4/3 { b2 e2 } |
			r4 \tuplet 5/3 { b2. a,2 } |
			\time 9/8
			r4. \tuplet 4/3 { b2 g,2 } |
			
		}
	}
>>

crossing = <<
	\new Voice {
		\change Staff = "up"
		\relative c'''' {
			\time 4/4
			c4 r8 c8 r2 |
			c4 r8 c8 r2 |
			c4 r8 c8 r2 |
			c4 r8 c8 r2 |

			\time 7/8
			c8 r8 c,8 r2 |
			\time 4/4
			c4 r8 c8 r2 |
			c4 r8 c8 r2 |
			\time 9/8
			c4. r8 c,8 r2 |
			\time 4/4

			c4 r8 c8 r2 |
			c4 r8 c8 r2 |
			c4 r8 c8 r2 |
			c4 r8 c8 r2 |

			\time 7/8
			c8 r8 c,8 r2 |
			\time 4/4
			c4 r8 c8 r2 |
			c4 r8 c8 r2 |
			\time 9/8
			c4. r8 
			\change Staff = "down"
			\stemDown
			c,8 \change Staff = "up" r2 |
			\time 4/4
			
			\change Staff = "down"
			c4 r8 c8[ c8] r4. |
			c4 r8 c8[ c8] r4. |
			c4 r8 c8[ c8] r4. |
			c4 r8 c8[ c,8] r4. |
			
			\oneVoice
			\time 7/8
			c'8 r8 c,8[ c ] r4. |
			\time 4/4
			c'4 r8 c,8[ c, ] r4. |
			c''4 r8 c,8[ c ] r4. |
			\time 9/8
			c'4. r8 c,8[ c, ]r4. |
			\time 4/4

			\ottava #-1
			c'4 r8 c8[ c8] r4. |
			c4 r8 c8[ c8] r4. |
			c4 r8 c8[ c8] r4. |
			c4 r8 c8[ c,8] r4. |
			
			\oneVoice
			\time 7/8
			c'8 r8 c,8[ c ] r4. |
			\time 4/4
			c'4 r8 c,8[ c ] r4. |
			c'4 r8 c,8[ c ] r4. |
			\time 9/8
			c'4. r8 c,8[ c ]r4. |
			
			\ottava #0 
		}
	}

	\new Voice {
		\change Staff = "down"
		\relative c,, {
			\time 4/4
			\ottava #-1 
			r4 \tuplet 4/3 { b2 d2 }
			r4 \tuplet 4/3 { b2 e2 }
			r4 \tuplet 5/3 { b2. a'2 }
			r4 \tuplet 4/3 { b,2 g'2 }

			\ottava #0
			\time 7/8
			r8 \tuplet 4/3 { b2 d2 }
			\time 4/4
			r4 \tuplet 4/3 { b2 e2 }
			r4 \tuplet 5/3 { b2. a'2 }
			\time 9/8
			r4. \tuplet 4/3 { b,2 g'2 }
			\time 4/4
		
			r4 \tuplet 4/3 { b2 d2 }
			r4 \tuplet 4/3 { b2 e2 }
			r4 \tuplet 5/3 { b2. a'2 }
			r4 \tuplet 4/3 { b,2 g'2 }

			\time 7/8
			r8 \tuplet 4/3 { b2 d2 }
			\time 4/4
			r4 \tuplet 4/3 { b2 e2 }
			r4 \tuplet 5/3 { b2. a2 }
			\time 9/8
			r4. 
			\voiceOne
			\tuplet 4/3 { b2 g2 }
			\time 4/4

			\oneVoice
			\change Staff = "up"
			r4 \tuplet 4/3 { b2 d2 }
			r4 \tuplet 4/3 { b2 e2 }
			r4 \tuplet 5/3 { b2. a'2 }
			r4 \tuplet 4/3 { b,2 g'2 }

			\time 7/8
			r8 \tuplet 4/3 { b2 d2 }
			\time 4/4
			r4 \tuplet 4/3 { b2 e2 }
			r4 \tuplet 5/3 { b2. a'2 }
			\time 9/8
			r4. \tuplet 4/3 { b,2 g'2 }
			\time 4/4
			
			\ottava #1
			r4 \tuplet 4/3 { b2 d2 }
			r4 \tuplet 4/3 { b2 e2 }
			r4 \tuplet 5/3 { b2. a'2 }
			r4 \tuplet 4/3 { b,2 g'2 }

			\time 7/8
			r8 \tuplet 4/3 { b2 d2 }
			\time 4/4
			r4 \tuplet 4/3 { b2 e2 }
			r4 \tuplet 5/3 { b2. a'2 }
			\time 9/8
			r4. 
			\tuplet 4/3 { b,2 g'2 }
			\ottava #0 
		}
	}
>>

melody = <<
	\new Voice {
		\autochange {
			\time 11/8
				c,,8[ 
				b''' 
				c, 
				b''
				c
				d'' c'] s2 |
			\time 9/8
				\tuplet 7/5 { c,,8 b''' c, b'' c e'' c' } s2 |
			\time 7/8
				\tuplet 7/6 { c,,16 b''' c, b'' c a' c'} s2 |
		}

			\time 5/8
				\tuplet 7/4 { 
					\change Staff = "down" c,,32 
					\change Staff = "up" b''' 
					\change Staff = "down" c, 
					\change Staff = "up" b'' 
					\change Staff = "down" c 
					\change Staff = "up" g'
					c' } s2 |
	
		\autochange {
				\tuplet 3/2 { c,,32 b''' c, b'' c d'' } s2 |
			\time 7/8
				c,,16[ b''' c, b'' c e''] s2 |
			\time 9/8
				\tuplet 6/5 { c,,8 b''' c, b'' c a' } s2 |
		}

			\time 11/8
				\tuplet 12/7 { 
					\change Staff = "down" c,,4 
					\change Staff = "up" b''' 
					\change Staff = "down" c, 
					\change Staff = "up" b'' 
					\change Staff = "down" c 
					\change Staff = "up" g' } s2 |
			
				\tuplet 10/7 { 
					\change Staff = "down" c,,4 
					\change Staff = "up" b'''
					\change Staff = "down" c, 
					\change Staff = "up" d' 
					\change Staff = "down" c } s2 |
		\autochange {
			\time 9/8
				c,,8[ b''' c, < b'' e'' > < c c'> ] s2|
			\time 7/8
				\tuplet 5/3 { c,,8 b''' c, a'' c } s2 |
			\time 5/8
				\tuplet 5/4 { c,,32 b''' c, g'' c } s2 |
		}
				c,,32[ \change Staff = "up" b''' \change Staff = "down" < c, c > \change Staff = "up" < b'' d'' >] s2 |

			\time 7/8
				\tuplet 4/3 { 
					\change Staff =	"down" c,,8
					\change Staff = "up" b'''8
					\change Staff = "down" < c, c >8 
					\change Staff = "up" < b'' e'' > } s2 |
		\autochange {
			\time 9/8
				\tuplet 8/5 { c,,4 b'''4 < c, c > a'' } s2 |
			\time 11/8
				\tuplet 8/7 { c,,4 b'''4 c,4 g'' } s2 |
			
				\tuplet 9/7 { c,,4. < b''' d''' >  < c, c >4. } s2 |
			\time 9/8
				\tuplet 6/5 { c,,4 < b''' e''' >4 < c, c>4 } s2 |
			\time 7/8
				< c,, c, >8 [ < b''' a'''> < c c' >] s2 |
			\time 5/8
				\tuplet 3/2  { < c,, c, >16 < b''' g''' > < c c' > } s2 |
		
				< c,, c,>16 [ < b''' d''' >]  s2 |
			\time 7/8
				\tuplet 4/3 { c,,4 < b''' e'''> } s2 |
		}
			\time 9/8
				\tuplet 6/5 { 
					\change Staff = "down" c,,4. 
					\change Staff = "up" < b''' a'''> } s2  |
		\autochange {
			\time 11/8 
				\tuplet 8/7 { c,,2 < b''' g'''> } s2 |
		}
	}

	\new Voice { 
		\change Staff = "up"
			s8 * 7 b'4 a'4
			s8 * 5 c''4 b'4
			s8 * 3 e'4 \change Staff = "down" a4 \change Staff = "up"
			s8 * 1 e'4 \change Staff = "down" g4
			s8 * 1 g4 \change Staff = "up" g'4
			s8 * 3 \change Staff = "down" b4 \change Staff = "up" a'4
			s8 * 5 \change Staff = "down" c'2
			s8 * 7 e4 a4
			
			s8 * 7 \change Staff = "up" d''4 \change Staff = "down"  g4
			s8 * 5 \change Staff = "up" g'2 \change Staff = "down"
			s8 * 3 \change Staff = "up" b'4 \change Staff = "down"  a4
			s8 * 1 \change Staff = "up" c''4 \change Staff = "down"  b4
			s8 * 1 \change Staff = "up" e'4 a'4 \change Staff = "down"
			s8 * 3 \change Staff = "up" d'4 g'4 \change Staff = "down"
			s8 * 5 \change Staff = "up" e'2 \change Staff = "down"
			s8 * 7 f4 \change Staff = "up" g'4 \change Staff = "down"
			
			s8 * 7 \change Staff = "up" a'4 \change Staff = "down" b4
			s8 * 5 \change Staff = "up" g'2 \change Staff = "down"
			s8 * 3 \change Staff = "up" g''4 e'4
			s8 * 1 f''4 g'4
			s8 * 1 \change Staff = "down" a,4 \change Staff = "up"  b'4
			s8 * 3 \change Staff = "down" g2
			s8 * 5 \change Staff = "up" d'2
			s8 * 7 e'2
	}
>>

fin = {
	\time 4/4
	\autochange {
		c,,4 \tuplet 5/3 {  b'''2. a2 } |
		c,4  \tuplet 4/3 { b''2 g } |
		c4 \tuplet 4/3 {  b'2 d' } |
		c'4 \tuplet 4/3 { b2 e' } |
		c''4 \tuplet 5/3 { b,2. a2 } |
		c'''4 \tuplet 4/3 { b,,2 g } |
		c'1
	}
}	
\score {
	\new PianoStaff <<
		\new Staff = "up" {
			\clef "treble"
			\intro
			\bar "||"
			\crossing
			\bar "||"
			\melody
			\bar "||"
			\fin
		}

		\new Staff = "down" {
			\clef "bass"
			s1 * 56 
		}
	>>

	\midi {}

}

