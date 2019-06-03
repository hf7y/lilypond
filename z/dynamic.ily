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