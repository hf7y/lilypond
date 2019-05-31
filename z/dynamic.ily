\version "2.19.82"

hairpinOn = \override Hairpin #'circled-tip = ##t
hairpinOff = \revert Hairpin.circled-tip
n = \once \override Hairpin #'circled-tip = ##t
