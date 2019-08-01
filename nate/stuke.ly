\version "2.19.61"
i = <<
	\new Voice {
		s1\pp | s | \mark \markup { x3 } \bar ":|." s | s |
			\bar ".|:" s | s | 
			\once \override Score.RehearsalMark.break-visibility = #end-of-line-visible
			\mark \markup { x3 } \bar ":|." 
		s | s | \bar ".|:" s | s | 
			\mark \markup { x4 } \bar ":|."	s | s | 
		s | s | \bar ":|." s | s | s | s | \bar ":|." 
		s | s | s | s | s | s | 
		s | s | 
	}
	\new Voice \relative c''' {
		\voiceOne
		s1 * 18 |
		ges1 g | aes~ aes | ges1 g | 
		aes des2 ces |

	}
	\new Voice \relative c'' {
		\change Staff = "up"
		\voiceOne
		s1 s | s s | s s |
		s s | s s | s  s |
		s d | es e | des d |
		es e | des d | es e |
	}

	\new Voice \relative c'' {
		\change Staff = "up"
		\voiceThree
		s1 s | s s | s s | s s | s s |
		\repeat unfold 4 { bes1~ bes | aes~ aes | }
	}
	
	\new Voice \relative c'' {
		\change Staff = "up"
		\voiceFour
		\key des \major
		ges1 | f
		\repeat unfold 8 { ges1 | f | }
	}

	\new Voice \relative c' {
		\change Staff = "up"
		\voiceTwo
		s1 s s s s s |
		\repeat unfold 10 { \stemDown \tieDown des2 es2 | d2 des~ }
	}
	\new Voice \relative c' {
		\change Staff = "down"
		\voiceOne
		s1 | s1 | 
		s1 | s2 \stemUp \tieUp aes2~ |
		\repeat unfold 8 { aes2 bes2~ | bes aes~ | }
		aes2 bes2~ | bes2 
		
	}

	%Bass Staff
	\new Voice \relative c {
		\change Staff = "down"
		\key des \major
		\voiceTwo
		des1\sustainOn | d
		\repeat unfold 6 { des1	| d | }
		s1 | s | s | s |
		s | s | s | s2 \oneVoice r2 | R1 | R1 |
		R1 | << { R1 } { s2...^\< s16\! } >>

	}
>>
iChords = <<
	\new Voice \relative c''' {
		\change Staff = "up"
		\voiceOne
		%chords
		< bes ges es bes >1\f
		< bes g d bes >
		< bes aes des, aes >
		< bes aes d, aes >
%		\break
		< bes ges es bes >
		< bes g d bes >
		< des aes des, >\>
		< ces aes d, >
		\tieUp
		< bes ges es >\!~
		< bes ges es >
	}

	\new Voice \relative c' {
		\change Staff = "up"
		\voiceOne
		< des ges >1
		< d f >
		< es ges >
		< d f >

		< des ges >
		< d f >
		< es ges >
		< d f >
		\tieDown < des ges >~
		< des ges >
	}

	\new Voice \relative c {
		\change Staff = "down"
		< des aes'  >1
		< des bes'  >
		< des aes'  >
		< b bes'  >

		< bes aes'  >
		< bes b'  >
		< aes aes'  >
		< g bes'  >
		< ges aes'  >~
		<< { < ges aes'  > } { s2... s16 \sustainOff } >>
	}
>>

iiOne = { <<
	%Treble Staff RH
	\new Voice \relative c' {
		\change Staff = "up"
		R1 | 

		r4 < fis gis>\pp 
			 < eis ais>4 < fis gis> | 
			\repeat volta 1 { \repeat unfold 2 { < eis ais>4 < fis gis> }} |
		\repeat volta 1 { \repeat unfold 2 { < eis ais>4 < fis gis> }} |
		\repeat volta 1 { \repeat unfold 2 { \tuplet 3/2 { < fis ais >4 eis gis }}} |
		\repeat volta 1 { \repeat unfold 2 { ais8 fis eis gis  }} |
		\time 2/4 \repeat volta 1 { \tuplet 3/2 { ais8 eis gis fis eis gis }} |
		\repeat volta 1 { \repeat tremolo 2 { ais16 gis fis eis }} |
		\repeat volta 1 { \repeat tremolo 4 { ais32 gis fis eis }} |
		\time 4/4 \repeat tremolo 4 { ais32 gis fis eis } 
			<< { \repeat tremolo 2 { ais16 gis fis eis } } { s4... s32^\coda} >> |
	}
	%Treble Staff LH
	\new Voice \relative c'{
		\change Staff = "down"
		R1
		\override TextSpanner.bound-details.left.text = "rit."
		
		R1 | \repeat volta 1 { R1 } | 
		\repeat volta 1 { dis4\p cis'4  dis, cis'} |
		\repeat volta 1 { \repeat unfold 2 { dis,4 cis'4 }} |
		\repeat volta 1 { \repeat unfold 2 { dis,4 cis'4 }} |
		\repeat volta 1 { \repeat tremolo 2 { dis,8 cis'8 }} |
		\repeat volta 1 { \repeat tremolo 4 { dis,16 cis' }} |
		\repeat volta 1 { \repeat tremolo 8 { dis,32 cis' }} |
		\repeat tremolo 8 { dis,32^\startTextSpan cis' } 
			\repeat tremolo 4 { dis,16 cis'\stopTextSpan  } | |
	}

	%Bass Staff
	\new Voice {
		\change Staff = "pedale"
		fis,1->\sustainOn^\f~

		\repeat unfold 5 { fis,1~ }
		\repeat unfold 3 { fis,2~ }
		<< { fis,1 } { s2.. s16. \sustainOff s32_\markup { \italic "D.C."}
			_\markup { \tiny "1st time only"} } >>
	}
>>
	\bar "||"
}

iiFour = <<
	%Treble Staff RH
	\new Voice \relative c' {
		\change Staff = "up"
		\time 3/4 r2. | 
		\repeat volta 1 { r2. } |
		\repeat volta 1 { fis4.\mp gis4. } |
		\repeat volta 1 { < f b > gis } |
		\repeat volta 1 { < f b > gis } |
		\repeat volta 1 { r4. gis } |
		gis2. | gis2. 

	}

	%Treble Staff LH
	\new Voice \relative c' {
		\change Staff = "down"
		r4 ais'4\p cis | 
		\repeat volta 1 { cis, ais' cis } |
		\repeat volta 1 { cis, ais' cis } |
		\repeat volta 1 { d, ais' cis } |
		\repeat volta 1 { e, ais cis } |
		\override TextSpanner.bound-details.left.text = "rit."
		\repeat volta 1 { d,\startTextSpan ais' cis } |
		ais4 r cis | r cis r\stopTextSpan |
	}

	%Bass Staff
	\new Voice {
		\change Staff = "pedale"
		b,2.~\sustainOn\f
		\repeat unfold 6 { b,2.~ } 
		<< { b,2. } { s2 s32 s\sustainOff s_\markup { \italic "D.C. al Coda" } } >> 
	}
>>

iiFive = << 
	\mark \markup { \musicglyph #"scripts.coda" }
	%Treble Staff RH
	\new Voice \relative c' {
		\change Staff = "up"
		\key c \major
		R1 |
		< ces' bes aes g f >:32\arpeggio\ff
		\repeat volta 1 {\repeat unfold 4 { < ces bes aes g f >:32\arpeggio | }}
	}

	%Treble Staff LH
	\new Voice \relative c' {
		\change Staff = "down"
		\key c \major
		R1 | R1 |
		\repeat volta 1 { < e e' >->\ff | < d d' >-> | < cis cis'>-> | < d d' >-> | }
	}

	%Bass Staff
	\new Voice {
		\change Staff = "pedale"
		\key c \major
		cis1~\ff\sustainOn | \repeat unfold 4 { cis1~ } | 
		<< { cis1 } { s2... s16\sustainOff} >>
	}
>>

iiCoda = <<
	%Treble Staff RH
	\new Voice \relative c' {
		\change Staff = "up"
		R1 | R1 | R1 | R1 |
		\repeat volta 1 {< d gis b >1\arpeggio\mf | }
		\repeat volta 1 { \repeat unfold 2 { < d b' >4 < fis g > } } |
		\repeat volta 1 {  \tuplet 3/2 { < d b' >4 < fis g > < d b' > } 
			\tuplet 3/2 { < fis g > < d b' > < fis g >  } } |
		< d f gis b >1:8\arpeggio |

		\key fis \major
		<< { \repeat volta 1 { \repeat unfold 2 { < eis ais>4 < fis gis> }} | }
		{ s1\fff^\markup {\halign #2 \bold "Presto"}}>>
		\repeat volta 1 { \repeat unfold 2 { \tuplet 3/2 { < fis ais >4 eis gis }}} |
		\repeat volta 1 { \repeat unfold 2 { ais8 fis eis gis  }} |
		\time 2/4 \repeat volta 1 { \tuplet 3/2 { ais8 eis gis fis eis gis }} |
		\repeat volta 1 { \repeat tremolo 2 { ais16 gis fis eis }} |
		\repeat volta 1 { \repeat tremolo 4 { ais32 gis fis eis }} |
		\time 4/4 \repeat tremolo 4 { ais32 gis fis eis } 
			< ais gis fis eis >2->\fermata |
	}

	%Treble Staff LH
	\new Voice \relative c' {
		\change Staff = "down"
		r2 ais'\p | cis ais | 
		\repeat unfold 5 { < cis cis, > ais } |  
		<< { \repeat unfold 2 { \repeat tremolo 2 { < cis cis, >8 ais }} }
			{ s1_\markup {\italic "rit."} } >>

		\key fis \major
		\repeat volta 1 { dis,4\fff cis'4 dis, cis' } |
		\repeat volta 1 { \repeat unfold 2 { dis,4 cis'4 }} |
		\repeat volta 1 { \repeat unfold 2 { dis,4 cis'4 }} |
		\repeat volta 1 { \repeat tremolo 2 { dis,8 cis'8 }} |
		\repeat volta 1 { \repeat tremolo 4 { dis,16 cis' }} |
		\repeat volta 1 { \repeat tremolo 8 { dis,32 cis' }} |
		\repeat tremolo 8 { dis,32 cis' } < dis, cis' >2\fermata-> |
	}

	%Bass Staff
	\new Voice {
		\change Staff = "pedale"
		b,1~\sustainOn\f \repeat unfold 6 { b,1~ | } << { b,1 } { s2. s8. s16\sustainOff } >>
		
		\key fis \major
		fis,1\fff\sustainOn
		\repeat unfold 2 { fis,1~ } 
		\repeat unfold 3 { fis,2~ } 
		<< { fis,1\fermata } { s2. s8 s\sustainOff} >> |
	}
>>

\layout {
		indent = #15
		ragged-last = ##f
		\context {
			\Score
%			\override SpacingSpanner.base-shortest-duration = #(ly:make-moment 4/64)
		}
}

\book { 
	\paper {
%		print-page-number = ##f
		print-all-headers = ##t
		#(set! paper-alist (cons '("wide" . (cons (* 6 in) (* 24 in))) paper-alist))
		#(set-paper-size "letter")
		top-margin = 1.0\in
		left-margin = 1.0\in
		right-margin = 1.0\in
		bottom-margin = 1.0\in
	}

\header {
	title = "Piano Stüke"
	subtitle = "for Nate Ben-Horin"
	composer = "Z. V. Pine"
	tagline = ""
}

\score {
	\layout {
		\context {
			\Score
			\override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)

		}
	}
	\header {
		title = "I"
		subtitle = ""
		composer = ""
	}
%	\new PianoStaff \with { instrumentName= \markup { \huge "Piano" } }<<
	\new PianoStaff << 
		\new Staff = "up" {
			\clef "treble"
			\tempo "Andante"
			\i
			\iChords
			\bar "|."
		}

		\new Staff = "down" {
			\clef "bass"
		}
	>>
}


\score {
	\header {
		title = "II"
		subtitle = ""
		composer = ""
	}
	\new PianoStaff <<
		\new Staff = "up" {
			\clef "treble"
			\tempo "Largo ma sempre accelerando e crescendo"
			\key fis \major
			\iiOne \bar "||" 
			\tempo "Tempo I"
			\iiFour \bar "||"
			\break
			\time 4/4
			\tempo 4 = 80
			\iiFive
			\break
			\tempo "Tempo I"
			\iiCoda \bar "|."
		}

		\new Staff = "down" {
			\clef "treble" 
			\key fis \major
		}

		\new Staff = "pedale" {
			\clef "bass"
			\key fis \major
		}
	>>
}
}
