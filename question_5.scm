(define (nprimes k) ( ;;it is 2:30 in the morning and I don't have the tools to debug this properly, I need sleep and think that the ideas here are correct even if some bug is tripping it up
					(display (find-primes k 0 0 '()))))
(define (find-primes g c t L) (
				(if (> g c) (
					(cond ((equal? L '()) (append '(2) (find-primes g (+ c 1) 3 '(2))))
							(else (cond ((prime t)  (append L (find-primes g (+ c 1) (+ t 1) L)))
                                                                    (else (find-primes g c (+ t 1) L)))))) ('()))))
(define (prime n) (
	(if (equal? (length (factors n n) 2)) (true) (false))))
(define (factors n d) (
	(cond ((= d 0) '())
              ((equal? (modulo n (round d)) 0) (append (list d) (factors n (- d 1))))
			(else (factors n (- d 1))))))
(define (has? L v) (cond ((equal? L '()) false)
						 (else (or (equal? (car L) v) (has? (cdr L) v)))))