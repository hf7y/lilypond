\version "2.18.2"
\include "roman_numeral_analysis_tool.ily"

theme = <<
	\tempo 4. = 128
	\time 12/8
	\new Voice {
		\change Staff = "up"
		\relative c'' {
			r4. r8 cis8  e cis4 a8  cis a4 | fis8  a fis4 d8  fis d4( e fis )|
			r4. r8 cis'8  e cis4 a8  cis a4 | fis8  a fis4 d8  fis d4( cis b )|
			a4. r8 cis'8  e cis4 a8  cis  a4 fis8  a fis4 d8  fis d4( e g )|
		}
	}

	\new Voice {
		\change Staff = "down"
		\relative c, {
			d4.   fis a cis | e g b4( c  d   )|
			d,,4. fis a cis | e g b4( a  g   )|
			d,4.  fis a cis | e g b4( a cis, )|
	
		}
	}
>>

variOld = <<
	
	\new Voice {
		\change Staff = "up"
		\relative c' {
			fis4. r8 d16 e d cis b4. r8 e16 fis e d | cis4. r8 fis16 g fis e d4( e fis )|
			r4. r8 d16 e d cis b4. r8 e16 fis e d | cis4. r8 fis16 g fis e d4( cis b )|
			\time 3/4 a( b cis) | \time 12/8
			d4. r8 d16 e d cis b4. r8 e16 fis e d | cis4. r8 fis16 g fis e d4( < e d' >  < g cis > )|
		}
	}

	\new Voice {
		\change Staff = "down"
		\relative c {
			d4.   fis a cis | e, g b4( c  d   )|
			d,4. fis a cis | e, g b4( a  g   )|
			\time 3/4 fis( g a ) | \time 12/8
			d,4.  fis a cis | e, g b4( a, cis,)|
	
		}
	}
>>

