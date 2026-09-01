\version "2.22.0"

\header {
	title = "Bốn Mùa Thay Lá"
	composer = "Trịnh Công Sơn"
	tagline = ""
}

melodyVerse = \relative c'' {
		c8 a d |
	f4. d8 a d |
	e4. c8 a b |
	e8 d c b c a |
	b4.

		a8 e a |
	c4. a8 f a |
	d4. a8 b c |
	e8 d c b c a |
	a4.\fermata
}
melodyBridge = \relative c'' {
		a8 a g |
	g4. g8 g f | 
	f4. e8 b' c |
	d8 f4.~ f8 e |
	e4.

		e8 a,4 |
	d4. d8 g,4 |
	c4. e,8 a b |
	c4 e4 d4 |
	b4. 
}

bassVerse = \chordmode {
	r4. |
	d2. | a,2. | f2. | e2. |
	a,2. | d2. | e2. | a,4.
}

bassBridge = \chordmode {
	r4. |
	g2. | f2. | d2. | a,2. |
	d2. | c2. | f2. | e4. 
}

bass = {
	\bassVerse
	\bassBridge
	\bassVerse
}

lyrs = \lyricmode {
Bốn mùa như gió
bốn mùa như mây.
Những dòng sông nối đôi tay
liền với biển khơi.
Đêm chờ ánh sáng,
mưa đòi cơn nắng,
mặt trời lấp lánh trên cao
vừa xa vừa gần.

Con sông là thuyền,
mây xa là buồm,
từng giọt sương thu hết mênh mông.
Những giọt mưa,
những nụ hoa,
hẹn hò gặp nhau trước sân nhà.

Không hẹn mà đến,
không chờ mà đi,
bốn mùa thay lá
thay hoa thay mãi đời ta.
Bên trời xanh mãi
những nụ mầm mới,
để lại trong cõi thiên thu
hình dáng nụ cười.
}

#(set-global-staff-size 24)
\score {
  \layout {
    \context {
      \Score
      % proportionalNotationDuration = #(ly:make-moment 1/20)
      % \override SpacingSpanner.uniform-stretching = ##t
			\autoBeamOff
    }
  }
	<<
		\new ChordNames {
			\set noChordSymbol = ""
			\bassVerse
			\bassBridge
			\bassVerse
		}
		\time 1,1,1 3/4
		\new Voice = "melody" {
			\partial 4.
			\melodyVerse \break
			\melodyBridge \pageBreak
			\melodyVerse
			\bar "|."
		}
		\new Lyrics \lyricsto "melody" { \lyrs }
	>>
}