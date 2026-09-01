\version "2.24.0"

%from https://wiki.lilypond.community/wiki/Longer_laissez_vibrer_ties
extendLV =
#(define-music-function (further) (number?)
#{
  \once \override LaissezVibrerTie.X-extent = #'(0 . 0)
  \once \override LaissezVibrerTie.details.note-head-gap = #(- 0.2 (/ further 2))
  \once \override LaissezVibrerTie.extra-offset = #(cons (/ further 2) 0)
#})

chiasmus-tuba = {
	% \key es \major
	% \onceOmitClef
	\key bes \minor
	\time 2/2
	\lineNote "tubas and midhorns start, play throughout"
	\repeat volta 2 \relative c, {
		bes4 r4 r2 | 
		ces4\finger123 r4 r2 | 
		aes4\finger1 r4 r2 | 
		f4\finger13 r4
		\extendLV #7
		aes2 \laissezVibrer
	}
}
