\version "2.20.0"

% For Ensemble LINEA
% Flutes (C, G, Bass, & Picc)
% Clarinet (Bb, Bass, & Contra)
% Bassoon (Contra)
% Trombone *(Horn)
% Accordion
% Piano
% Violin
% Viola
% Cello
% Contrabass
% Conductor


$(define fl  'fl)
$(define cl  'cl)
$(define bn  'bn)
$(define tbn  'tbn)
$(define up  'up)
$(define down  'down)
$(define vn  'vn)
$(define va  'va)
$(define vc  'vc)
$(define db  'db)

$(define-public winds (list fl cl bn tbn))
$(define-public piano (list up down))
$(define-public strings (list vn va vc db))
$(define-public tutti (append winds piano strings))

$(define-public basses '(bn tbn down vc db))
$(define-public trebles '(fl cl up vn vn))

$(define (rm x ls)
	(cond ((null? ls) '())
		  ((equal? (car ls) x) (cdr ls))
		  (#t (cons (car ls) (rm x (cdr ls))))))

$(define* (sans a #:optional (b tutti))
	(cond ((null? a) b)
		  ((list? a) (sans (cdr a) (rm (car a) b)))
		  (#t (rm a b))))	