poly_sum([],[],[]).
poly_sum([],T,T).

poly_sum([(X,Y)|Tail],Poly2,[(S,Y)|Result]):-
	member((Z,Y),Poly2),!,
	S is Z + X,
	select((Z,Y),Poly2,Rest),
	poly_sum(Tail,Rest,Result).

poly_sum([(X,Y)|Tail],Poly2,[(X,Y)|Result]):-
	\+ member((_,Y),Poly2),
	poly_sum(Tail,Poly2,Result),!.	
