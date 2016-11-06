line(0,_):-
	nl.
line(Num,Char) :-
	Num > 0,
	Z is Num-1,
	write(Char),
	write(' '),
	line(Z,Char).
lines(0,_,_).
lines(N,M,C) :-
	N > 0,
	N1 is N-1,
	line(M,C),
	lines(N1,M,C).

square(Number,Character) :-
	Number > 0,
	lines(Number,Number,Character).
