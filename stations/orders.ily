chorusI = <<
  \new StaffGroup \with {
    \remove System_start_delimiter_engraver 
  }<<
    \z_satb "coroI_"
    \z_flute "fl" >> >>
chorusII = <<
  \new StaffGroup \with {
    \remove System_start_delimiter_engraver
  }<<
    \z_satb "coroII_"
    \z_clarinet "cl" >> >>
chorusIII = << 
  \new Staffroup \with {
    \remove System_start_delimiter_engraver
  }<<
    \z_satb "coroIII_"
    \new StaffGroup = "strings" <<
      \z_violin "vln"
      \z_cello "vc" >> >> >>
chorusIV = <<
  \new Staffroup \with {
    \remove System_start_delimiter_engraver
  }<<
    \z_satb "coroIV_"
    \z_piano "pf" >> >>

asFourChoruses = <<
  \chorusI
  \chorusII
  \chorusIII
  \chorusIV
  %\context StaffGroup = "groupIV" {
  %  \set groupIV.systemStartDelimiter = #'SystemStartBar
  %  \override groupIV.SystemStartBar.thickness = #0
  %}
>>

asScoreOrder = <<
  \new ChoirStaff <<
    \z_soprano #(string-append "coroI_" "s")
    \z_soprano #(string-append "coroII_" "s")
    \z_soprano #(string-append "coroIII_" "s")
    \z_soprano #(string-append "coroIV_" "s") >>
  \new ChoirStaff <<
    \z_alto #(string-append "coroI_" "a")
    \z_alto #(string-append "coroII_" "a")
    \z_alto #(string-append "coroIII_" "a")
    \z_alto #(string-append "coroIV_" "a") >>
  \new ChoirStaff <<
    \z_tenor #(string-append "coroI_" "t")
    \z_tenor #(string-append "coroII_" "t")
    \z_tenor #(string-append "coroIII_" "t")
    \z_tenor #(string-append "coroIV_" "t") >>
  \new ChoirStaff <<
    \z_bass #(string-append "coroI_" "b")
    \z_bass #(string-append "coroII_" "b")
    \z_bass #(string-append "coroIII_" "b")
    \z_bass #(string-append "coroIV_" "b") >>
  \new StaffGroup <<
    \z_flute "fl" 
    \z_clarinet "cl" >>
  \z_piano "pf"
  \new StaffGroup <<
    \z_violin "vln"
    \z_cello "vc" >> >>

asSeparatePierrot = <<
  \z_satb "coroI_"
  \z_satb "coroII_"
  \z_satb "coroIII_"
  \z_satb "coroIV_"
  \z_pierrot ""
>>
#(define asPierrot asSeparatePierrot)
