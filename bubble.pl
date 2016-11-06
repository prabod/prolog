check(Oper,Left,Right):-
	List =.. [Oper,Left,Right],
	call(List).

swap(Oper,[A,B|List],[B,A|Swap]):-
	\+check(Oper,A,B),
	A \= B,
	swap(Oper,List,Swap).

swap(Oper,[A|List],[A|Swap]):-
	List = [B|_],
	check(Oper,A,B),	
	swap(Oper,List,Swap).

swap(Oper,[A|List],[A|Swap]):-
	List = [B|_],
	A = B,	
	swap(Oper,List,Swap).
swap(_,[],[]).
swap(_,[L],[L]).

sort(Oper,List,Sort):-
	swap(Oper,List,Sort1),
	List \= Sort1,
	sort(Oper,Sort1,Sort),!.
sort(_,L,L).
