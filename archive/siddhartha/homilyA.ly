\version "2.24.1"

homilyMusicAI = \relative c'' { 
	b8 c8 \tuplet 3/2 { a8 f8 8 } 8 8 r8 g8 | 
	b8 f8 r4 r4 \tuplet 3/2 { b8 c8 b8 }|
	d8 8 r16 b16 c16 b16 d4 r8 b8 | 
	d8[ b8] e8 8 r4 \tuplet 3/2 { d8 e8 d8 } |
	f4 \tuplet 3/2 { d8 d8 d8 } \grace {e8(} a,4) \tuplet 3/2 { r8 b8 a8 } |
}
homilyWordsAI = \lyricmode { 
	This Sidd -- har -- tha we see through, keeps 
	lea -- ving. He leaves his 
	fa -- ther, the pi -- ous monks, his 
	friend, his busi -- ness. He leaves his
	wife; he leaves his child. He de -- 
}
homilyBrassAI = <<
	\new Voice \relative c'' { 
		\change Staff = "up"
		r2. <a d>4 |
		r4 <a d>( <g c>4) r4 |
		r4 <f bes> 4 r4 <f bes>4  |
		r2 <f c'>4 r4 |
		r2. <f c'>4 |
	}
	\new Voice \relative c' { 
		\change Staff = "down"
		r2. <bes f'>4 |
		r4 <bes e>( <a d>4) r4 |
		r4 <g d'> 4 r4 <a d>4  |
		r2 <g e'>4 r4 |
		r2. <a e'>4 |
	}
>>

homilyMusicAII = \relative c'' {	
	\tupletUp \tuplet 3/2 { d4 a8 } \tuplet 3/2 { d4 a8 } c8 g8 r8 a8 | \tupletNeutral
	\tuplet 3/2 { b8 a8 b8 } \tuplet 3/2 { d8. c16 d8 } \tuplet 3/2 { b8. g16 g8 } r8 b16 16 |
	c4 \tuplet 3/2 { d8 8 b8 } r4 \tuplet 3/2 { b8 8 8 } |
	c16 16 16 g16 \tuplet 5/4 { c16 b16 c16 d16 g,16 } c8 8 \tuplet 3/2 { b8 c8 8 } |
	d8 g,16 b16 c16 g16 b16 16 4 r8 b8 | 
}
homilyWordsAII = \lyricmode {	
	scribes the flash of lea -- ving, of 
	kno -- wing that all is not well with -- in. He can 
	live a -- ny life; his youth of 
	pil -- gri -- mage and vol -- un -- ta -- ry pri -- va -- tion gives him con -- 
	trol of his bo -- dy and his needs. He 
}
homilyBrassAII = \relative c' {	
	r2. <bes f' a d>4 |
	r2. <a d g c>4 |
	r2 <g d' f bes>4 r4 |
	R1 | 
	r2. <a e' f c'>4 |
}

homilyMusicAIII = \relative c'' {
	e8 b16 16 \tuplet 3/2 { e8 d8 e8 } d8 a16 16 \tuplet 3/2 { b8 8 8 } |
	r4 \tuplet 3/2 { a8 b8 a8 } e'16 e16 f16 f16 \tuplet 3/2 { d4 a8 } |
	\tuplet 3/2 { g16 f16 16 16 8 } r16 f16 g16 f16 e'8 a,16 f16 \tuplet 3/2 { a8 b8 a8 } |
	e8 a16 a16 \grace {c8(} f,4) r4 a8 8 |
}
homilyWordsAIII = \lyricmode {
	grows, and then out -- grows each pot he is plan -- ted in. 
	He is suc -- cess -- ful in each task he 
	sets him -- self u -- pon, un -- til e -- ven -- tual -- ly he gets fed 
	up and moves on. So this 
}
homilyBrassAIII = \relative c' {
	R1 |
	<g d' f bes>4 r2. |
	r4 <a e' f c'>4 r2 |
	r2 <g d' f bes>4 r4
}

