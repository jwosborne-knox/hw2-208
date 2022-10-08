;;ALL OF THIS WAS TESTED IN RACKET NOT REPL, Talked with Michael Fisher about this homework so that might bleed in a bit?

;;Question 1
	;i.
	(+ 1 2)
	;ii.
	(+ (* 2 3) (* 4 2))
	;iii.
	(- 1 (+ 3 (/ 8 4)))
	;iv.
	(+ 1 2 3 4 5)
	;v.
	(- (-1) 2 3 4)
	;vi.
	;;the way it subdivides into brackets makes order of operations more clear if it's ever not
	;vii.
	;;a large sequence of operations nested in feels like it'd take longer to read and parse for me, if only because it's grammar is more nested than the left to right I'm used too
;;2.
	;i. 
		;see diagram_2.1.jpg

	;ii.
		;see diagram_2.2.jpg

	;iii.
		;see diagram_2.3.jpg

	;iv. Following the below rules, all car and cdr pairing are allowed
		;;;;if (pair? (car L)) then (car (car L)) is allowed, otherwise the sequence (car (car…)) isn’t allowed
		;;;;;if (pair? (cdr L)) then (cdr (or (car) (cdr))) is allowed, but is otherwise not
		;;;;in summary, the car or cdr must point to another item in a pair rather than a value to be allowed in the car cdr sequence

		;ACTUAL ANSWER NOW
		;'(x (y z) (a b))
		;(cdr (cdr L))
		;(cdr (cdr (car L)))
		;(cdr (cdr (car (cdr L))))
		;(cdr (car (cdr L)))
		;(cdr (car L))
		;(cdr L)
		;(car L)

;;3.
	;i.
		‘(S (NP this) (VP (V is) (NP DET (a) (N wug))))
	;ii.
		‘(1 (7 (2) (6 (5) 11)) 9 9 (5))
	;iii.
		;see diagram_3.3.jpg

;;4
	;i.
		(define (lmin L1 L2) (map min L1 L2))
		(define (lmax L1 L2) (map max L1 L2))
###TEST CASES AND FORMATING
		(lmin '(1 2 3) '(3 2 1))
		(lmax '(1 2 3) '(3 2 1))
	;ii.
		(define (list? L) (
			(cond (((not (pair? L)) false)
			          (not (pair? (cdr L)) false)
          (else true)))
###TEST CASES AND FORMATING
		(list? 'a)
		(list? '(a b))
		(list? '(a b c))
	;iiii.
		(define (deep-sum L) (
			(cond 	((equal? L '()) (0))
					((list? (car L))) (cond ((not (equal? (cdr L) '()))  (+ (deep-sum (car L)) (deep-sum (cdr L))))
											(else (deep-sum (car L))))
					(else (+ (car L) (deep-sum (cdr L)))))))
###TEST CASES AND FORMATING
		(deep-sum '(1 2 3 4 5))
		(deep-sum '(1 (2 3) (4 5)))
		(deep-sum '(1 (2 (3 4) 5))
;;5.
	;see question_5.txt
;;6.
	(define (merge-sort L) ( ;;turns out that I can't seem to figure out merge sort from a how to construct ir prospective at 1:30 in the morning, I'm just going to get worse at this the later I get in the night, so I'm going to cut my losses here, and move on
		(let (split L)
			(if (and (not (null? (car L))) (not (null? (cdr L)))) ((car L) (split (cdr L)))) ;;;the goal here being to get everything to it's own sub list so that I can parse it all nicely
		(let (merge a b)
			(if (> a b) '(b a) '(a b))) ;;;the thought is that this is how you compare and recombine 
		()
	))
;;7.
(define (nsum L n) (
		(cond ((null? (car L)) 0)
          ((null? (cdr L)) (car L))
          ((null? (cdr (cdr L))) (list (+ (car L) (car (cdr L))) (car (cdr L))))
          (else (append (list (+ (car L) (car (cdr L)) (car (cdr (cdr L))))) (nsum (cdr L) n))))))