\version "2.24.0"

\header {
  title = "Electric Feel"
  composer = "MGMT"
  tagline="zvp"
}

tubaSim = {
	\tweak direction #DOWN
	\tweak Y-offset #-6
	\tweak X-offset #1
	\textMark \markup { \small \musicglyph "clefs.F_change" \lower #1 \italic " simile" }
}

trumpetI = \relative c' {
	\time 6/4
	\repeat volta 4 {
		<<
			% \volta 3 { es4 es8 f f g bes g f g es f | }
			\volta 1,2,4 { es4 es8 f g bes f g es f c es | }
		>>
		f4 f8 es g f es f c es bes c |
	}
}

tubaI = \relative c {
	\time 6/4
	\repeat volta 4 {
		<<
			\volta 1,2,4 { c8 8 r c g4-. aes2. | }
			% \volta 3 { c8 8 r c g4-. aes2. | }
		>>
		bes8 8 c8 8 g4-. aes2 r8 bes16 b |
	}
}

trumpetA = \relative c' {
	\repeat volta 2 {
		bes'8. 16 aes8. 16 g8 8 8( f) r4 r |
		f8 g f es f g es( c) r4 r |
		bes'16 8 16 aes8 8 g8 8 8( f) r4 r8 es8 |
		\alternative {
			{ f8 g f es f es es( c) r4 r | }
			{ 
				\time 4/4
				f8 g f es f es es( c)|
			}
		}
	}
}

tubaA = \relative c {
	\repeat volta 2 {
		\volta #'() {
			\tubaSim
			R1. 
			R1.
			R1. 
		}
		\volta 1 \unfolded {
			c8 8 r c g4-. aes2. |
			bes8 8 c8 8 g4-. aes2 r8 bes16 b |
			c8 8 r c g4-. aes2. |
		}
		\alternative {
			\volta 1 <<
				\volta #'() { s1. | }
				\volta 1 { bes8 8 c8 8 g4-. aes2 r8 bes16 b | }
			>>
			\volta 2 {
				\time 4/4
				bes8 8 c8 8 g4-. aes4 |
			}
		}
	}
}

trumpetB = \relative c'' {
	R1 | r2. r16 es16 es8 |
	\time 6/4
	\repeat volta 2 {
		<g es>4 4  r4 r2. |
		bes8 8 aes bes16 aes g8 g g( f) r4 r |
		<g es>8 <aes d,> <g es>4 r4 r2. |
		es8 d16 es r16 c es f g8 es c( bes) r4 r |
	}
}

tubaB = \relative c {
	R1 | r2 r4 r8 bes16 b |
	\time 6/4 
	\repeat volta 2 {		
		\volta #'() {
			\tubaSim
			R1. * 4 
		}
		\volta 1,2 \unfolded {
			\repeat unfold 2 {
				c8 8 r c g4-. aes2. |
				bes8 8 c8 8 g4-. aes2 r8 bes16 b |
			}
		}
	}
}

trumpetC = \relative c'' {
	\time 4/4
	\repeat volta 4 {
		<c g es>4\! <bes f d>2.~ |
		\alternative {
			\volta 1,2,3 {
				<< { 1 | }
				   { s4\< s2 s4\! } >>
			}
			\volta 4 {
				\repeat unfold 3 <bes aes es c>4:16 4
			}
		}
	}
}

tubaC = \relative c {
	\time 4/4
	\repeat volta 4 {
		c4 bes2. |
		\alternative {
			\volta 1,2,3 {
				f16 g bes8 f16 g bes8 c,16 d f8 c16 bes8. | 
			}
			\volta 4 {
				\repeat unfold 3 bes4:16 4 
			}
		}
	}
}

trumpetD = \relative c'' {
	\time 6/4
	\partial 4.
		<bes f>8 <c g> <bes g> |
	\repeat volta 2 {
		<es bes>8( <c g>) <c g>4 r4 r4 r8 <bes f>8 <c g> <g es>
		\alternative {
			{ <bes f>4 <c g> r4 r4 r8 <bes f>8 <c g> <bes g> | }
			{ 
				\time 4/4 
				<bes f>4 <c g>2 aes4\fermata \bar "|." }
		}
	}
	
}

tubaD = \relative c {
	\time 6/4
	\partial 4.
		r8 r8 bes16 b |	
	\repeat volta 2 {
		c8 8 r c g4-. aes2. |
		\alternative {
			{ bes8 8 c8 8 g4-. aes2 r8 bes16 b | }
			{ 
				\time 4/4 
				bes8 8 c8 8 g4-. es4\fermata \bar "|." }
		}
	}
}

trumpet = {
	\key c \minor
	\trumpetI
	\trumpetA
	\trumpetB
	\trumpetC
	\trumpetD
}

tuba = {
	\key c \minor
	\tubaI
	\tubaA
	\tubaB
	\tubaC
	\tubaD
}

cue-pad = #1
cue-offset = #-9

global = {
	\tempo 4=120
	\mark #9
	\time 6/4
	s1. * 2
	\mark #1
	s1. * 4
	s1 * 1
	\tweak direction #DOWN
	\textMark \markup \italic { "bass drum solo" }
	s1 * 2
	\break
	\mark \default
	s1. * 4
	\break
	\tweak direction #DOWN
	\tweak Y-offset #cue-offset
	\textEndMark
	\markup \fill-line {
		\box \pad-markup #cue-pad \column {
			\line {  "1st time: " \bold "I" "× 2, then" \bold "A" "&" \bold "B" }
			\null
			\line {  "2nd time: " \bold "C" }
		}
	}

	\mark \default
	s1 * 3
	\tweak direction #DOWN
	\tweak Y-offset #cue-offset
	\textEndMark \markup \fill-line {
		\box \pad-markup #cue-pad \column {
			\line { \bold "I" "× 4, then" \bold "D" }
		}
	}

	s4.
	\mark \default
}

\layout {
	\context {
		\Score
		\numericTimeSignature
		rehearsalMarkFormatter = #format-mark-box-alphabet
       % \override RehearsalMark.font-name = #"Bitstream Charter"
       \override RehearsalMark.padding = #4
       \override RehearsalMark.X-offset = #-2
       \override RehearsalMark.font-size = #7
       \override TimeSignature.break-visibility = ##(#f #t #t)
	}
	\context {
		\Staff
		\RemoveAllEmptyStaves
	}
}

\paper {
  system-system-spacing =
    #'((basic-distance . 12)
       (minimum-distance . 0)
       (padding . 4.7)
       (stretchability . 12))
  markup-system-spacing =
    #'((basic-distance . 0)
       (minimum-distance . 0)
       (padding . 0)
       (stretchability . 12))
}

\score {
	\new StaffGroup <<
		\new Staff {
			\clef "treble"
			\transpose c cis
			<< \global \trumpet >>
		}
		\new Staff {
			\clef "bass"
			\transpose c cis
			\tuba
		}
	>>
}