homilyMusicAIV = \relative c'' {
	c8 8 r16 a16 16 16 \tuplet 5/4 { e'16 16 16 b16 16 } \tuplet 3/2 { d8 8 a8 } |
	c8[ b8] c8 f,8 r8 8 \tuplet 3/2 { c'8 d8 c8 } |
	b8 f16 16 r8 8 \tuplet 3/2 { d'8 e8 d8 } \tuplet 3/2 { c8 a8 8 } |
	d8 b16 16 c8 a16 16 \tuplet 3/2 { e'8 d8 c8 } \tuplet 3/2 { r8 a8 b8 } |
	\tuplet 3/2 { b8 g8 8 } r4 r4 r8 g8 |
}
homilyWordsAIV = \lyricmode {
	fi -- gure, con -- si -- dered ex -- cel -- lent and im -- pres -- sive by
	all who know him, re -- fu -- ses to 
	bask in it, re -- fu -- ses stag -- na -- tion and 
	wills him -- self towards that e -- lu -- sive thing called en -- 
	ligh -- ten -- ment. He 
}
homilyBrassAIV = \relative c' {
	r4 <bes f' a d>4 r2 |
	r2 <a e' f c'>4 r4 |
	r4 <bes f' a d>4 r2 |
	r2. <c f a d>4 |
	r4 <d a' c e>2 r4 |
}

homilyMusicAV = \relative c'' {
	\tuplet 3/2 { c8 b8 8 } \tuplet 3/2 { r8 a8 8 } \tuplet 3/2 { b8 g8 8 } r8 g8 |
	\tuplet 3/2 { c8 a8 8 } \tuplet 3/2 { b8 g8 8 } \tuplet 3/2 { r8 g8 8 } f8 8 |
	r8 f8 d'16 16 a16 16 \tuplet 3/2 { c8 8 8 } b8 g8 |
}
homilyWordsAV = \lyricmode {
	finds him -- self with a fer -- ry -- man, a 
	back and forth bus dri -- ver, on the ri -- ver. 
	The ri -- ver that is al -- ways and ne -- ver. 
}
homilyBrassAV = \relative c' {
	r4 <bes f' a d>4 r4 <g d' f bes>4 |
	r2 <a e' f c'>4 r4 |
	<g d' f bes>4 r4 r2 |
}

homilyMusicAVI = \relative c'' {	
	r8 g8 d'16 16 16 16 r8 g,8 d'16 16 a16 16 |
	\tuplet 3/2 { b8 8 8 } r8 a8 c8 16 b16 \tuplet 3/2 { e8 8 d8 } |
	r16 b16 d16 16 c8 8 b4 r4 |
	r8 b8 d8[ 8] 8 8 c8[ a8] |
	r4 b16 g16 c16 a16 b16 g16 r8 r4 |
}
homilyWordsAVI = \lyricmode {
	Per -- pe -- tu -- al -- ly the wa -- ter fills the 
	ri -- ver -- bed and yet it will	ne -- ver take 
	the same ex -- act shape twice. Con -- 
	si -- sten -- cy in one frame, 
	cha -- os in a se -- cond. 
}
homilyBrassAVI = <<
	\new Voice \relative c'' {	
		\change Staff = "up"
		<a d>4 r4 <g c>4 r4 |
		r4 <f bes>4 r2 |
		<f bes>4 r4 r4 <f b!>4~ |
		<f b!>4 r4 r2 |
		<f c'>4 r4 r4 <f c'>4 |
	}
	\new Voice {
		\change Staff = "down"
		<bes f'>4 r4 <a d>4 r4 |
		r4 <g d'>4 r2 |
		<g c>4 r4 r4 <g d'>4~ |
		<g d'>4 r4 r2 |
		<g e'>4 r4 r4 <a d>4 |
	}
>>


homilyMusicA = {
	\homilyMusicAI
	\homilyMusicAII
	\homilyMusicAIII
	\homilyMusicAIV
	\homilyMusicAV
	\homilyMusicAVI
}
homilyBrassA = {
	\homilyBrassAI
	\homilyBrassAII
	\homilyBrassAIII
	\homilyBrassAIV
	\homilyBrassAV
	\homilyBrassAVI 
}
homilyWordsA = {
	\homilyWordsAI
	\homilyWordsAII
	\homilyWordsAIII
	\homilyWordsAIV
	\homilyWordsAV
	\homilyWordsAVI 
}