divisors(N,T):-
	divi(N,1,T),!.
divi(N,N,[N]).
divi(N,M,[M|T]):-
	N >= M,
	0 is mod(N,M),
	M1 is M + 1,
	divi(N,M1,T).

divi(N,M,T):-
	N >= M,
	X is mod(N,M),
	X \= 0,
	M1 is M + 1,
	divi(N,M1,T).
