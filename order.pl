:-op(500,xfx,implies).
:-op(200,yfx,and).
:-op(300,yfx,or).
:-op(100,fy,neg).
/*
cnf(Statement):-
	atom(Statement),
	Statement = X and X.
cnf(Statement):-
	%atom(Statement),
	Statement = X and Y and Z.*/
