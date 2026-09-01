\version "2.24.0"

tenderSoprano = {
	d' g' f' g' a' e' a' a' g' f' e' f' g' g' g' a'
	b' b' b' b' b' b' b' b' b' a' g' a' b' b' b' b'
	b' b' c'' b' a' e' a' a' g' f' e' f' g' g' g' d'
}

tenderAlto = {
	d' d' d'   d'   g' g' g' g' e' d' e'  d'  d' d' b d'
	g' g' a'   a'   g' g' g' g' e' e' es' es' d' g' g' g'
	g' a' gis' gis' g' g' g' g' e' d' e'  d'  d' d' c' c'
}

tenderTenor = {
	b  b  g    g    cis' cis' cis' cis' c' c' c' c' b b g a
	d' d' dis' dis' e'   e'   f'   f'   c' c' c' c' d' d' d' d'
	d' d' d'   d'   cis' cis' cis' cis' c' c' c' c' b b g f
}

tenderBass = {
	g, g, b, b, a, a, e a, d d d, d, g, d b, d
	g g fis b, e e d g, c c c c g, d fis e
	g, f, e, e, a, a, fis e d d d, d, g, d d, d,
}

fluteOne = { \tenderSoprano }
tromboneOne = { \tenderBass }
guitarOne = { \tenderAlto }
harpOne = { \tenderTenor }

flute = {
	\fluteOne
}
trombone = {
	\clef "bass"
	\tromboneOne
}
guitar = {
	\guitarOne
}
harp = {
	\autoChange
	\harpOne
}

\score {
	<<
		\new StaffGroup <<
			\new Staff 
				\with { instrumentName = "Flute" }
				\flute 
			\new Staff 
				\with { instrumentName = "Trombone" }
				\trombone 
		>>

		\new StaffGroup <<
			\new Staff 
				\with { instrumentName = "Guitar" } 
				\guitar 
			\new PianoStaff 
				\with { instrumentName = "Harp" } 
				\harp
		>>
	>>
}