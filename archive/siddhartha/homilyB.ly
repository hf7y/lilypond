\version "2.24.1"

homilyMusicBI = \relative c'' { 
	b8 c8 b b 8 8 8 8 g8 | 
	b8. 16 8 8 r4 8 8 |
	d8 8 8 c16 b16 d8 8 r16 16 8 | 
	16 16 16 16 \tuplet 3/2 { d8 e8 d8 } 16 16 16 16 r8 16 16 |
	16 16 16 16 16 16 16 16 \tuplet 3/2 { 8 4 } \tuplet 3/2 { r8 8 8 } |
}
homilyWordsBI = \lyricmode { 
	Thus we learn from this man’s jour -- ney
	not to sell out, not to
	cheat our -- selves of our feel -- ings, to keep
	go -- ing in -- to un -- ex -- plored ter -- ri -- to -- ry, to ap --
	pre -- ci -- ate this ter -- ri -- fy -- ing gl -- ory that it 
}
homilyBrassBI = <<
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

homilyMusicBII = \relative c'' {	
	8 16 16 16 16 8 4 \tuplet 3/2 { r8 8 8 } |
	8 8 4 r4 r8 8 |
	8 16 16 8 16 16 8 8 r8 8 
	\tuplet 3/2 { 8 8 8 } r8 8 8 8 16 8 16 |
	4 r8 8 8[ 8] 8[ 8]|
}
homilyWordsBII = \lyricmode {	
	is to ex -- pe -- ri -- ence life through a 
	hu -- man lens. And 
	that’s on -- ly some of the sto -- ry… The
	o -- ther some is how he can -- not con --
	nect, he leaves and leaves and 
}
homilyBrassBII = \relative c' {	
	r2. <bes f' a d>4 |
	r2. <a d g c>4 |
	r2 <g d' f bes>4 r4 |
	R1 | 
	r2. <a e' f c'>4 |
}

homilyMusicBIII = \relative c'' {
	8 8 16 16 16 16 8 8 16 16 16 16 |
	8 8 \tuplet 3/2 { r8 8 8 } 4 r8 8 |
	\tuplet 3/2 { 8 8 8 } r4 4 r8 8 |
	4 r4 r4 \tuplet 3/2 { 8 8 8 } |
}
homilyWordsBIII = \lyricmode {
	leaves, not re -- a -- li -- zing quite the im -- pact it is
	lea -- ving on his friend, his 
	fa -- mi -- ly, wife, his 
	son. In the no --
}
homilyBrassBIII = \relative c' {
	R1 |
	<g d' f bes>4 r2. |
	r4 <a e' f c'>4 r2 |
	r2 <g d' f bes>4 r4
}

homilyMusicBIV = \relative c'' {
	c8 8 r8 8 8 8 8 8 |
	\tuplet 3/2 { 8 8 8 } 4 \tuplet 3/2 { 8 8 8 } \tuplet 3/2 { 4 8 }
	\tuplet 3/2 { 8 8 8 } r8 8 8 8 \tuplet 3/2 { r8 8 8 }
	4 r4 r4 8 8
	16 16 8 \tuplet 3/2 { r8 8 8 } 8 8 \tuplet 3/2 { 8 8 8 } |
}
homilyWordsBIV = \lyricmode {
	vel -- la, his fi -- nal strug -- gle 
	comes when his wife sud -- den -- ly dies and
	he is left to take care of his 
	son. He seeks 
	ear -- nest -- ly to im -- part his hard earned per --
}
homilyBrassBIV = \relative c' {
	r4 <bes f' a d>4 r2 |
	r2 <a e' f c'>4 r4 |
	r4 <bes f' a d>4 r2 |
	r2. <c f a d>4 |
	r4 <d a' c e>2 r4 |
}

homilyMusicBV = \relative c'' {
	8 8 8 8 4 r8 8 |
	8 8 8 8 4 \tuplet 3/2 { 8 8 8 } |
	4 \tuplet 3/2 { 8 8 8 } 4 8 8 |
}
homilyWordsBV = \lyricmode {
	spec -- tives on his son. His 
	son does not en -- joy li -- ving the 
	old fer -- ry -- men’s life, be -- comes
}
homilyBrassBV = \relative c' {
	r4 <bes f' a d>4 r4 <g d' f bes>4 |
	r2 <a e' f c'>4 r4 |
	<g d' f bes>4 r4 r2 |
}

homilyMusicBVI = \relative c'' {	
	\tuplet 3/2 { 8 8 8 } \tuplet 3/2 { r4 8 } 8 8 8 8 |
	\tuplet 3/2 { b8 8 8 } 16 16 16 16 8 8 8 8 |
	r8 8 4 4 \tuplet 3/2 { r8 8 8 }
	4 4 8 16 16 8 16 16 |
	8 16 16 16 8. 8 8 8 8 |
	8 8 8 8 4 r4 |
}
homilyWordsBVI = \lyricmode {
	pe -- tu -- lant. Sidd -- har -- tha meets this 
	vi -- o -- lent cla -- mo -- ring with calm per -- spec -- tive 
	and wise words. Ta -- king 
	all right steps for him -- self in re -- 
	sponse to the gro -- wing an -- ger and fru -- 
	stra -- tion of his son.
}
homilyBrassBVI = <<
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


homilyMusicB = {
	\homilyMusicBI
	\homilyMusicBII
	\homilyMusicBIII
	\homilyMusicBIV
	\homilyMusicBV
	\homilyMusicBVI
}
homilyBrassB = {
	\homilyBrassBI
	\homilyBrassBII
	\homilyBrassBIII
	\homilyBrassBIV
	\homilyBrassBV
	\homilyBrassBVI 
}
homilyWordsB = {
	\homilyWordsBI
	\homilyWordsBII
	\homilyWordsBIII
	\homilyWordsBIV
	\homilyWordsBV
	\homilyWordsBVI 
}