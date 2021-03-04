\version "2.20.0"

#(set! paper-alist 
  (cons '("lepow       . (cons (* 19 cm) (* 35 cm))) paper-alist))
#(set! paper-alist 
  (cons '("half-lepow" . (cons (* 19 cm) (* 17 cm))) paper-alist))
#(set! paper-alist 
  (cons '("ipad pro"   . (cons ( * 220 mm) ( * 305 mm))) paper-alist))
#(set! paper-alist 
  (cons '("montalvo"   . (cons ( * 11  in) ( * 14  in))) paper-alist))
#(set! paper-alist
  (cons '("half-dell"  . (cons ( * 6   in) ( * 8   in))) paper-alist))

z_montalvo = \paper {
  #(set-paper-size "montalvo")
  
  indent = 1.0\in

  top-margin = 1.0\in
  left-margin = 1.0\in
  right-margin = 1.0\in
  bottom-margin = 1.0\in

  markup-system-spacing =
    #'((basic-distance    . 15)
       (minimum-distance  . 10)
       (padding           . 5 )
       (stretchability    . 1 ))

  system-system-spacing =
    #'((basic-distance    . 15)
       (minimum-distance  . 10)
       (padding           . 5 )
       (stretchability    . 10))
}
