(define (nprimes k) ( ;;I think this is a bad approach, I just ain't got an idea on a better way, doesn't help that I'm not thinking in lisp right now
	(cond ((not (> 0 k)) '())
		  (let primes '(2))
		  (let (has? L v) (map (if (equal? (car L) v) true) L v))
		  (let (find-factors v d) (
			  (if (> d 0) (
			  (let divisors  '()) 
			  (if (equal? 0 (remainder v d)) ( 
				  (append divisors d) 
				  (append divisors (find-factors v (- d 1)))))
				  divisors))))
		  (let (check-prime v) (equals '(2 v) (find-factors v (/ (v-1) 2))))
		  (let (find-next-prime n) (
			   (if (check-prime n) (if (has? primes n) (append primes n) (find-next-prime (+ 1 n)) ((find-next-prime (+ 1 n)))))))
		   (let (main k) ((if (not (> 0 k)) (find-next-prime 3)) (main (- k 1))))
		   (primes))))