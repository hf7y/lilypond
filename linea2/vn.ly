\version "2.20.0"

\include "../z/square.ily"

vnexport = #(make-music
  'SequentialMusic
  'elements
(list
  (make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music
            'TimeSignatureMusic
            'numerator
            2
            'denominator
            8
            'beat-structure
            '())
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch -1 6 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch 0 0))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music (quote Music))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            4
            'denominator
            2
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 0)
            'pitch
            (ly:make-pitch -1 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 0))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music
            'TimeSignatureMusic
            'numerator
            3
            'denominator
            8
            'beat-structure
            '())
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 2))
          (make-music (quote BarCheck))
          (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch -1 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch -1 5))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            2
            'denominator
            8
            'beat-structure
            '())
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            7
            'denominator
            4
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 0)
            'pitch
            (ly:make-pitch 0 5 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 1))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music
            'TimeSignatureMusic
            'numerator
            2
            'denominator
            8
            'beat-structure
            '())
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            5
            'denominator
            16
            'beat-structure
            '())
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3 1))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            2
            'denominator
            8
            'beat-structure
            '())
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            3
            'denominator
            8
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch 0 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            2
            'denominator
            8
            'beat-structure
            '())
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            3
            'denominator
            8
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch 0 3 1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            5
            'denominator
            16
            'beat-structure
            '())
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            2
            'denominator
            8
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch -1 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            3
            'denominator
            16
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch 0 3 1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 4))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music
            'SkipEvent
            'articulations
            (list (make-music
                    'TextScriptEvent
                    'direction
                    1
                    'text
                    (markup #:italic "highest pitch possible")))
            'duration
            (ly:make-duration 0 0 0))
          (make-music
            'SequentialMusic
            'elements
            (list (make-music
                    'TimeSignatureMusic
                    'numerator
                    3
                    'denominator
                    4
                    'beat-structure
                    '())
                  (make-music
                    'OttavaMusic
                    'ottava-number
                    1)
                  (make-music
                    'NoteEvent
                    'duration
                    (ly:make-duration 1 1)
                    'pitch
                    (ly:make-pitch 3 5)
                    'articulations
                    (list (make-music (quote TieEvent))))
                  (make-music
                    'OttavaMusic
                    'ottava-number
                    0)))
          (make-music (quote BarCheck))
          (make-music
            'SequentialMusic
            'elements
            (list (make-music (quote Music))
                  (make-music
                    'OttavaMusic
                    'ottava-number
                    1)
                  (make-music
                    'NoteEvent
                    'duration
                    (ly:make-duration 1 1)
                    'pitch
                    (ly:make-pitch 3 5)
                    'articulations
                    (list (make-music (quote TieEvent))))
                  (make-music
                    'OttavaMusic
                    'ottava-number
                    0)))
          (make-music
            'SequentialMusic
            'elements
            (list (make-music
                    'TimeSignatureMusic
                    'numerator
                    4
                    'denominator
                    4
                    'beat-structure
                    '())
                  (make-music
                    'OttavaMusic
                    'ottava-number
                    1)
                  (make-music
                    'NoteEvent
                    'duration
                    (ly:make-duration 0)
                    'pitch
                    (ly:make-pitch 3 5))
                  (make-music
                    'OttavaMusic
                    'ottava-number
                    0)))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 0 1))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch -1 5 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music
            'TimeSignatureMusic
            'numerator
            4
            'denominator
            4
            'beat-structure
            '())
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch -1 6 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 1 1))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            7
            'denominator
            8
            'beat-structure
            '())
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 2))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 1))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            7
            'denominator
            4
            'beat-structure
            '())
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 1 1))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 0))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 0))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music
            'TimeSignatureMusic
            'numerator
            3
            'denominator
            4
            'beat-structure
            '())
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3 1))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 2))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 2))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            3
            'denominator
            8
            'beat-structure
            '())
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch -1 6 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            4
            'denominator
            4
            'beat-structure
            '())
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch 0 2 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 1))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 0))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music
            'TimeSignatureMusic
            'numerator
            3
            'denominator
            4
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch -1 6 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2 2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            3
            'denominator
            8
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch 0 0))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch -1 6 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            2
            'denominator
            4
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch -1 6 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 0)
            'pitch
            (ly:make-pitch 0 4 1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 0))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 5 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 0))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 5 -1/2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 0))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 2 -1/2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 4))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 2 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 4 -1/2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 6 -1/2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 2 -1/2))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 2 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 2)
            'pitch
            (ly:make-pitch 0 1))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 2)
            'pitch
            (ly:make-pitch 0 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 1 1))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch -1 6 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            5
            'denominator
            8
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch -1 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2 1))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            5
            'denominator
            16
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch 0 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            3
            'denominator
            8
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch 0 0))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch -1 5))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch 0 2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music
            'TimeSignatureMusic
            'numerator
            3
            'denominator
            8
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch -1 6 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            2
            'denominator
            8
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch -1 6 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            5
            'denominator
            16
            'beat-structure
            '())
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch 0 2 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            2
            'denominator
            8
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch 0 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch 0 0))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch 0 2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music
            'TimeSignatureMusic
            'numerator
            3
            'denominator
            8
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch 0 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch 0 0))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            2
            'denominator
            8
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch 1 0))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch -1 5))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch 0 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch 0 0 1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch -1 5 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 4))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 2 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 6))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 1 0 1/2))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 2 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 6 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music
            'TimeSignatureMusic
            'numerator
            7
            'denominator
            8
            'beat-structure
            '())
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch 0 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            5
            'denominator
            4
            'beat-structure
            '())
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch 0 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            2
            'denominator
            4
            'beat-structure
            '())
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch 0 0 1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            3
            'denominator
            4
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch 0 3 1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2 2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music
            'TimeSignatureMusic
            'numerator
            4
            'denominator
            4
            'beat-structure
            '())
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch -1 6 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            5
            'denominator
            4
            'beat-structure
            '())
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch -1 6 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            7
            'denominator
            4
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 0)
            'pitch
            (ly:make-pitch 0 3 1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 1))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            7
            'denominator
            8
            'beat-structure
            '())
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 1))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch -1 5))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music
            'TimeSignatureMusic
            'numerator
            4
            'denominator
            4
            'beat-structure
            '())
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3 1))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch -1 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            5
            'denominator
            4
            'beat-structure
            '())
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2 2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch 0 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            5
            'denominator
            8
            'beat-structure
            '())
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch 0 2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 2)
            'pitch
            (ly:make-pitch 0 3 1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 0))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 0))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 6))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 5))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 4 1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 3 1/2))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music
            'TimeSignatureMusic
            'numerator
            5
            'denominator
            8
            'beat-structure
            '())
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 2))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            7
            'denominator
            8
            'beat-structure
            '())
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch 0 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music (quote Music))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 2))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 2 2))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            3
            'denominator
            4
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch 0 2 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2 2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            2
            'denominator
            4
            'beat-structure
            '())
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 2))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music
            'SequentialMusic
            'elements
            (list (make-music
                    'TimeSignatureMusic
                    'numerator
                    4
                    'denominator
                    4
                    'beat-structure
                    '())
                  (make-music
                    'OttavaMusic
                    'ottava-number
                    1)
                  (make-music
                    'NoteEvent
                    'duration
                    (ly:make-duration 0)
                    'pitch
                    (ly:make-pitch 3 5)
                    'articulations
                    (list (make-music (quote TieEvent))))
                  (make-music
                    'OttavaMusic
                    'ottava-number
                    0)))
          (make-music
            'SequentialMusic
            'elements
            (list (make-music
                    'TimeSignatureMusic
                    'numerator
                    4
                    'denominator
                    2
                    'beat-structure
                    '())
                  (make-music
                    'OttavaMusic
                    'ottava-number
                    1)
                  (make-music
                    'NoteEvent
                    'duration
                    (ly:make-duration 0)
                    'pitch
                    (ly:make-pitch 3 5)
                    'articulations
                    (list (make-music (quote TieEvent))))
                  (make-music
                    'NoteEvent
                    'duration
                    (ly:make-duration 0)
                    'pitch
                    (ly:make-pitch 3 5))
                  (make-music
                    'OttavaMusic
                    'ottava-number
                    0)))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music
            'TimeSignatureMusic
            'numerator
            4
            'denominator
            4
            'beat-structure
            '())
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            4
            'denominator
            2
            'beat-structure
            '())
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music
            'TimeSignatureMusic
            'numerator
            4
            'denominator
            4
            'beat-structure
            '())
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 1))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3 1))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 2))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            4
            'denominator
            2
            'beat-structure
            '())
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 0))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 0))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music
            'TimeSignatureMusic
            'numerator
            4
            'denominator
            4
            'beat-structure
            '())
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 0))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 5 -1/2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 6))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            4
            'denominator
            2
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 0))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 5))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 6 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 5 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music
            'TimeSignatureMusic
            'numerator
            4
            'denominator
            4
            'beat-structure
            '())
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 1))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3 1))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 2))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            4
            'denominator
            2
            'beat-structure
            '())
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 0))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 0))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 0))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 6 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 5 -1/2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 4 -1/2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 2))
          (make-music (quote BarCheck))
          (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 0))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 6))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 5 1/2))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 2 -1/2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 5 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 1 -1/2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 4 -1/2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 6))
          (make-music (quote BarCheck))
          (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 0))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 4))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music
            'SkipEvent
            'articulations
            (list (make-music
                    'TextScriptEvent
                    'direction
                    1
                    'text
                    (markup #:italic "toneless")))
            'duration
            (ly:make-duration 0 0 0))
          (make-music (quote Music))
          (make-music
            'SequentialMusic
            'elements
            (list (make-music
                    'StaffSpanEvent
                    'span-direction
                    1)
                  (make-music
                    'ContextSpeccedMusic
                    'context-type
                    'Staff
                    'element
                    (make-music
                      'OverrideProperty
                      'pop-first
                      #t
                      'grob-value
                      #t
                      'grob-property-path
                      (list (quote transparent))
                      'symbol
                      'StaffSymbol))
                  (make-music
                    'StaffSpanEvent
                    'span-direction
                    -1)
                  (make-music
                    'ContextSpeccedMusic
                    'context-type
                    'Bottom
                    'element
                    (make-music
                      'OverrideProperty
                      'pop-first
                      #t
                      'grob-value
                      #t
                      'grob-property-path
                      (list (quote no-ledgers))
                      'symbol
                      'NoteHead))
                  (make-music
                    'SequentialMusic
                    'elements
                    (list (make-music
                            'ContextSpeccedMusic
                            'context-type
                            'Bottom
                            'element
                            (make-music
                              'OverrideProperty
                              'pop-first
                              #t
                              'grob-value
                              square-head
                              'grob-property-path
                              (list (quote stencil))
                              'symbol
                              'NoteHead))
                          (make-music
                            'SequentialMusic
                            'elements
                            (list (make-music
                                    'NoteEvent
                                    'duration
                                    (ly:make-duration 1 1)
                                    'pitch
                                    (ly:make-pitch 0 6)
                                    'articulations
                                    (list (make-music (quote TieEvent))))))
                          (make-music
                            'ContextSpeccedMusic
                            'context-type
                            'Bottom
                            'element
                            (make-music
                              'RevertProperty
                              'grob-property-path
                              (list (quote stencil))
                              'symbol
                              'NoteHead))))
                  (make-music
                    'ContextSpeccedMusic
                    'context-type
                    'Bottom
                    'element
                    (make-music
                      'RevertProperty
                      'grob-property-path
                      (list (quote no-ledgers))
                      'symbol
                      'NoteHead))
                  (make-music
                    'StaffSpanEvent
                    'span-direction
                    1)
                  (make-music
                    'ContextSpeccedMusic
                    'context-type
                    'Staff
                    'element
                    (make-music
                      'RevertProperty
                      'grob-property-path
                      (list (quote transparent))
                      'symbol
                      'StaffSymbol))
                  (make-music
                    'ContextSpeccedMusic
                    'context-type
                    'Staff
                    'element
                    (make-music
                      'RevertProperty
                      'grob-property-path
                      (list (quote line-count))
                      'symbol
                      'StaffSymbol))
                  (make-music
                    'StaffSpanEvent
                    'span-direction
                    -1)))
          (make-music (quote BarCheck))
          (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 0))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 5))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 1 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 2 -1/2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 0))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 1))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 6))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 0 1/2))
          (make-music (quote BarCheck))
          (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 0))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 5))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 6))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 4 1/2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 5 1/2))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 2 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 1 -1/2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 1))
          (make-music (quote BarCheck))
          (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 0))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 6))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 1 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 0))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 2 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 5 -1/2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 1 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 4 -1/2))
          (make-music (quote BarCheck))
          (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 0))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music
            'SequentialMusic
            'elements
            (list (make-music (quote Music))
                  (make-music
                    'OttavaMusic
                    'ottava-number
                    1)
                  (make-music
                    'NoteEvent
                    'duration
                    (ly:make-duration 1 1)
                    'pitch
                    (ly:make-pitch 3 5)
                    'articulations
                    (list (make-music (quote TieEvent))))
                  (make-music
                    'OttavaMusic
                    'ottava-number
                    0)))
          (make-music
            'SequentialMusic
            'elements
            (list (make-music (quote Music))
                  (make-music
                    'OttavaMusic
                    'ottava-number
                    1)
                  (make-music
                    'NoteEvent
                    'duration
                    (ly:make-duration 1 1)
                    'pitch
                    (ly:make-pitch 3 5))
                  (make-music
                    'OttavaMusic
                    'ottava-number
                    0)))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 2 -1/2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 0))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 1))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 6))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 0 1/2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 5 1/2))
          (make-music (quote BarCheck))
          (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 0))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 5))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 6))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 4 1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 5 1/2))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music
            'SequentialMusic
            'elements
            (list (make-music (quote Music))
                  (make-music
                    'OttavaMusic
                    'ottava-number
                    1)
                  (make-music
                    'NoteEvent
                    'duration
                    (ly:make-duration 1 1)
                    'pitch
                    (ly:make-pitch 3 5)
                    'articulations
                    (list (make-music (quote TieEvent))))
                  (make-music
                    'OttavaMusic
                    'ottava-number
                    0)))
          (make-music
            'SequentialMusic
            'elements
            (list (make-music (quote Music))
                  (make-music
                    'OttavaMusic
                    'ottava-number
                    1)
                  (make-music
                    'NoteEvent
                    'duration
                    (ly:make-duration 1 1)
                    'pitch
                    (ly:make-pitch 3 5))
                  (make-music
                    'OttavaMusic
                    'ottava-number
                    0)))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 2)
            'pitch
            (ly:make-pitch -1 5))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 0))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            3
            'denominator
            4
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch 0 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 1))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            2
            'denominator
            4
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch 0 2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            4
            'denominator
            2
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 0)
            'pitch
            (ly:make-pitch 0 2 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 0))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music
            'TimeSignatureMusic
            'numerator
            3
            'denominator
            8
            'beat-structure
            '())
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch 0 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            7
            'denominator
            16
            'beat-structure
            '())
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch -1 5))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            5
            'denominator
            8
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch 0 2 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch -1 5))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            5
            'denominator
            16
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch 0 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3 1))
          (make-music (quote BarCheck))
          (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch 0 2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            3
            'denominator
            8
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch 0 0))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            2
            'denominator
            8
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch -1 5 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            3
            'denominator
            8
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch 0 2 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            2
            'denominator
            8
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch -1 5 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch 0 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch -1 5))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 5))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 6))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 3 1/2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 6))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 0 1/2))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 5))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 0 1/2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 4 1/2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 0))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 4))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 6))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 0 1/2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 4 1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music
            'SequentialMusic
            'elements
            (list (make-music (quote Music))
                  (make-music
                    'OttavaMusic
                    'ottava-number
                    1)
                  (make-music
                    'NoteEvent
                    'duration
                    (ly:make-duration 1)
                    'pitch
                    (ly:make-pitch 3 5))
                  (make-music
                    'OttavaMusic
                    'ottava-number
                    0)))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 6))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 0))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 1 -1/2))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music
            'SequentialMusic
            'elements
            (list (make-music
                    'TimeSignatureMusic
                    'numerator
                    5
                    'denominator
                    16
                    'beat-structure
                    '())
                  (make-music
                    'OttavaMusic
                    'ottava-number
                    1)
                  (make-music
                    'NoteEvent
                    'duration
                    (ly:make-duration 2)
                    'pitch
                    (ly:make-pitch 3 5)
                    'articulations
                    (list (make-music (quote TieEvent))))
                  (make-music
                    'NoteEvent
                    'duration
                    (ly:make-duration 4)
                    'pitch
                    (ly:make-pitch 3 5))
                  (make-music
                    'OttavaMusic
                    'ottava-number
                    0)))
          (make-music (quote BarCheck))
          (make-music
            'SequentialMusic
            'elements
            (list (make-music
                    'TimeSignatureMusic
                    'numerator
                    2
                    'denominator
                    8
                    'beat-structure
                    '())
                  (make-music
                    'OttavaMusic
                    'ottava-number
                    1)
                  (make-music
                    'NoteEvent
                    'duration
                    (ly:make-duration 2)
                    'pitch
                    (ly:make-pitch 3 5)
                    'articulations
                    (list (make-music (quote TieEvent))))
                  (make-music
                    'OttavaMusic
                    'ottava-number
                    0)))
          (make-music (quote BarCheck))
          (make-music
            'SequentialMusic
            'elements
            (list (make-music
                    'TimeSignatureMusic
                    'numerator
                    5
                    'denominator
                    16
                    'beat-structure
                    '())
                  (make-music
                    'OttavaMusic
                    'ottava-number
                    1)
                  (make-music
                    'NoteEvent
                    'duration
                    (ly:make-duration 2)
                    'pitch
                    (ly:make-pitch 3 5)
                    'articulations
                    (list (make-music (quote TieEvent))))
                  (make-music
                    'NoteEvent
                    'duration
                    (ly:make-duration 4)
                    'pitch
                    (ly:make-pitch 3 5))
                  (make-music
                    'OttavaMusic
                    'ottava-number
                    0)))
          (make-music (quote BarCheck))
          (make-music
            'SequentialMusic
            'elements
            (list (make-music
                    'TimeSignatureMusic
                    'numerator
                    2
                    'denominator
                    8
                    'beat-structure
                    '())
                  (make-music
                    'OttavaMusic
                    'ottava-number
                    1)
                  (make-music
                    'NoteEvent
                    'duration
                    (ly:make-duration 2)
                    'pitch
                    (ly:make-pitch 3 5)
                    'articulations
                    (list (make-music (quote TieEvent))))
                  (make-music
                    'OttavaMusic
                    'ottava-number
                    0)))
          (make-music (quote BarCheck))
          (make-music
            'SequentialMusic
            'elements
            (list (make-music
                    'TimeSignatureMusic
                    'numerator
                    5
                    'denominator
                    16
                    'beat-structure
                    '())
                  (make-music
                    'OttavaMusic
                    'ottava-number
                    1)
                  (make-music
                    'NoteEvent
                    'duration
                    (ly:make-duration 2)
                    'pitch
                    (ly:make-pitch 3 5)
                    'articulations
                    (list (make-music (quote TieEvent))))
                  (make-music
                    'NoteEvent
                    'duration
                    (ly:make-duration 4)
                    'pitch
                    (ly:make-pitch 3 5))
                  (make-music
                    'OttavaMusic
                    'ottava-number
                    0)))
          (make-music (quote BarCheck))
          (make-music
            'SequentialMusic
            'elements
            (list (make-music
                    'TimeSignatureMusic
                    'numerator
                    2
                    'denominator
                    8
                    'beat-structure
                    '())
                  (make-music
                    'OttavaMusic
                    'ottava-number
                    1)
                  (make-music
                    'NoteEvent
                    'duration
                    (ly:make-duration 2)
                    'pitch
                    (ly:make-pitch 3 5)
                    'articulations
                    (list (make-music (quote TieEvent))))
                  (make-music
                    'OttavaMusic
                    'ottava-number
                    0)))
          (make-music (quote BarCheck))
          (make-music
            'SequentialMusic
            'elements
            (list (make-music
                    'TimeSignatureMusic
                    'numerator
                    5
                    'denominator
                    16
                    'beat-structure
                    '())
                  (make-music
                    'OttavaMusic
                    'ottava-number
                    1)
                  (make-music
                    'NoteEvent
                    'duration
                    (ly:make-duration 2)
                    'pitch
                    (ly:make-pitch 3 5)
                    'articulations
                    (list (make-music (quote TieEvent))))
                  (make-music
                    'NoteEvent
                    'duration
                    (ly:make-duration 4)
                    'pitch
                    (ly:make-pitch 3 5))
                  (make-music
                    'OttavaMusic
                    'ottava-number
                    0)))
          (make-music (quote BarCheck))
          (make-music
            'SequentialMusic
            'elements
            (list (make-music
                    'TimeSignatureMusic
                    'numerator
                    2
                    'denominator
                    8
                    'beat-structure
                    '())
                  (make-music
                    'OttavaMusic
                    'ottava-number
                    1)
                  (make-music
                    'NoteEvent
                    'duration
                    (ly:make-duration 2)
                    'pitch
                    (ly:make-pitch 3 5)
                    'articulations
                    (list (make-music (quote TieEvent))))
                  (make-music
                    'OttavaMusic
                    'ottava-number
                    0)))
          (make-music (quote BarCheck))
          (make-music
            'SequentialMusic
            'elements
            (list (make-music
                    'TimeSignatureMusic
                    'numerator
                    3
                    'denominator
                    4
                    'beat-structure
                    '())
                  (make-music
                    'OttavaMusic
                    'ottava-number
                    1)
                  (make-music
                    'NoteEvent
                    'duration
                    (ly:make-duration 1 1)
                    'pitch
                    (ly:make-pitch 3 5)
                    'articulations
                    (list (make-music (quote TieEvent))))
                  (make-music
                    'OttavaMusic
                    'ottava-number
                    0)))
          (make-music
            'SequentialMusic
            'elements
            (list (make-music (quote Music))
                  (make-music
                    'OttavaMusic
                    'ottava-number
                    1)
                  (make-music
                    'NoteEvent
                    'duration
                    (ly:make-duration 1 1)
                    'pitch
                    (ly:make-pitch 3 5))
                  (make-music
                    'OttavaMusic
                    'ottava-number
                    0)))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 5))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 0 1/2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 4 1/2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 0))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 6))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 3 1/2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 1 1/2))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 5))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 4 1/2))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 6))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 0))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 1 -1/2))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 2 -1/2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 6 -1/2))
          (make-music (quote BarCheck))
          (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 2 -1/2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 6 -1/2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 0))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music
            'SequentialMusic
            'elements
            (list (make-music (quote Music))
                  (make-music
                    'OttavaMusic
                    'ottava-number
                    1)
                  (make-music
                    'NoteEvent
                    'duration
                    (ly:make-duration 1 1)
                    'pitch
                    (ly:make-pitch 3 5))
                  (make-music
                    'OttavaMusic
                    'ottava-number
                    0)))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 2 -1/2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 6 -1/2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 1 0))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music
            'SequentialMusic
            'elements
            (list (make-music (quote Music))
                  (make-music
                    'OttavaMusic
                    'ottava-number
                    1)
                  (make-music
                    'NoteEvent
                    'duration
                    (ly:make-duration 1 1)
                    'pitch
                    (ly:make-pitch 3 5))
                  (make-music
                    'OttavaMusic
                    'ottava-number
                    0)))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 2))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 2))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 1))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 0))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 5))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 4 1/2))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 2))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 2))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 1))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 0))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 2 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 1))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 3 1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 5))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 6))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 2))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 2))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 1))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 0))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 2 -1/2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 1))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 2))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 2))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 1))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 0))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 2 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 2))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 2))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 1))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 0))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 2 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 2 -1/2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 1))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 2 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 1))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 1 1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 3 1/2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 3 1/2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 2 1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 2 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 1))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 1 1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 1 1/2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 0 1/2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music
            'SequentialMusic
            'elements
            (list (make-music (quote Music))
                  (make-music
                    'OttavaMusic
                    'ottava-number
                    1)
                  (make-music
                    'NoteEvent
                    'duration
                    (ly:make-duration 0)
                    'pitch
                    (ly:make-pitch 3 5)
                    'articulations
                    (list (make-music (quote TieEvent))))
                  (make-music
                    'NoteEvent
                    'duration
                    (ly:make-duration 0)
                    'pitch
                    (ly:make-pitch 3 5))
                  (make-music
                    'OttavaMusic
                    'ottava-number
                    0)))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 4))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 4))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 4))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 4))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 4))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 4))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 4))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 4))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 4))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 4))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 4))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 4))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 4))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 4))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 4))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 1 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 1 4))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 1 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 1 4))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 1 4))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 1 4))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 1 4))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 1 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 1 4))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 2)
            'pitch
            (ly:make-pitch 1 4))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 2)
            'pitch
            (ly:make-pitch 1 4))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 2)
            'pitch
            (ly:make-pitch 1 4))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 1 4))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 1 4))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 1 4))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 1 4))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 1 4))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 1 4))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 1 4))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 1 4))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 1 4))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 1 4))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 1 4))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 1 4))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 1 4))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 1 4))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 1 4))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 1 4))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3 1))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3 1)
            'pitch
            (ly:make-pitch 1 4))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3 1)
            'pitch
            (ly:make-pitch 2 1))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3 1)
            'pitch
            (ly:make-pitch 1 4))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3 1)
            'pitch
            (ly:make-pitch 1 4))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3 1)
            'pitch
            (ly:make-pitch 1 4))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3 1)
            'pitch
            (ly:make-pitch 1 4))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3 1)
            'pitch
            (ly:make-pitch 1 4))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3 1)
            'pitch
            (ly:make-pitch 1 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3 1))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 1 6 -1/2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 1 6 -1/2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 1 6 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 1 6 -1/2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 1 6 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 1 6 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 1 6 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 1 6 -1/2))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 1 6 -1/2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 1 6 -1/2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 1 6 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 2))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 2))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 2))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 1 2)
            'pitch
            (ly:make-pitch 1 5)
            'articulations
            (list (make-music (quote TieEvent))))
          (make-music
            'OttavaMusic
            'ottava-number
            0)))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 1 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 1 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 1 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 1 -1/2))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 1 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 1 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 1 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 1 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 1 -1/2))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 1 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 1 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 1 -1/2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 1 -1/2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 1 -1/2))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 2))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 2))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 2))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 0)
            'pitch
            (ly:make-pitch 1 4)
            'articulations
            (list (make-music (quote TieEvent))))
          (make-music
            'OttavaMusic
            'ottava-number
            0)))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 2))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 1 1)
            'pitch
            (ly:make-pitch 1 4)
            'articulations
            (list (make-music (quote TieEvent))))
          (make-music
            'OttavaMusic
            'ottava-number
            0)))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 2))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 2))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 1 5))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 1 5))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 1 5))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 1 5))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 1 5))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 1 5))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 1 5))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 1 5))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 1 5))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 1 5))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 1 5))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 1 5))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 1 5))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 0)
            'pitch
            (ly:make-pitch 2 0)
            'articulations
            (list (make-music (quote TieEvent))))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 1)
            'pitch
            (ly:make-pitch 2 0))
          (make-music
            'OttavaMusic
            'ottava-number
            0)))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 0)
            'pitch
            (ly:make-pitch 2 0)
            'articulations
            (list (make-music (quote TieEvent))))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 1)
            'pitch
            (ly:make-pitch 2 0))
          (make-music
            'OttavaMusic
            'ottava-number
            0)))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 0)
            'pitch
            (ly:make-pitch 2 0)
            'articulations
            (list (make-music (quote TieEvent))))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 1)
            'pitch
            (ly:make-pitch 2 0))
          (make-music
            'OttavaMusic
            'ottava-number
            0)))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 1)
            'pitch
            (ly:make-pitch 2 0)
            'articulations
            (list (make-music (quote TieEvent))))
          (make-music
            'OttavaMusic
            'ottava-number
            0)))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 1 2)
            'pitch
            (ly:make-pitch 2 0 -1/2)
            'articulations
            (list (make-music (quote TieEvent))))
          (make-music
            'OttavaMusic
            'ottava-number
            0)))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 3))
          (make-music (quote BarCheck))
          (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 1 2)
            'pitch
            (ly:make-pitch 2 0)
            'articulations
            (list (make-music (quote TieEvent))))
          (make-music
            'OttavaMusic
            'ottava-number
            0)
          (make-music (quote BarCheck))
          (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 1 2)
            'pitch
            (ly:make-pitch 2 0)
            'articulations
            (list (make-music (quote TieEvent))))
          (make-music
            'OttavaMusic
            'ottava-number
            0)
          (make-music (quote BarCheck))
          (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 1 2)
            'pitch
            (ly:make-pitch 2 0)
            'articulations
            (list (make-music (quote TieEvent))))
          (make-music
            'OttavaMusic
            'ottava-number
            0)
          (make-music (quote BarCheck))
          (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 1 2)
            'pitch
            (ly:make-pitch 2 0)
            'articulations
            (list (make-music (quote TieEvent))))
          (make-music
            'OttavaMusic
            'ottava-number
            0)))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music
            'TimeSignatureMusic
            'numerator
            4
            'denominator
            4
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 0)
            'pitch
            (ly:make-pitch 2 0)
            'articulations
            (list (make-music (quote TieEvent))))
          (make-music
            'OttavaMusic
            'ottava-number
            0)
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            7
            'denominator
            8
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 1 2)
            'pitch
            (ly:make-pitch 2 0)
            'articulations
            (list (make-music (quote TieEvent))))
          (make-music
            'OttavaMusic
            'ottava-number
            0)
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            4
            'denominator
            4
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 0)
            'pitch
            (ly:make-pitch 2 0)
            'articulations
            (list (make-music (quote TieEvent))))
          (make-music
            'OttavaMusic
            'ottava-number
            0)
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            7
            'denominator
            8
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 1 2)
            'pitch
            (ly:make-pitch 2 0)
            'articulations
            (list (make-music (quote TieEvent))))
          (make-music
            'OttavaMusic
            'ottava-number
            0)))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 2)
            'pitch
            (ly:make-pitch 2 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 2)
            'pitch
            (ly:make-pitch 2 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))
          (make-music (quote BarCheck))
          (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            7
            'denominator
            8
            'beat-structure
            '())
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 2 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            4
            'denominator
            4
            'beat-structure
            '())
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'SequentialMusic
            'elements
            (list (make-music
                    'StaffSpanEvent
                    'span-direction
                    1)
                  (make-music
                    'ContextSpeccedMusic
                    'context-type
                    'Staff
                    'element
                    (make-music
                      'OverrideProperty
                      'pop-first
                      #t
                      'grob-value
                      #t
                      'grob-property-path
                      (list (quote transparent))
                      'symbol
                      'StaffSymbol))
                  (make-music
                    'StaffSpanEvent
                    'span-direction
                    -1)
                  (make-music
                    'ContextSpeccedMusic
                    'context-type
                    'Bottom
                    'element
                    (make-music
                      'OverrideProperty
                      'pop-first
                      #t
                      'grob-value
                      #t
                      'grob-property-path
                      (list (quote no-ledgers))
                      'symbol
                      'NoteHead))
                  (make-music
                    'SequentialMusic
                    'elements
                    (list (make-music
                            'ContextSpeccedMusic
                            'context-type
                            'Bottom
                            'element
                            (make-music
                              'OverrideProperty
                              'pop-first
                              #t
                              'grob-value
                              square-head
                              'grob-property-path
                              (list (quote stencil))
                              'symbol
                              'NoteHead))
                          (make-music
                            'SequentialMusic
                            'elements
                            (list (make-music
                                    'NoteEvent
                                    'duration
                                    (ly:make-duration 0)
                                    'pitch
                                    (ly:make-pitch 0 6)
                                    'articulations
                                    (list (make-music (quote TieEvent))))))
                          (make-music
                            'ContextSpeccedMusic
                            'context-type
                            'Bottom
                            'element
                            (make-music
                              'RevertProperty
                              'grob-property-path
                              (list (quote stencil))
                              'symbol
                              'NoteHead))))
                  (make-music
                    'ContextSpeccedMusic
                    'context-type
                    'Bottom
                    'element
                    (make-music
                      'RevertProperty
                      'grob-property-path
                      (list (quote no-ledgers))
                      'symbol
                      'NoteHead))
                  (make-music
                    'StaffSpanEvent
                    'span-direction
                    1)
                  (make-music
                    'ContextSpeccedMusic
                    'context-type
                    'Staff
                    'element
                    (make-music
                      'RevertProperty
                      'grob-property-path
                      (list (quote transparent))
                      'symbol
                      'StaffSymbol))
                  (make-music
                    'ContextSpeccedMusic
                    'context-type
                    'Staff
                    'element
                    (make-music
                      'RevertProperty
                      'grob-property-path
                      (list (quote line-count))
                      'symbol
                      'StaffSymbol))
                  (make-music
                    'StaffSpanEvent
                    'span-direction
                    -1)))
          (make-music (quote BarCheck))
          (make-music (quote Music))
          (make-music
            'SequentialMusic
            'elements
            (list (make-music
                    'StaffSpanEvent
                    'span-direction
                    1)
                  (make-music
                    'ContextSpeccedMusic
                    'context-type
                    'Staff
                    'element
                    (make-music
                      'OverrideProperty
                      'pop-first
                      #t
                      'grob-value
                      #t
                      'grob-property-path
                      (list (quote transparent))
                      'symbol
                      'StaffSymbol))
                  (make-music
                    'StaffSpanEvent
                    'span-direction
                    -1)
                  (make-music
                    'ContextSpeccedMusic
                    'context-type
                    'Bottom
                    'element
                    (make-music
                      'OverrideProperty
                      'pop-first
                      #t
                      'grob-value
                      #t
                      'grob-property-path
                      (list (quote no-ledgers))
                      'symbol
                      'NoteHead))
                  (make-music
                    'SequentialMusic
                    'elements
                    (list (make-music
                            'ContextSpeccedMusic
                            'context-type
                            'Bottom
                            'element
                            (make-music
                              'OverrideProperty
                              'pop-first
                              #t
                              'grob-value
                              square-head
                              'grob-property-path
                              (list (quote stencil))
                              'symbol
                              'NoteHead))
                          (make-music
                            'SequentialMusic
                            'elements
                            (list (make-music
                                    'NoteEvent
                                    'duration
                                    (ly:make-duration 0)
                                    'pitch
                                    (ly:make-pitch 0 6)
                                    'articulations
                                    (list (make-music (quote TieEvent))))))
                          (make-music
                            'ContextSpeccedMusic
                            'context-type
                            'Bottom
                            'element
                            (make-music
                              'RevertProperty
                              'grob-property-path
                              (list (quote stencil))
                              'symbol
                              'NoteHead))))
                  (make-music
                    'ContextSpeccedMusic
                    'context-type
                    'Bottom
                    'element
                    (make-music
                      'RevertProperty
                      'grob-property-path
                      (list (quote no-ledgers))
                      'symbol
                      'NoteHead))
                  (make-music
                    'StaffSpanEvent
                    'span-direction
                    1)
                  (make-music
                    'ContextSpeccedMusic
                    'context-type
                    'Staff
                    'element
                    (make-music
                      'RevertProperty
                      'grob-property-path
                      (list (quote transparent))
                      'symbol
                      'StaffSymbol))
                  (make-music
                    'ContextSpeccedMusic
                    'context-type
                    'Staff
                    'element
                    (make-music
                      'RevertProperty
                      'grob-property-path
                      (list (quote line-count))
                      'symbol
                      'StaffSymbol))
                  (make-music
                    'StaffSpanEvent
                    'span-direction
                    -1)))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            7
            'denominator
            8
            'beat-structure
            '())
          (make-music
            'SequentialMusic
            'elements
            (list (make-music
                    'StaffSpanEvent
                    'span-direction
                    1)
                  (make-music
                    'ContextSpeccedMusic
                    'context-type
                    'Staff
                    'element
                    (make-music
                      'OverrideProperty
                      'pop-first
                      #t
                      'grob-value
                      #t
                      'grob-property-path
                      (list (quote transparent))
                      'symbol
                      'StaffSymbol))
                  (make-music
                    'StaffSpanEvent
                    'span-direction
                    -1)
                  (make-music
                    'ContextSpeccedMusic
                    'context-type
                    'Bottom
                    'element
                    (make-music
                      'OverrideProperty
                      'pop-first
                      #t
                      'grob-value
                      #t
                      'grob-property-path
                      (list (quote no-ledgers))
                      'symbol
                      'NoteHead))
                  (make-music
                    'SequentialMusic
                    'elements
                    (list (make-music
                            'ContextSpeccedMusic
                            'context-type
                            'Bottom
                            'element
                            (make-music
                              'OverrideProperty
                              'pop-first
                              #t
                              'grob-value
                              square-head
                              'grob-property-path
                              (list (quote stencil))
                              'symbol
                              'NoteHead))
                          (make-music
                            'SequentialMusic
                            'elements
                            (list (make-music
                                    'NoteEvent
                                    'duration
                                    (ly:make-duration 1 2)
                                    'pitch
                                    (ly:make-pitch 0 6)
                                    'articulations
                                    (list (make-music (quote TieEvent))))))
                          (make-music
                            'ContextSpeccedMusic
                            'context-type
                            'Bottom
                            'element
                            (make-music
                              'RevertProperty
                              'grob-property-path
                              (list (quote stencil))
                              'symbol
                              'NoteHead))))
                  (make-music
                    'ContextSpeccedMusic
                    'context-type
                    'Bottom
                    'element
                    (make-music
                      'RevertProperty
                      'grob-property-path
                      (list (quote no-ledgers))
                      'symbol
                      'NoteHead))
                  (make-music
                    'StaffSpanEvent
                    'span-direction
                    1)
                  (make-music
                    'ContextSpeccedMusic
                    'context-type
                    'Staff
                    'element
                    (make-music
                      'RevertProperty
                      'grob-property-path
                      (list (quote transparent))
                      'symbol
                      'StaffSymbol))
                  (make-music
                    'ContextSpeccedMusic
                    'context-type
                    'Staff
                    'element
                    (make-music
                      'RevertProperty
                      'grob-property-path
                      (list (quote line-count))
                      'symbol
                      'StaffSymbol))
                  (make-music
                    'StaffSpanEvent
                    'span-direction
                    -1)))
          (make-music
            'TimeSignatureMusic
            'numerator
            4
            'denominator
            4
            'beat-structure
            '())
          (make-music
            'SequentialMusic
            'elements
            (list (make-music
                    'StaffSpanEvent
                    'span-direction
                    1)
                  (make-music
                    'ContextSpeccedMusic
                    'context-type
                    'Staff
                    'element
                    (make-music
                      'OverrideProperty
                      'pop-first
                      #t
                      'grob-value
                      #t
                      'grob-property-path
                      (list (quote transparent))
                      'symbol
                      'StaffSymbol))
                  (make-music
                    'StaffSpanEvent
                    'span-direction
                    -1)
                  (make-music
                    'ContextSpeccedMusic
                    'context-type
                    'Bottom
                    'element
                    (make-music
                      'OverrideProperty
                      'pop-first
                      #t
                      'grob-value
                      #t
                      'grob-property-path
                      (list (quote no-ledgers))
                      'symbol
                      'NoteHead))
                  (make-music
                    'SequentialMusic
                    'elements
                    (list (make-music
                            'ContextSpeccedMusic
                            'context-type
                            'Bottom
                            'element
                            (make-music
                              'OverrideProperty
                              'pop-first
                              #t
                              'grob-value
                              square-head
                              'grob-property-path
                              (list (quote stencil))
                              'symbol
                              'NoteHead))
                          (make-music
                            'SequentialMusic
                            'elements
                            (list (make-music
                                    'NoteEvent
                                    'duration
                                    (ly:make-duration 0)
                                    'pitch
                                    (ly:make-pitch 0 6))))
                          (make-music
                            'ContextSpeccedMusic
                            'context-type
                            'Bottom
                            'element
                            (make-music
                              'RevertProperty
                              'grob-property-path
                              (list (quote stencil))
                              'symbol
                              'NoteHead))))
                  (make-music
                    'ContextSpeccedMusic
                    'context-type
                    'Bottom
                    'element
                    (make-music
                      'RevertProperty
                      'grob-property-path
                      (list (quote no-ledgers))
                      'symbol
                      'NoteHead))
                  (make-music
                    'StaffSpanEvent
                    'span-direction
                    1)
                  (make-music
                    'ContextSpeccedMusic
                    'context-type
                    'Staff
                    'element
                    (make-music
                      'RevertProperty
                      'grob-property-path
                      (list (quote transparent))
                      'symbol
                      'StaffSymbol))
                  (make-music
                    'ContextSpeccedMusic
                    'context-type
                    'Staff
                    'element
                    (make-music
                      'RevertProperty
                      'grob-property-path
                      (list (quote line-count))
                      'symbol
                      'StaffSymbol))
                  (make-music
                    'StaffSpanEvent
                    'span-direction
                    -1)))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music
            'TimeSignatureMusic
            'numerator
            2
            'denominator
            8
            'beat-structure
            '())
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music (quote Music))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music (quote Music))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            4
            'denominator
            2
            'beat-structure
            '())
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 0))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 0))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music
            'TimeSignatureMusic
            'numerator
            3
            'denominator
            8
            'beat-structure
            '())
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch -1 6 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))
          (make-music (quote BarCheck))
          (make-music (quote Music))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music (quote Music))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 2))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            2
            'denominator
            8
            'beat-structure
            '())
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            7
            'denominator
            4
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 0)
            'pitch
            (ly:make-pitch 0 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 1))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music
            'TimeSignatureMusic
            'numerator
            2
            'denominator
            8
            'beat-structure
            '())
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            5
            'denominator
            16
            'beat-structure
            '())
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3 1))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            2
            'denominator
            8
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch 0 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            3
            'denominator
            8
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch 0 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            2
            'denominator
            8
            'beat-structure
            '())
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            3
            'denominator
            8
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch -1 6))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            5
            'denominator
            16
            'beat-structure
            '())
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            2
            'denominator
            8
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch 0 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            3
            'denominator
            16
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch 0 2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 4))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music
            'TimeSignatureMusic
            'numerator
            3
            'denominator
            4
            'beat-structure
            '())
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 6 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            4
            'denominator
            4
            'beat-structure
            '())
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 0 1))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music
            'TimeSignatureMusic
            'numerator
            4
            'denominator
            4
            'beat-structure
            '())
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 0))
          (make-music (quote BarCheck))
          (make-music (quote Music))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 1 1))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            7
            'denominator
            8
            'beat-structure
            '())
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3 1))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 1))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            7
            'denominator
            4
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 1 1)
            'pitch
            (ly:make-pitch 0 5 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 0))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 0))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music
            'TimeSignatureMusic
            'numerator
            3
            'denominator
            4
            'beat-structure
            '())
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch 0 1 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            3
            'denominator
            8
            'beat-structure
            '())
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3 1))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music (quote Music))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            4
            'denominator
            4
            'beat-structure
            '())
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 2 2))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 1))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 0)
            'pitch
            (ly:make-pitch 0 2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 0))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 2 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch -1 5 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            5
            'denominator
            8
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch -1 5))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2 1))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            5
            'denominator
            16
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch 0 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            3
            'denominator
            8
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch 0 2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch -1 6))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music
            'SequentialMusic
            'elements
            (list (make-music (quote Music))
                  (make-music
                    'OttavaMusic
                    'ottava-number
                    1)
                  (make-music
                    'NoteEvent
                    'duration
                    (ly:make-duration 1)
                    'pitch
                    (ly:make-pitch 4 5))
                  (make-music
                    'OttavaMusic
                    'ottava-number
                    0)))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music
            'TimeSignatureMusic
            'numerator
            3
            'denominator
            8
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch -1 5 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            2
            'denominator
            8
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch 0 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            5
            'denominator
            16
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch 0 2 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            2
            'denominator
            8
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch 0 0))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch -1 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch 0 2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music
            'TimeSignatureMusic
            'numerator
            3
            'denominator
            8
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch -1 5 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch 0 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            2
            'denominator
            8
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch 0 2 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch 0 0))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch -1 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch -1 6))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch 0 3 1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 2 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 2 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 1))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music
            'TimeSignatureMusic
            'numerator
            4
            'denominator
            4
            'beat-structure
            '())
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch -1 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            5
            'denominator
            4
            'beat-structure
            '())
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch -1 6 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            3
            'denominator
            4
            'beat-structure
            '())
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch -1 5))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2 1))
          (make-music (quote BarCheck))
          (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3 1))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch -1 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2 1))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music
            'TimeSignatureMusic
            'numerator
            4
            'denominator
            4
            'beat-structure
            '())
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 1))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 2))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            5
            'denominator
            4
            'beat-structure
            '())
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 1 2))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 2))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            7
            'denominator
            4
            'beat-structure
            '())
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 0))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 2))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 1))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            3
            'denominator
            4
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch 0 3 1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2 1))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music
            'TimeSignatureMusic
            'numerator
            4
            'denominator
            4
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch 0 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            5
            'denominator
            4
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch -1 5 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 1 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            2
            'denominator
            4
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch 0 3 1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 2)
            'pitch
            (ly:make-pitch 0 3 1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 0))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music
            'SequentialMusic
            'elements
            (list (make-music (quote Music))
                  (make-music
                    'OttavaMusic
                    'ottava-number
                    1)
                  (make-music
                    'NoteEvent
                    'duration
                    (ly:make-duration 0)
                    'pitch
                    (ly:make-pitch 4 5)
                    'articulations
                    (list (make-music (quote TieEvent))))
                  (make-music
                    'NoteEvent
                    'duration
                    (ly:make-duration 1 1)
                    'pitch
                    (ly:make-pitch 4 5))
                  (make-music
                    'OttavaMusic
                    'ottava-number
                    0)))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music
            'TimeSignatureMusic
            'numerator
            5
            'denominator
            8
            'beat-structure
            '())
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch 0 0))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            7
            'denominator
            8
            'beat-structure
            '())
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 1))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch 0 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music
            'TimeSignatureMusic
            'numerator
            4
            'denominator
            4
            'beat-structure
            '())
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2 2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch 0 2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            4
            'denominator
            2
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 0)
            'pitch
            (ly:make-pitch 0 2 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 0))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music
            'TimeSignatureMusic
            'numerator
            4
            'denominator
            4
            'beat-structure
            '())
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            4
            'denominator
            2
            'beat-structure
            '())
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music
            'TimeSignatureMusic
            'numerator
            2
            'denominator
            4
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch -1 5 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            5
            'denominator
            8
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch 0 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2 1))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            5
            'denominator
            16
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch 0 2 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music
            'TimeSignatureMusic
            'numerator
            2
            'denominator
            4
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch 0 0))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            3
            'denominator
            4
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch -1 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 1))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            4
            'denominator
            4
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch 0 2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music
            'TimeSignatureMusic
            'numerator
            2
            'denominator
            4
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch -1 5 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3 1))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 2))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            3
            'denominator
            8
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch 0 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3 1))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 3))
          (make-music (quote BarCheck))
          (make-music
            'TimeSignatureMusic
            'numerator
            2
            'denominator
            8
            'beat-structure
            '())
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 4)
            'pitch
            (ly:make-pitch 0 2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 4))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 2))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 4))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 0))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 6 -1/2))
          (make-music (quote BarCheck))
          (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 6))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 5 -1/2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 2 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 4 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 1))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 4 -1/2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 2 -1/2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 4))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 6 -1/2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 4))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 5))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 3 1/2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 4 1/2))
          (make-music (quote BarCheck))
          (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 0 1/2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 1 1/2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 1 0))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 1 1))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 4))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 3 1/2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 3))
          (make-music (quote BarCheck))
          (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 0))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 6))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 1 -1/2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 0))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 1))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 2 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 5 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 1 -1/2))
          (make-music (quote BarCheck))
          (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 0))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 4))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 1))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 2 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 6 -1/2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 1 -1/2))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 5 -1/2))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music (quote BarCheck))
          (make-music (quote Music))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 0))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch -1 5))
          (make-music
            'RestEvent
            'duration
            (ly:make-duration 3))
          (make-music
            'NoteEvent
            'duration
            (ly:make-duration 3)
            'pitch
            (ly:make-pitch 0 1 -1/2))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music
            'SequentialMusic
            'elements
            (list (make-music (quote Music))
                  (make-music
                    'OttavaMusic
                    'ottava-number
                    1)
                  (make-music
                    'NoteEvent
                    'duration
                    (ly:make-duration 1 1)
                    'pitch
                    (ly:make-pitch 4 5)
                    'articulations
                    (list (make-music (quote TieEvent))))
                  (make-music
                    'OttavaMusic
                    'ottava-number
                    0)))
          (make-music
            'SequentialMusic
            'elements
            (list (make-music (quote Music))
                  (make-music
                    'OttavaMusic
                    'ottava-number
                    1)
                  (make-music
                    'NoteEvent
                    'duration
                    (ly:make-duration 1 1)
                    'pitch
                    (ly:make-pitch 4 5))
                  (make-music
                    'OttavaMusic
                    'ottava-number
                    0)))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music
            'SequentialMusic
            'elements
            (list (make-music (quote Music))
                  (make-music
                    'OttavaMusic
                    'ottava-number
                    1)
                  (make-music
                    'NoteEvent
                    'duration
                    (ly:make-duration 1 1)
                    'pitch
                    (ly:make-pitch 4 5)
                    'articulations
                    (list (make-music (quote TieEvent))))
                  (make-music
                    'OttavaMusic
                    'ottava-number
                    0)))
          (make-music
            'SequentialMusic
            'elements
            (list (make-music (quote Music))
                  (make-music
                    'OttavaMusic
                    'ottava-number
                    1)
                  (make-music
                    'NoteEvent
                    'duration
                    (ly:make-duration 1 1)
                    'pitch
                    (ly:make-pitch 4 5))
                  (make-music
                    'OttavaMusic
                    'ottava-number
                    0)))))
  'context-type
  'Staff)

(make-music
  'ContextSpeccedMusic
  'context-id
  "vn"
  'element
  (make-music
    'SequentialMusic
    'elements
    (list (make-music (quote Music))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 0))
          (make-music
            'SkipEvent
            'duration
            (ly:make-duration 0))
          (make-music
            'SkipEvent
            'duration
            '())))
  'context-type
  'Staff)))