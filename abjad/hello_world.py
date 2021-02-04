from abjad import *

score = abjad.Score()
piano_staff = abjad.StaffGroup([], lilypond_type='PianoStaff')
upper_staff = abjad.Staff()
lower_staff = abjad.Staff()

upper_measures = []
upper_measures.append(abjad.Measure((2, 4), []))
upper_measures.append(abjad.Measure((3, 4), []))
upper_measures.append(abjad.Measure((2, 4), []))
upper_measures.append(abjad.Measure((2, 4), []))
upper_measures.append(abjad.Measure((2, 4), []))

show(score)