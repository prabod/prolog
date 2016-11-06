spaces(0).
spaces(N):-	
	N1 is N-1,
	N1 >= 0,
	write(' '),
	spaces(N1),!.

drawtop(0,_,_).

drawtop(Height,Space,Rowspace):-
	Height > 0,!,
	spaces(Space),
	row(Rowspace),
	Height1 is Height - 1,
	Rowspace1 is Rowspace + 2,
	Space1 is Space - 1,
	nl,
	drawtop(Height1,Space1,Rowspace1). 

row(Rowspace):-
	write('/'),
	spaces(Rowspace),!,
	write('\\').



drawdash(0).

drawdash(Length):-
	Length > 0,
	write('-'),
	Length1 is Length-1,
	drawdash(Length1).

drawbase(Number,0):-
	write('o'),
	N is 2 * Number + 4,
	drawdash(N),
	writeln('o'),!.

drawbase(Number,Spaces):-
	N is Number - 1,
	spaces(N),
	write('o-/'),
	spaces(Spaces),
	writeln('\\-o').

drawmid(1,_,_).
drawmid(_,0,X):-Number is (X/2)-2,drawbase(Number,0),!.

drawmid(Number,2,_):-Spaces is 2 * Number -2,drawbase(Number,Spaces),!.

drawmid(Number,Space,Rowspace):-
	spaces(Space),
	row(Rowspace),
	nl,
	Space1 is Space - 1,
	Space1 > 0,
	Rowspace1 is Rowspace + 2,
	spaces(Space1),
	row(Rowspace1),
	nl,
	Space2 is Space1 - 1,
	Space2 >= 0,
	Rowspace2 is Rowspace1 + 2,
	drawmid(Number,Space1,Rowspace2).

	
xmas(Number):-
	N is 2 + Number,
	drawtop(3,N,0),
	S is 2*(Number - 1),
	drawbase(Number,S),
	drawmid(Number,Number,4).
