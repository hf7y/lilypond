\version "2.19.82"

#(define-markup-command (four-beamed layout props)
  ()
  "Make group of beamed notes"
  (interpret-markup layout props #{
    \markup {
      \center-column {
	\line { \italic \teeny "4" }
	\line {
	  \overlay {
	  \override #'(line-width . 5)
	  \fill-line {
	    \draw-line #'(0 . 2.5)
	    \draw-line #'(0 . 2.5)
	    \draw-line #'(0 . 2.5)
	    \draw-line #'(0 . 2.5)
	  }
	  \raise #2.5
	  \beam #5 #0 #0.35
	  }
	}
      }
    }
  #}))
#(define-markup-command (five-beamed layout props)
  ()
  "Make group of beamed notes"
  (interpret-markup layout props #{
    \markup {
      \center-column {
	\line { \italic \teeny "5" }
	\line {
	  \overlay {
	  \override #'(line-width . 5.5)
	  \fill-line {
	    \draw-line #'(0 . 2.5)
	    \draw-line #'(0 . 2.5)
	    \draw-line #'(0 . 2.5)
	    \draw-line #'(0 . 2.5)
	    \draw-line #'(0 . 2.5)
	  }
	  \raise #2.5
	  \beam #5.5 #0 #0.35
	  }
	}
      }
    }
  #}))
#(define-markup-command (six-beamed layout props)
  ()
  "Make group of beamed notes"
  (interpret-markup layout props #{
    \markup {
      \center-column {
	\line { \italic \teeny "6" }
	\line {
	  \overlay {
	  \override #'(line-width . 6)
	  \fill-line {
	    \draw-line #'(0 . 2.5)
	    \draw-line #'(0 . 2.5)
	    \draw-line #'(0 . 2.5)
	    \draw-line #'(0 . 2.5)
	    \draw-line #'(0 . 2.5)
	    \draw-line #'(0 . 2.5)
	  }
	  \raise #2.5
	  \beam #6 #0 #0.35
	  }
	}
      }
    }
  #}))
#(define-markup-command (seven-beamed layout props)
  ()
  "Make group of beamed notes"
  (interpret-markup layout props #{
    \markup {
      \center-column {
	\line { \italic \teeny "7" }
	\line {
	  \overlay {
	  \override #'(line-width . 6.5)
	  \fill-line {
	    \draw-line #'(0 . 2.5)
	    \draw-line #'(0 . 2.5)
	    \draw-line #'(0 . 2.5)
	    \draw-line #'(0 . 2.5)
	    \draw-line #'(0 . 2.5)
	    \draw-line #'(0 . 2.5)
	    \draw-line #'(0 . 2.5)
	  }
	  \raise #2.5
	  \beam #6.5 #0 #0.35
	  }
	}
      }
    }
  #}))
#(define-markup-command (eight-beamed layout props)
  ()
  "Make group of beamed notes"
  (interpret-markup layout props #{
    \markup {
      \center-column {
	\line { \raise #0.5 \italic \teeny "4" }
	\line {
	  \overlay {
	  \override #'(line-width . 5)
	  \fill-line {
	    \draw-line #'(0 . 3)
	    \draw-line #'(0 . 3)
	    \draw-line #'(0 . 3)
	    \draw-line #'(0 . 3)
	  }
	  \raise #3
	  \beam #5 #0 #0.33
	  \raise #2.3
	  \beam #5 #0 #0.33
	  }
	}
      }
    }
  #}))
#(define-markup-command (nine-beamed layout props)
  ()
  "Make group of beamed notes"
  (interpret-markup layout props #{
    \markup {
      \center-column {
	\line { \raise #0.5 \italic \teeny "9" }
	\line {
	  \overlay {
	  \override #'(line-width . 7)
	  \fill-line {
	    \draw-line #'(0 . 3)
	    \draw-line #'(0 . 3)
	    \draw-line #'(0 . 3)
	    \draw-line #'(0 . 3)
	    \draw-line #'(0 . 3)
	    \draw-line #'(0 . 3)
	    \draw-line #'(0 . 3)
	    \draw-line #'(0 . 3)
	    \draw-line #'(0 . 3)
	  }
	  \raise #3
	  \beam #7 #0 #0.33
	  \raise #2.3
	  \beam #7 #0 #0.33
	  }
	}
      }
    }
  #}))
#(define-markup-command (ten-beamed layout props)
  ()
  "Make group of beamed notes"
  (interpret-markup layout props #{
    \markup {
      \center-column {
	\line { \raise #0.5 \italic \teeny "5" }
	\line {
	  \overlay {
	  \override #'(line-width . 5.5)
	  \fill-line {
	    \draw-line #'(0 . 3)
	    \draw-line #'(0 . 3)
	    \draw-line #'(0 . 3)
	    \draw-line #'(0 . 3)
	    \draw-line #'(0 . 3)
	  }
	  \raise #3
	  \beam #5.5 #0 #0.33
	  \raise #2.3
	  \beam #5.5 #0 #0.33
	  }
	}
      }
    }
  #}))