vari = <<
	\time 12/8	
	\new Voice {
		\change Staff = "up"
		\relative c''' {
			r4. r8 cis8   e cis4 a8  cis a4 | fis8  a fis4 d8  fis d4( e fis )|
			r4. r8 cis'8  e cis4 a8  cis a4 | fis8  a fis4 d8  fis d4( cis b )| \time 3/4 a( b c) | \time 12/8
			d4. r8 cis'8  e cis4 a8  cis a4 | fis8  a fis4 d8  fis d4( r r )|
		}
	}

	\new Voice {
		\change Staff = "down"
		\relative c {
			d4.  < fis cis' > < a fis' > e | < g d'> < b g'>  b'4( c  d   )|
			d,,4.  < fis cis' > < a fis' > e | < g d'> < b g'>  b'4( a g  )| \time 3/4 fis( g a ) | \time 12/8
			d,,4.  < fis cis' > < a fis' > e | < g d'> < b g'>  a'4 r d,, |
	
		}
	}
>>
varii = <<
	\time 3/2
	\new Voice {
		\change Staff = "up"
		\relative c' {
			r8 cis   e r r a, cis r r fis, a r \clef "bass" \time 9/8 r d, fis  d4( e fis ) | \time 3/2 \clef "treble"
			r8 cis'  e r r a  cis r r fis, a r              \time 9/8 r d  fis d4( cis b ) | \time 3/4 a( b cis ) | cis,( d e ) |\time 3/2 \clef "treble"
			r8 cis  e r r a, cis r r fis, a r \clef "bass" \time 4/8 r d,[ fis] r | \clef "treble"

		}
	}

	\new Voice {
		\change Staff = "down"
		\relative c {
			d8[ r r a'] fis[ r r cis]  a[ r r e'] |                cis  r r b4( cis d) |
			d8[ r r a'] fis[ r r cis'] a[ r r e'] | \clef "treble" cis' r r b4( a g ) | fis( g a ) | \clef "bass" a,( b cis ) | 
			d8[ r r a ] fis[ r r cis] a[ r r e'] |                cis[ r r d] |
		}
	}
>>

chup = { \change Staff = "up" \oneVoice }
chdown = { \change Staff = "down" \voiceTwo }
chbass = { \clef "bass" }
chtreb = { \clef "treble" }
variii = <<
	\time 4/4
	\new Voice {
		{
			\chdown a,4 \chup g''    fis'' \chdown  b,      | d \chup     cis''       \tuplet 3/2 { b'( cis'' d'') }  |
			e''4 \chdown   e,        fis,  \chup    b''     | a'' \chdown cis, \chup  \tuplet 3/2 { fis'( e' d' ) }  |
				\tuplet 3/2 { cis' (d' e') } | \tuplet 3/2 { d'( e' fis' ) } | \tuplet 3/2 { b( cis' d') } |
			\chbass e4 \chtreb g''    fis'' \chbass b       | a \chtreb   cis'''       d''' r |
		}
	}

	\new Voice {
		\change Staff = "down"
		\relative c' {
			\voiceOne
			cis16 e d cis  b d cis b  a cis b a  g b a g  | fis a g fis  e g fis e  \oneVoice \tuplet 3/2 { d4( e fis ) } |
			cis16 e d cis  b d cis b  a cis b a  g b a g  | fis a g fis  e g fis e  \tuplet 3/2 { d4( cis b ) } | \time 2/4 
				\tuplet 3/2 { a'( b cis) } | \tuplet 3/2 { fis,( g a ) } | \tuplet 3/2 { d,( e fis ) } | \time 4/4 \ottava #-1
			cis16 e d cis  b d cis b  a cis b a  g b a g  | fis a g fis  e g fis e  \tuplet 3/2 { d4( \ottava #0 d' d ) } |
		}
	}
>>

variv = <<
	\set PianoStaff.connectArpeggios = ##t	
	\time 6/4
	\new Voice {
		\override TupletBracket.bracket-visibility = ##f
	%	\override TupletNumber.outside-staff-priority = #1
		\tupletDown
		\tieUp
		\slurDown

		\change Staff = "up"
		\relative c' {
			< e cis'>2                    < e cis'>4   < e cis' >  < g e'>  < e cis' > |
			< cis a' >2                   < e cis'>4   < cis a' > \tuplet 3/2 {  < d b' >( < e cis' > < fis d' >) }
			
			< b, e cis'~>4 < d fis cis' > < e g cis>4 < e g cis > < g b e> < e g cis > | 
			< a, cis a'~>4 < b d   a'   > < e g cis>4 < cis e a > \tuplet 3/2 { < d b' >4(< d a' > < cis g' >) } | \time 2/4 
				\tuplet 3/2 { < d fis>( < e g > < d a'>) } | \tuplet 3/2 { < d g >( < c e > < b fis' >) } |
				\tuplet 3/2 { < b g' >( < c aes' > < bes bes'>) } | \tuplet 3/2 { < fis' c' >(< f d' >< e e'>)} | \time 6/4
			< d fis'>2\arpeggio  < e e'>4 < fis d' > < fis d'> < g e' > | < fis a d >2 < fis a d>4 < f a cis > < e a cis> < e g cis > |
		}
	}

	\new Voice {
		\override TupletBracket.bracket-visibility = ##f
		%\override TupletNumber.avoid-slur =#'inside
		\tupletUp
		\slurUp 

		\change Staff = "down"
		\relative c {
			d4 cis' a fis d cis | b a' fis d \tuplet 3/2 { \once \stemDown < a fis'>(< b g'>  < cis a' >) } |		                                                
			d4 cis' a fis d cis | b a' fis d  
			
			<< { \tuplet 3/2 { < b g'>(< bes f'>< a bes'>) } | \stemDown
				\tuplet 3/2 { < d a'>( < cis g'> < c fis>) } | 
				\tuplet 3/2 { < b g'>( < ais e'> < a dis>) } |
				\tuplet 3/2 { < g e'>( < ges es'> < f d'>) } |
				\tuplet 3/2 { < es c' a'>(\arpeggio < d bes' as'>\arpeggio < cis a' g'>)\arpeggio } | \stemNeutral
			<< { r4 cis'' } \\ { < d,, a' fis' >2\arpeggio } >>  
			
			}

			\new Lyrics \lyricmode {
				\override Lyrics.LyricText.font-size = #-3
				\override Lyrics.LyricText.self-alignment-X = #0
				\tuplet 3/2 {
					\markup                \rN { IV 6 }4
					\markup                \rN { fVI       }
					\markup                \rN {  V  f9  7 }
					\markup                \rN {  I        } 
					\markup                \rN {  I   4  2 } 
					\markup { \concat {    \rN {  V   4  2 }  " /" } }
					\markup                \rN {  IV  6    }
					\markup { \concat {"[" \rN { sIV f5 f3 } } }
					\markup { \concat {    \rN {  V   4  2 } "] /" } } 
					\markup                \rN {  iii 6    }
					\markup { \concat {"[" \rN {  IV  4  2 } } }
					\markup { \concat {    \rN {  V   4  3 } "] / " \flat "II"} } 
					\markup                \rN { fii o }
					\markup                \rN { fVI  6 5 } 
					\markup                \rN {  V   6 5 }
				}
				\markup                \rN {  I       }  
			}
			>> < d' a'>4 < d fis > < fis, d' > < e cis' > | < d d' >2 < a' a'>4 < a a' > < a a' > < a a' > |  
		}
	}
>>

%Begin B section
varv = <<
	\tempo 4. = 80
	\new Voice {
		\change Staff = "up"
		\relative c' {
			\key d \minor
			\grace {s8} d4.    f     a     c     | e,    g     bes       cis     |
			d8 f d f a f a c a f a f | d f d b d b gis b gis e gis e | 
			c4(  b   a)      a'2.\trill      | d4( c   b)       d2.\trill           |
			\grace{c16 e}c2. \grace{a16 c}a2.|\grace{c16 b}a2. \grace {g16 fis} a4. fis |

			g4.     b         d     fis   | a,4.     c       e       g       | 
			\tuplet 4/3 { a4( fis d bes) } \tuplet 4/3 { a'( e c a) } |
			\tuplet 4/3 { f'( d a f) } \tuplet 4/3 { e'( cis a e) }
			\tuplet 4/3 { d'( a f d) } \tuplet 4/3 {  es'( g, f' a,) } 
			g1.~\trill g4. g'4.~\trill g2.~| g1. |

			\voiceOne
			f4( e d) d4:16 a2: | g'4( f e) e2.:
		}
	}

	\new Voice {
		\change Staff = "down"
		\relative c {
			\time 12/8
			\key d \minor
			\grace{d16 f}d4. r~ r2.  | \grace{a16 cis}a4. r~ r2.     | 
			\grace{d16 f}d4. r \grace{a16 b }a4. r|\grace{d16 f}d4.\grace{gis,16 b}gis4.~ gis2.
			a4.    c     e     g     | b,    d         f       gis   |
			a8 c a c e c e g e c e c | a c a fis a fis d fis d a c a |
			b4(  a   g)  b2.         | e4  cis   a     g'    fis e   |
			r1.                      | r                             |
			r
			g,8[ b d fis] a,[ cis e gis] b,[ dis fis ais] 
			des,[ f as c] es,[g   bes d] f,[ a   c   e  ] 
			g,[b\chup d fis]\chdown a,[cis\chup e g]\chdown a,[ cis \chup e g ]
			
			\voiceTwo
			a4( g f) f2.:16 | bes4( a g) a4: g2: |
		


			

		}
	}

	\new Voice {
		\change Staff = "down"
		\relative c, {
			s1.*16

			d4. f a c | e, g bes cis |
		}
	}

>>
varvi = <<
	\time 4/4
	\new Voice {
		\change Staff = "up"
		\relative c''' {
			r4.         a16 c  a8 f16 a f4    | r8 d~\trill d16 e f g a8-. \appoggiatura {g } f4.~\trill |
			f16 r8 e16  \appoggiatura {e} d4 e8 r8 e16-. d8. |


%			r2.        a8 c | a4  f8 a  f2   | r4.  d8 d e  f g | a4   g8 f  g f4.        |
%			r4. r8  e4 e4 e4| e4  e8 d  e d4.| r4.  r8 d d  d d | cis4 e4    a,2          | 
%			r2.        c8 c | c4  c8 c  d2   | r4. d,8 d e  f g | a4   g8 f  g f4.        |
%			r4. r8 g'4 g4   | g4  g8 f  g f4.| r4.  r8 d d  d d | cis4.   a4.      g8 f~  |  
			
		}
	}

	\new Voice {
		\change Staff = "down"
		\relative c' {
	%		\tuplet 5/4 { d,,4 fis a cis e } | \tuplet 5/4 { g, b d fis a | }
%			\tuplet 5/4 { d,,4 fis a cis e } | \tuplet 5/4 { g, b d fis a | }
%			\tuplet 5/4 { d,,4 fis a cis e } | \tuplet 5/4 { g, b d fis a | }
%			\tuplet 5/4 { d,,4 fis a cis e } | \tuplet 5/4 { g, b d fis a | }
				
		}
	}

