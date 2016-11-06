range(N,N,[N]).
range(M,N,[M|T]) :-
	M1 is M+1,
	N >= M1,
	range(M1,N,T).
