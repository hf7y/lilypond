\version "2.22.0"

\header {
	title = "Bài Không Tên Số 50"
	composer = "Vũ Thành An"
	tagline = ""
}

melodyVerse = \relative c'' {
	\partial 8 
	a8 | e4 a8 b8 | c4. cis8 | d4 d8 e | b4 r8
	b8 | gis8 b4 e,8 | d4. 8 | 4 c8 b | e4 r8 \break
	e8 | e'4 c8 e | d4. b8 | c8 gis4 b8 | e,4 r8 
	c8 | d4 d8 b | f'4. 8 | dis4 e8 b'8 | a4 r8 \break
	a8 | d4 8 a | f'4. 8 | d4 8 f | e4 r8
	c8 | a4 e8 a | d,4. 8 | c4 e8 c' | a4 r8 \break
}
melodyBridge = \relative c'' {
}

bassVerse = \chordmode {
	\partial 8 
	r8 | a2:m | r2 | d2:m | g2 |
	e2:7 | d2:m | g2 | c |
	a2:m | d2:m | c4 e:7 | a2 | 
	d2:m | bes2 | b4 e | a2:m |
	d2:m | g:7 | e:7 | c2 | 
	a2:m | d2:m | c4 e4:7 | a4.:m
}

bassBridge = \chordmode {
}

bass = {
	% \bassVerse
	% \bassBridge
	% \bassVerse
}

lyrs = \lyricmode {
	Em bảo: “Anh đi đi”
	Sao anh không đứng lại?
	Em bảo: “Anh đừng đợi”
	Sao anh vội về ngay?

	Lời nói thoảng gió bay
	Đôi mắt huyền đẫm lệ
	Mà sao anh dại thế
	Không nhìn vào mắt em

	Mà sao anh dại thế
	Không nhìn vào mắt em
	Không nhìn vào mắt sầu
	Không nhìn vào mắt sâu?

	Những chuyện buồn qua đi
	Xin anh không nhắc lại
	Em ngu khờ vụng dại
	Anh mơ mộng viễn vông

	Đời sống nghiệt ngã không
	cho chúng mình ấm mộng
	Thì thôi xin gửi sóng
	Đưa tình về cuối sông

	Thì thôi xin gửi sóng
	Đưa tình về cuối sông
	Đưa tình về với mộng
	Đưa tinh vào cõi không
}

#(set-global-staff-size 24)
#(set-default-paper-size '(cons (* 14 in) (* 11 in)))

\layout {
  \context {
    \Staff
    \override VerticalAxisGroup
              .default-staff-staff-spacing
              .basic-distance = #20
  }
}

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
		\time 1,1 2/4
		\new Voice = "melody" {
			\key a \minor
			\melodyVerse \break
			\melodyBridge % \pageBreak
			\melodyVerse
			\bar "|."
		}
		\new Lyrics \lyricsto "melody" { \lyrs }
	>>
}