\version "2.19.80"
\paper {
	#(set-paper-size "letter")
	top-margin = 1\in
	left-margin = 1\in
	right-margin = 1\in
	bottom-margin = 1\in
}

\header {
	title = "Improvization for Violin and Piano"
	composer = "Z. V. Pine"
	tagline = ""
}

violin = {
	\set Score.timing = ##f
	 \relative c''' {
		aes1~\f->\< aes\fermata
		g1\!~ g\>
		fis1\p\! f~ f\fermata
		e1~ e
		\bar ""

		g f~ f\fermata  e\< \bar ""
		g\!\sp f~ f\fermata  e\f\< \bar ""
		g\!\sp f~ f\fermata  e~ e es~\< es\! \bar ""

		aes!1~\f->\< aes\fermata
		g1\!\sp~ g\>
		fis1\fermata\! f~^\markup { \italic pizz. } f\fermata 
		e1~^\markup { \italic pizz. }  e es\<^\markup { \italic arco }
		\bar "" 

		\ottava #1
		aes'!1~\f->\!\< aes~ aes\fermata
		g1\!\sp~ g\>
		fis1\fermata\! f~^\markup { \italic pizz. } f\fermata 
		e1~^\markup { \italic pizz. } e es\>^\markup { \italic arco }
		\bar ""

		\ottava #0
		aes,\!\fermata^\markup { \italic { pizz.}  } 
		g fis\fermata f\fermata e es

		\bar ""
		aes,\pp\fermata g fis\fermata f e es^\markup { \italic arco }\>
		\bar ""

		\repeat tremolo 32 g,32\!^\markup { \italic { sul pont. } }\spp
		\repeat tremolo 32 f'32
		\repeat tremolo 32 e32 \bar ""
		\repeat tremolo 32 g32\p
		\repeat tremolo 32 f'32
		\repeat tremolo 32 e32 \bar ""

		\repeat tremolo 32 g32\f
		\ottava #1
		\repeat tremolo 32 f'32
		\repeat tremolo 32 e32 \bar ""

		\ottava #0
		aes,!1~\ff\fermata aes~ aes
		g~ g
		fis~\fermata
		f~ f\fermata
		e~ e~ e es~ es\> r4\!

		\bar ""

		g'1\flageolet\p^\markup { \italic ritardando }
		f\fermata
		e

		g,\flageolet
		f\fermata
		e

		\ottava #0
		g,\flageolet\pp
		f\fermata
		e

		g,\flageolet
		f\fermata
		e
		\bar "|."
	}
}

basso = {
	\relative c, {
		\new CueVoice {
			\slurDown
			g4( b g' b g' b \change Staff = "up" g' b )
			\stemDown
			s1 * 4 s2... c16 s1 s1
			s1 * 2 s2... c,16 s1
			\change Staff = "down"
			s1 * 2 s2... c,16 s1
			s1 * 2 s2... c,16 s1 s1 s1 s1

			s4 r4 g'( b g' b \change Staff = "up" g' b )
			s1 s1 s2.. a16 c
			s1 s2.. g16 c s1 s1 s1

			\change Staff = "down"
			s4 r4 g,,,( b g' b g' b \change Staff = "up" g' b g' b )
			s1 s1 s2. a,16 c a'16 c
			s1 s2. g,16 c g'16 c s1 s1 s1

			s2. b,4 s1 s2.. a16 c s2.. g16 c
			\stemUp
			s1 s1 s2 g'4 b, s1 s2. s16 c'16 a c, 
			s2. g''16 c, g c, s1 s1 
	
			\change Staff = "down"
			\stemDown
			r8 \repeat unfold 7 { b,,,16[ g'] }			
			r8 \repeat unfold 7 { c,16[ a'] }			
			r8 \repeat unfold 7 { c,16[ g'] }			
			r16 \repeat unfold 5 { b,16[ g' b] }			
			r16 \repeat unfold 5 { c,16[ a' c] }			
			r16 \repeat unfold 5 { c,16[ g' c] }
			r4 \repeat unfold 3 { b,16 [ g' b g' ] }
			r4 \repeat unfold 3 { c,,16 [ a' c a' ] }
			r4 \repeat unfold 3 { c,,16 [ g' c g' ] }

			s4 r4 \ottava #-1 b,,, g' b \ottava #0 g' b g' b \change Staff = "up"  g' b g'
			s1 \bar "" s1 
			\change Staff = "down"
			s4. r4 a,,, 16 c a' c \change Staff = "up"   a' c
			\change Staff = "down"
			s1 s4. \ottava #-1 g,,,,16 c g' \ottava #0 c g' c \change Staff = "up" g' c  g' c
			s1 s1 s1 s1 s1 s4
			\change Staff = "down"
			\ottava #-1
			s1 s2... c,,,,16 s1
			s1 s2... c16 s1
			s1 s2... c16 s1
			s1 s2... c16 s1
			\ottava #0
		}
	}
}

\score {
	\new StaffGroup <<
		\set Score.proportionalNotationDuration = #(ly:make-moment 1/4)
		\new Staff = "violin" {
			\violin
		}

		\new PianoStaff <<
			\new Staff = "up" {
				s1 * 91 s4
			}
			\new Staff = "down" {
				\clef "bass"
				\basso
			}
		>>
	>>
}
