\version "2.18.2"
\paper {
	#(set-paper-size "letter")
}

\header {
	title = "Improv for Violin and Piano"
	composer = "Z. V. Pine"
}
oldViolin = {
	\key d \major
	\relative c'' {
		fis2(~ fis8. d16 ) a(\< d f a)\! |
		c2 d4--( e--) | 
		fis2~ \tuplet 3/2 { fis4 dis8 } \tuplet 3/2 { b8( fis dis) } |
		\tuplet 3/2 { a'4 g8( } \tuplet 3/2 { e8 b g) } \tuplet 3/2 { fis'4 e8( } \tuplet 3/2 { b8 g e) }
	}
}

oldPiano = <<
	\new Voice {
		\key d \major
		\change Staff = "up"
		\slurUp
		\relative c' {
			r8 d( fis a \stemUp d[ fis] a) r8
		}
		\relative c' {
			r8 e( g c \stemUp e[ g] c) r8
		}
		\relative c {
			r8 \change Staff = "down" fis( b \change Staff = "up" dis \stemUp fis[ b] dis) r8
		}
		\relative c' {
			r8 \change Staff = "down" g( b \change Staff = "up" e \stemUp g[ b] e) s8
		}
	}

	\new Voice {
		\key d \major
		\change Staff = "down"
		\slurDown
		\relative c {
			a( fis' a \change Staff = "up" \stemDown d fis[\< a] d\!) s8
		}
		\relative c {
			\change Staff = "down"
			g( g' c \change Staff = "up" \stemDown e g[ c] e)
			\change Staff = "down" s8
		}
		\relative c, {
			fis( b dis fis b[ \change Staff = "up" \stemDown dis] fis)
			\change Staff = "down" r8
		}
		\relative c, {
			\change Staff = "down"
			e( b' e g b[ \change Staff = "up" \stemDown  e] g)
			\change Staff = "down" r8
		}
	}
>>

violin = {
	\tempo 4 = 60
	\relative c'' {
		\repeat volta 2 {
			g1\(
			f1
			e1\)

			g1\(
			f1\fermata
			\grace { \change Staff = "up" c16 } \change Staff = "violin" e1\)
		}

		aes2\(
		g2
		f1\fermata
		\grace { \change Staff = "up" c16 } \change Staff = "violin" e1\)

		aes2\(\fermata
		\grace { \change Staff = "down" b,16 } \change Staff = "violin" g'2
		f1\fermata
		\grace { \change Staff = "up" c16 } \change Staff = "violin" e1\)

		{
			g1\(
			f1
			e1\)

			g1\(
			f1\fermata
			\grace { \change Staff = "down" c,16 } \change Staff = "violin" e'2\< es\!\)\fermata
		}
	}
	\bar "||"
	\relative c'' {
		\grace { \change Staff = "down" b,,8 g' } \change Staff = "violin" g''1 \sp\flageolet\(
		f1
		e1\)

		g,1\flageolet\(
		f1\fermata
		\grace { \change Staff = "up" c16 } \change Staff = "violin" e1\)
	
		aes'2\(\f\fermata
		\grace { \change Staff = "down" b,,,8 g' } \change Staff = "violin" g''2
		fis2\fermata
		\grace { \change Staff = "down" a,,,8 c' } \change Staff = "violin" f'2\fermata
		\grace { \change Staff = "down" g,,,8 c' } \change Staff = "violin" e'1\)

		aes2\(\fermata
		\grace { \change Staff = "down" g,,,8 
			\change Staff = "up" b'' } \change Staff = "violin" g'2
		fis2\fermata
		\grace { \change Staff = "down" \ottava #-1 a,,,,8
			\change Staff = "up" c''' } \change Staff = "violin" f2\fermata
		\grace { \change Staff = "down" g,,,,8 \ottava #0 
			\change Staff = "up" c''' } \change Staff = "violin" e2\< es\!\)
	}
	\bar "||"
	\relative c'' {
		g,1\(\spp
		f'''1\fermata
		\grace { \change Staff = "up" \ottava #1 c'4 \ottava #0 } \change Staff = "violin" e,2\< es\>\)

		g,1\(\flageolet\!\spp
		f'1\fermata
		\grace { \change Staff = "up" \ottava #1 g'4 c,4 \ottava #0 } \change Staff = "violin" e,2\< es\>\)

		aes,,,2\(\p^\markup { \italic pizz. }\fermata
		\grace { \change Staff = "up" b4 } \change Staff = "violin" g2
		fis'2\fermata
		\grace { \change Staff = "up" a4 } \change Staff = "violin" f2\fermata
		\grace { \change Staff = "up" c'4  g } \change Staff = "violin" e2
			^\markup { \italic arco } es\<\)

		aes2\(\!-.\fermata
		\grace { \change Staff = "up" b4 } \change Staff = "violin" g2-.
		fis'2-.\fermata
		\grace { \change Staff = "up" a4 } \change Staff = "violin" f2-.\fermata
		\grace { \change Staff = "up" c'4  g } \change Staff = "violin" e2-.\< es\)
	}
	\bar "||"
	\relative c'' {
		aes,2\(\!\fermata\sp
		\grace { \change Staff = "down" b,4 } \change Staff = "violin" g'2
		fis'2\fermata
		\grace { \change Staff = "down" c,4 a' } \change Staff = "violin" f'2\fermata
		\grace { \change Staff = "down" g,,8 c' } \change Staff = "violin" e'2\< es\!\)

		aes2\(\fermata\sf
		\grace { \change Staff = "down" \ottava #-1 b,,,,8 
			\change Staff = "up" g''' } \change Staff = "violin" g'2
		fis'2\fermata
		\grace { \change Staff = "down" a,,,,,8
			\change Staff = "up" c''' } \change Staff = "violin" f'2\fermata
		\grace { \change Staff = "down" g,,,,,8
			\change Staff = "up" c'''' } \change Staff = "violin" e'2 es\)
	}
	\relative c''''' {
		g1\flageolet\(
		f1\fermata
		\grace { \change Staff = "down" c,,,,,,2 } \change Staff = "violin" e''''''1\)

		g,1\flageolet\(
		f1\fermata
		\grace { \change Staff = "down" c,,,,,2 } \change Staff = "violin" e'''''1\)

		g,1\flageolet\(
		f1\fermata
		\grace { \change Staff = "down" c,,,,2 } \change Staff = "violin" e''''1\)

		g,1\flageolet\(
		f1\fermata
		\grace { \change Staff = "down" c,,,2 } \change Staff = "violin" e'''2 g,2\fermata\)
	}
	\bar "|."

}

\score {
	\new StaffGroup <<
		\new Staff = "violin" {
			\violin
		}

		\new PianoStaff <<
			\new Staff = "up" {
				\clef "treble"
				s1 * 60
			}

			\new Staff = "down" {
				\clef "bass"
				s1 * 60
			}
		>>
	>>
}
