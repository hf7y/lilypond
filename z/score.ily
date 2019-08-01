%Atoms
z_voice = #(define-music-function
  (parser location voiceName) (string?) #{ <<
    \new Staff = #voiceName { 
      \new Voice = #(string-append voiceName "_voice") {} }
    \new Lyrics = #(string-append voiceName "_lyrics") {
      \lyricsto #(string-append voiceName "_voice") {} }  >> #} )

z_soprano = #(define-music-function
  (parser location voiceName) (string?) #{ <<
  \z_voice #voiceName
  \context Voice = #(string-append voiceName "_voice") {
    \clef "treble" } >> #} )

z_alto = #(define-music-function
  (parser location voiceName) (string?) #{ <<
  \z_voice #voiceName
  \context Voice = #(string-append voiceName "_voice") {
    \clef "treble" } >> #} )

z_tenor = #(define-music-function
  (parser location voiceName) (string?) #{ <<
  \z_voice #voiceName
  \context Voice = #(string-append voiceName "_voice") {
    \clef "treble_8" } >> #} )

z_bass = #(define-music-function
  (parser location voiceName) (string?) #{ <<
  \z_voice #voiceName
  \context Voice = #(string-append voiceName "_voice") {
    \clef "bass" } >> #} )

z_flute = #(define-music-function
  (parser location fluteName) (string?) #{
    \new Staff = #fluteName { \clef "treble" } #} )

z_clarinet = #(define-music-function
  (parser location clarinetName) (string?) #{
    \new Staff = #clarinetName { \clef "treble" } #} )

z_violin = #(define-music-function
  (parser location violinName) (string?) #{
    \new Staff = #violinName { \clef "treble" } #} )

z_cello = #(define-music-function
  (parser location celloName) (string?) #{
    \new Staff = #celloName { \clef "tenor" } #} )
#(define z_violoncello z_cello) %alias

z_piano = #(define-music-function
  (parser location pianoName) (string?) #{
    \new PianoStaff = #pianoName <<
    \new Staff = #(string-append pianoName "up") { \clef "treble" }
    \new Staff = #(string-append pianoName "down") { \clef "bass" } >> #} )
#(define z_pianoforte z_piano) %alias

z_satb = #(define-music-function 
  (parser location satbName) (string?) #{
    \new ChoirStaff = #satbName <<
      \z_soprano #(string-append satbName "s")
      \z_alto #(string-append satbName "a")
      \z_tenor #(string-append satbName "t")
      \z_bass #(string-append satbName "b") 
    >> #} )

z_pierrot = #(define-music-function
  (parser location pierrotName) (string?) #{ <<
    \new StaffGroup = #(string-append pierrotName "winds") <<
      \z_flute #(string-append pierrotName "fl")
      \z_clarinet #(string-append pierrotName "cl") >>
    \new StaffGroup = #(string-append pierrotName "strings") <<
      \z_violin #(string-append pierrotName "vln")
      \z_violoncello #(string-append pierrotName "vc") >>
      \z_pianoforte #(string-append pierrotName "pf") >> #} )
