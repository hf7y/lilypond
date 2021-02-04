\version "2.20.0"
\include "./materials.ily"

timecode = {
	s4
	s1 * 8 s4
	\clef "bass"
	s2. s1 * 8
	s1 * 8 s2.
}
A-up = {
	\clef "treble"
	\ottava #1
	\relative c'''' \mo-one
	\ottava #0
	\relative c''' \mo-two
	\relative c'' \mo-three

	\relative c' \mo-two
	\relative c \mo-one
	\relative c \mo-two

	\relative c \mo-three
	\ottava #-1 \relative c, \mo-two
	\relative c, \mo-four
	\ottava #0
}

A-down = {
	r4
	\ottava #1
	\relative c''' \c-sev 
	\relative c'''' \d-sev 
	\relative c''' \z-sev 
	\relative c''' \v-sev

	\relative c''' \c-sev 
	\relative c'''' \h-sev 
	\relative c'''' \t-sev 
	\relative c''' \k-sev
	
	\relative c'''' \z-sev 
	\relative c''' \w-sev
	\relative c'''' \c-sev
	\relative c''' \p-sev 

	\relative c''' \c-sev 
	\relative c''' \d-sev 
	\relative c''' \z-sev 
	\relative c''' \v-sev

	\ottava #0
	\relative c'' \c-sev 
	\relative c''' \w-sev 
	\relative c'' \e-sev 
	\relative c'' \h-sev
	
	\relative c'' \g-sev 
	\relative c''' \t-sev
	\relative c'' \c-sev 
	\relative c''' \p-sev 

	\relative c'' \i-sev 
	\relative c'' \h-sev
	\relative c' \k-sev 
	\relative c' \t-sev

	\relative c''' \d-sev 
	\relative c'' \w-sev 
	\relative c'' \h-sev
	\relative c'' \g-sev 
	
	\relative c' \t-sev
	\relative c \c-sev 
	\relative c' \p-sev 
	\relative c' \c-sev 

	\relative c \d-sev 
	\relative c' \z-sev 
	\relative c \v-sev
	\relative c' \c-sev 

	\relative c \w-sev 
	\relative c \h-sev
	\relative c' \g-sev 
	\relative c' \t-sev

	\relative c' \c-sev 
	\relative c \p-sev 
	\relative c \c-sev 
	\relative c, \d-sev 

	\relative c \z-sev 
	\relative c \v-sev
	\relative c, \c-sev 
	\relative c' \w-sev 

	\relative c' \e-sev 
	\relative c \h-sev
	\relative c, \g-sev 
	\relative c, \t-sev

	\relative c, \c-sev 
	\relative c \p-sev 
	\relative c, \i-sev 
	\relative c' \h-sev

	\relative c' \z-sev 
	\relative c \v-sev
	\relative c' \c-sev 
	\relative c \w-sev 

	\relative c \h-sev
	\relative c' \g-sev 
	\relative c' \t-sev
	\relative c' \c-sev 

	\relative c \n-sev 
	\relative c \g-sev 
	\relative c, \y-sev 
	\relative c, \r-sev 

	\relative c' \u-sev 
	\relative c \w-sev
	\relative c, \z-sev 
	\relative c, \t-sev

	\ottava #-1
	\relative c,, \q-sev 
	\relative c, \s-sev 
	\relative c,, \y-sev 
	\relative c, \w-sev

	\relative c, \z-sev 
	\relative c \v-sev
	\relative c, \x-sev 
	\relative c,, \w-sev 

	\relative c,\z-sev
	\relative c, \y-sev 
	\relative c,, \t-sev
	\relative c, \w-sev 

	\relative c,, \y-sev 
	\relative c, \w-sev
	\relative c, \z-sev 
	\relative c,, \v-sev

	\relative c,, \w-sev 
	\relative c,, \z-sev 
	\relative c,, \x-sev 
	\relative c, \u-sev 

	\relative c,, \z-sev 
	\relative c,, \v-sev
	\relative c,, \y-sev 
	\relative c,, \w-sev

	\ottava #0
	r4 bes \clef "treble" fis''
}

