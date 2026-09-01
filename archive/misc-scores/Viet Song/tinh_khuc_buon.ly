\version "2.22.0"

\header {
	title = "Tình Khúc Buồn"
	composer = "Ngô Thụy Miên"
	tagline = ""
}

melodyVerse = \relative c'' {
	\partial 4.
	a8 \tuplet 3/2 {a8 e e} | 
	\repeat volta 2 {
		e4. e8 \tuplet 3/2 {a d, d} | \break
		d4. a'8 \tuplet 3/2 {a e e} | e4. e8 \tuplet 3/2 {a d, d} | d4. d8 \tuplet 3/2 {c b a} | \break
		c4. b8 \tuplet 3/2 {b f' e} | 
		\alternative {
			{ e4. b8 \tuplet 3/2 {b f' e} | e2.~ | e4 r8 a8 \tuplet 3/2 {a e e} | }
			{ e2. | a,2.~ | a4 r8 e'8 e16 f' f e \bar "||" }
		}
	}
}
melodyBridge = \relative c'' {
}

bassVerse = \chordmode {
	\partial 2
	% r8 | a2:m | r2 | d2:m | g2 |
	% e2:7 | d2:m | g2 | c |
	% a2:m | d2:m | c4 e:7 | a2 | 
	% d2:m | bes2 | b4 e | a2:m |
	% d2:m | g:7 | e:7 | c2 | 
	% a2:m | d2:m | c4 e4:7 | a4.:m
}

bassBridge = \chordmode {
}

bass = {
	% \bassVerse
	% \bassBridge
	% \bassVerse
}

lyrs_pickup = \lyricmode {
	Em như một nụ 
}

lyrs_stanz_one = \lyricmode {
	hồng cầu mong chẳng lạnh lùng Phần mềm Kinh doanh & Sản xuất
	Em như một ngày mộng, mà ta hằng ngại ngùng
	Sẽ ru ta niềm nhớ, một ngày thoáng mây đưa
	Chuyện tình đã như mơ. Em như giọt rượu 
}

lyrs_stanz_two = \lyricmode {
	nồng dìu ta vào cuộc mộng
	Em như vạt lụa đào, quyện ta lời thì thào
	Sẽ qua đi ngày tháng tình rồi cũng xa xưa. Buồn.
	Cuộc tình ngỡ đã xa
}

lyrs_stanz_chorus = \lyricmode {
	xưa đã xanh xao tự thuở nào
	Chợt người đến với tim ta xoá tan đi một mảnh đời
	Cuộc tình quí giá mong manh có chơi vơi ngược giòng đời
	Nghìn trùng dòng sông có vui
	Ôi sao người miệt mài, ngày vui nào còn dài
	Ta ưu phiền từng ngày vội chôn cuộc tình gầy


Chết đi bao lời nói rừng nào có sa mưa
Tình nào sẽ như thơ
Sao chưa gặp một lần mà nghe tình thật gần
Xin cho được một lần gọi tên người thì thầm
Có qua đi ngày tháng trả lại thoáng mây bay. Buồn.
}

#(set-global-staff-size 24)
% #(set-default-paper-size '(cons (* 14 in) (* 11 in)))

\layout {
  \context {
    \Staff
    \override VerticalAxisGroup
              .default-staff-staff-spacing
              .basic-distance = #15
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
		\time 1,1 3/4
		\new Voice = "melody" {
			\key a \minor
			\melodyVerse % \break
			\melodyBridge % \pageBreak
			% \melodyVerse
			\bar "|."
		}
		\new Lyrics \lyricsto "melody" { \lyrs }
	>>
}