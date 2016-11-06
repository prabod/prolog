:-op(100, yfx, plink),op(200, xfy, plonk).

pp_analyse(Statement):-
	Statement = X plink Y,
	writeln('Principal operator: plink'),
	write('Left sub-term: '),
	writeln(X),
	write('Right sub-term: '),
	writeln(Y).

pp_analyse(Statement):-
	Statement = X plonk Y,
	writeln('Principal operator: plonk'),
	write('Left sub-term: '),
	writeln(X),
	write('Right sub-term: '),
	writeln(Y).