>>

varvii = <<

>>

%Recapitulation
varviii = <<
	\tempo 4. = 128
	\time 12/8
	\new Voice {
		\change Staff = "up"
		\relative c'' {
			r4. r8 cis8  e cis4 a8  cis a4 | fis8  a fis4 d8  fis d4( e fis )|
			r4. r8 cis'8  e cis4 a8  cis a4 | fis8  a fis4 d8  fis d4( cis b )|
			a4. r8 cis'8  e cis4 a8  cis  a4 fis8  a fis4 d8  fis d4( e g )|
		}
	}

	\new Voice {
		\change Staff = "down"
		\relative c, {
			d4.   fis a cis | e g b4( c  d   )|
			d,,4. fis a cis | e g b4( a  g   )|
			d,4.  fis a cis | e g b4( a cis, )|
	
		}
	}
>>

varix = <<
	\time 12/8
	\new Voice {
		\change Staff = "up"
		\relative c'' {
			r4.   r8 d e d cis e fis e d | cis d cis b a g f4 ( g a  ) |
			d,4.  r8 d e d cis e fis e d | cis d cis b a g a'4( g fis) |
			r4.   r8 d e d cis e fis e d | cis d cis b a g fis2.       |
		}
	}

	\new Voice {
		\change Staff = "down"
		\relative c, {
			d4.   fis a cis | e g b4( c  d   )|
			d,,4. fis a cis | e g b4( a  g   )|
			d,4.  fis a cis | e g b4( a cis, )|
	
		}
	}
