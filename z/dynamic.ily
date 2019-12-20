\version "2.19.82"

hairpinOn = \override Hairpin #'circled-tip = ##t
hairpinOff = \revert Hairpin.circled-tip
n =  {
 	\temporary \override Hairpin #'to-barline = ##f
	\temporary \override Hairpin #'circled-tip = ##t
	\once \override Hairpin #'circled-tip = ##t
	\revert Hairpin #'circled-tip
	\revert Hairpin #'to-barline
}
roundPpp = \markup {
    \center-align \concat { \bold { \italic ( }
           \dynamic ppp \bold { \italic ) } } }
roundPp = \markup {
    \center-align \concat { \bold { \italic ( }
           \dynamic pp \bold { \italic ) } } }
roundP = \markup {
    \center-align \concat { \bold { \italic ( }
           \dynamic p \bold { \italic ) } } }
roundMp = \markup {
    \center-align \concat { \bold { \italic ( }
           \dynamic mp \bold { \italic ) } } }
roundMf = \markup {
    \center-align \concat { \bold { \italic ( }
           \dynamic mf \bold { \italic ) } } }
roundF = \markup {
    \center-align \concat { \bold { \italic ( }
           \dynamic f \bold { \italic ) } } }
roundFf = \markup {
    \center-align \concat { \bold { \italic ( }
           \dynamic ff \bold { \italic ) } } }
roundFff = \markup {
    \center-align \concat { \bold { \italic ( }
           \dynamic fff \bold { \italic ) } } }
