\version "2.18.2"

aRH = {
	\time 3/2
	\clef "treble"
	\relative c'
	{
		\repeat volta 2 {
		s2 		c8[ d e d 	c] s4. 	|
		s2 		c8[ d e d 	c] s4. 	|
		s2 		c8[ d e d 	c] s4. 	|
		s2 		c8[ d e d 	c] s4. 	|
		}

		\repeat volta 2 {
		s2 		c8[ d e d 	c] s4. 	|
		s2 		c8[ d e d 	c] s4. 	|
		s2 		c8[ d e d 	c] s4. 	|
		s2 		c8[ d e d 	c] s4. 	|
		}

		s2 		c8[ d e d 	c] s4. 	|
		s2 		c8[ d e d 	c] s4. 	|
		s2 		c8[ d e d 	c] s4. 	|
		s2 		c8[ d e d 	c] s4. 	|
	}
}


aLH = {
	\time 3/2
	\clef "bass"
	\relative c
	{
		\repeat volta 2 {
		c8 d f a	s2		s8 a f d |
		c8 e g b 	s2		s8 b g e |
		c8 e g b 	s2		s8 b g e |
		c8 e g b 	s2		s8 b g e |
		}

		\repeat volta 2 {
		c8 e g b 	s2		s8 b g e |
		c8 e g b 	s2		s8 b g e |
		c8 e g b 	s2		s8 b g e |
		c8 e g b 	s2		s8 b g e |
		}

		c8 d f a	s2		s8 a f d |
		c8 d f a	s2		s8 a f d |
		c8 d f a	s2		s8 a f d |
		c8 d f a	s2		s8 a f d |
	}
}

bRH = {
	\time 10/8
	\relative c'
	{
		\repeat volta 8 {
		s2 		c8[ d c]	s4. 	|
		s2 		c8[ d c]	s4. 	|
		s2 		c8[ d c]	s4. 	|
		s2 		c8[ d c]	s4. 	|
		}

		\repeat volta 2 {
		s2 		c8[ d c]	s4. 	|
		s2 		c8[ d c]	s4. 	|
		s2 		c8[ d c]	s4. 	|
		s2 		c8[ d c]	s4. 	|
		}

		s2 		c8[ d c]	s4. 	|
		s2 		c8[ d c]	s4. 	|
		s2 		c8[ d c]	s4. 	|
		s2 		c8[ d c]	s4. 	|
	}
}


bLH = {
	\time 10/8
	\relative c
	{
		\repeat volta 8 {
		c8[ d f a]	s4.		a8[ f d]|	
		c8[ e g b] 	s4.		b8[ g e]|
		c8[ e g b] 	s4.		b8[ g e]|
		c8[ e g b] 	s4.		b8[ g e]|
		}

		\repeat volta 2 {
		c8[ e g b] 	s4.		b8[ g e]|
		c8[ e g b] 	s4.		b8[ g e]|
		c8[ e g b] 	s4.		b8[ g e]|
		c8[ e g b] 	s4.		b8[ g e]|
		}

		c8[ d f a]	s4.		a8[ f d]|	
		c8[ d f a]	s4.		a8[ f d]|	
		c8[ d f a]	s4.		a8[ f d]|	
		c8[ d f a]	s4.		a8[ f d]|	
	}
}

aaRH = {
	\time 4/4
	\relative c'
	{
		s2 		c8 s4. 	|
		s2 		c8 s4. 	|
		s2 		c8 s4. 	|
		s2 		c8 s4. 	|
		
		s2 		c8 s4. 	|
		s2 		c8 s4. 	|
		s2 		c8 s4. 	|
		s2 		c8 s4. 	|
		
		s2 		c8 s4. 	|
		s2 		c8 s4. 	|
		s2 		c8 s4. 	|
		s2 		c8 s4. 	|
	}
}


aaLH = {
	\time 4/4
	\relative c
	{
		c8 d f a	s8 a f d |	
		c8 d f a	s8 a f d |	
		c8 d f a	s8 a f d |	
		c8 d f a	s8 a f d |	
		
		c8 e g b	s8 b g e |	
		c8 e g b	s8 b g e |	
		c8 e g b	s8 b g e |	
		c8 e g b	s8 b g e |	
		
		c8 d f a	s8 a f d |	
		c8 d f a	s8 a f d |	
		c8 d f a	s8 a f d |	
		c8 d f a	s8 a f d |	
	}
}

\score
{
	\new PianoStaff
	<<
		\new Staff = "upper"
		{
			\aRH
			\bRH
			\aaRH
		}

		\new Staff = "lower"
		{
			\aLH
			\bLH
			\aaLH
		}
	>>
}