>>
varx = <<
	\time 4/4
	\new Voice {
		\change Staff = "up"
		\relative c'' {
			r4.   r8 d e d cis e fis e d | cis d cis b a g f4 ( g a  ) |
			d,4.  r8 d e d cis e fis e d | cis d cis b a g a'4( g fis) |
			r4.   r8 d e d cis e fis e d | cis d cis b a g fis2.       |
		}
	}

	\new Voice {
		\change Staff = "down"
		\relative c, {
			d2  fis | a    cis |
			e,2 g   | b4 a d2  |
			fis a   | cis  d   |
		}
	}
>>

\score {

%	\layout {
%		\context {
%			\PianoStaff
%			\consists #Span_stem_engraver
%		}
	%}

	{
		\new PianoStaff = "AA" <<
			\new Staff = "up" {
				\clef "treble" 
				\key d \major 
	
				\theme \bar "||" \break
				\mark "Var. I"
				\vari \bar "||" \break
				\mark "Var. II"
				\varii \bar "||" \break
				\mark "Var. III"
				\variii \bar "||" \break
				\mark "Var. IV"
				\variv \bar "." \break
	
				\mark "Var. V"
				\varv \bar "||" \break
				\mark "Var. VI"
				\varvi \bar "||" \break
				\mark "Var. VII"
				\varvii \bar "." \break
	
				\key d \major
				\mark "Var. VIII"
				\varviii \bar "||" \break
				\mark "Var. IX"
				\varix \bar "||" \break
				\mark "Var. X"
			}
	
			\new Staff = "down" {
				\clef "bass"
				\key d \major
				s1*40 s1*6
	
				s1*40
	
				\key d\major
				s1*20
			}
		>>
	}

%	\new PianoStaff = "xxBB" <<
%		\new Staff = "up" {
%			\clef "treble"
%			\key d \minor
%			\mark "Var. V"
%			\varv \bar "||" \break
%			\mark "Var. VI"
%%			\varvi \bar "||" \break
%			\mark "Var. VII"
%			\varvii \bar "." \break
%		}

%		\new Staff = "down" {
%%			\clef "bass"
%			\key d \minor
%		}
%	>>

%	\new PianoStaff <<
%		\new Staff = "up" {
%			\clef "treble"
%			\key d \major
%
%			\mark "Var. VIII"
%			\varviii \bar "||" \break
%			\mark "Var. IX"
%			\varix \bar "||" \break
%			\mark "Var. X"
%			\varx \bar "|."
%		}
%
%		\new Staff = "down" {
%			\clef "bass"
%			\key d \minor
%		}
%	>>
}
