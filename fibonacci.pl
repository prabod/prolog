fibonacci(0,1).
fibonacci(1,1).
fibonacci(N,X) :-
	N >= 2,
	M1 is N-1,
	M2 is N-2,
	fibonacci(M1,Y),
	fibonacci(M2,Z),
	X is  Y + Z.