B-up = {
	\clef "treble"
	\ottava #1
	\relative c'''' \mo-one
	\ottava #0
	\relative c''' \mo-two
	\relative c'' \mo-three

	\relative c' \mo-twelve
	\relative c \mo-eleven
	\relative c \mo-twelve

	\relative c \mo-thirteen
	\ottava #-1 \relative c, \mo-twelve
	\relative c, \mo-fourteen
	r4

	r8
	\relative c,, \z-sev 
	r4
	\relative c,,, \w-sev 
	r8

	\ottava #0 g4.
	\relative c, \z-sev 
	\relative c \x-sev 
	r8

	f8 
	\relative c \x-sev 
	\clef "treble"
	\relative c' \u-sev 
	\voiceOne
	\relative c' \p-sev
	r8

	e'8
	\relative c'' \t-sev 
	r8
	f'''8




}

B-down = {
	r4
	\ottava #1
	\relative c''' \c-sev 
	\relative c'''' \d-sev 
	\relative c''' \z-sev 
	\relative c''' \v-sev

	\relative c''' \c-sev 
	\relative c'''' \h-sev 
	\relative c'''' \t-sev 
	\relative c''' \k-sev
	
	\relative c'''' \z-sev 
	\relative c''' \w-sev
	\relative c'''' \c-sev
	\relative c''' \p-sev 

	\relative c''' \c-sev 
	\relative c''' \d-sev 
	\relative c''' \z-sev 
	\relative c''' \v-sev

	\ottava #0
	\relative c'' \c-sev 
	\relative c''' \w-sev 
	\relative c'' \e-sev 
	\relative c'' \h-sev
	
	\relative c'' \g-sev 
	\relative c''' \t-sev
	\relative c'' \c-sev 
	\relative c''' \p-sev 

	\relative c'' \i-sev 
	\relative c'' \h-sev
	\relative c' \k-sev 
	\relative c' \t-sev

	\relative c''' \d-sev 
	\relative c'' \w-sev 
	\relative c'' \h-sev
	\relative c'' \g-sev 
	
	\relative c' \t-sev
	\relative c \c-sev 
	\relative c' \p-sev 
	\relative c' \c-sev 

	\relative c \d-sev 
	\relative c' \z-sev 
	\relative c \v-sev
	\relative c' \c-sev 

	\relative c \w-sev 
	\relative c \l-sev
	\relative c' \z-sev 
	\relative c' \t-sev

	\relative c' \b-sev 
	\relative c \p-sev 
	\relative c \x-sev 
	\relative c, \o-sev 

	\relative c \z-sev 
	\relative c \v-sev
	\relative c, \n-sev 
	\relative c' \w-sev 

	\relative c' \x-sev 
	\relative c \m-sev
	\relative c, \l-sev 
	\relative c, \t-sev

	\relative c, \c-sev 
	\relative c \p-sev 
	\relative c, \i-sev 
	\relative c' \h-sev

	\relative c' \z-sev 
	\relative c \v-sev
	\relative c' \b-sev 
	\relative c \w-sev 

	\relative c \u-sev
	\relative c' \w-sev 
	\relative c' \t-sev
	\relative c' \x-sev 

	\relative c \z-sev 
	\relative c \g-sev 
	\relative c, \y-sev 
	\relative c, \r-sev 

	\relative c' \u-sev 
	\relative c \w-sev
	\relative c, \z-sev 
	\relative c, \t-sev

	\ottava #-1
	\relative c,, \q-sev 
	\relative c, \s-sev 
	\relative c,, \y-sev 
	\relative c, \w-sev

	\relative c, \z-sev 
	\relative c \v-sev
	\relative c, \x-sev 
	\relative c,, \w-sev 

	\relative c,\z-sev
	\relative c, \y-sev 
	\relative c,, \t-sev
	\relative c, \w-sev 

	\relative c,, \y-sev 
	\relative c, \w-sev
	\relative c, \z-sev 
	\relative c,, \v-sev

	\relative c,, \w-sev 
	\relative c,, \z-sev 
	\relative c,, \x-sev 
	\relative c, \u-sev 

	\relative c,, \z-sev 
	\relative c,, \v-sev
	\relative c,, \y-sev 
	\relative c,, \w-sev

	\relative c, \z-sev 
	\relative c,, \v-sev
	\ottava #0
	\relative c,, \w-sev 
	\relative c \s-sev 

	\relative c, \x-sev 
	\relative c, \u-sev 
	\relative c, \z-sev 
	\relative c, \p-sev

	\relative c,, \v-sev
	\relative c, \t-sev
	\relative c \c-sev
	\change Staff = "up"
	\voiceTwo
	\relative c' \p-sev 

	\relative c' \x-sev 
	\relative c'' \u-sev 
	\relative c' \p-sev 
	\relative c'' \s-sev
}



\score {
	\new PianoStaff <<
		\accidentalStyle Score.dodecaphonic
		\new Staff = "up" {
			\clef "treble"
			\partial 4
			<< \timecode \A-up >>
			<< \timecode \B-up >>
		}
		\new Staff = "down" {
			\clef "treble"
			\partial 4
			<< \timecode \A-down >>
			<< \timecode \B-down >>
		}
	>>
}