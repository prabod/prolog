check(Oper,Left,Right):-
	List =.. [Oper,Left,Right],
	call(List).

split(_,_,[],[],[]).
split(Oper,Pivot,[A|List],Left,[A|Right]):-
	check(Oper,Pivot,A),
	split(Oper,Pivot,List,Left,Right).

split(Oper,Pivot,[A|List],[A|Left],Right):-
	\+ check(Oper,Pivot,A),
	split(Oper,Pivot,List,Left,Right).

quicksort(_,[],[]).
quicksort(Oper,[A|List],Sorted):-
	split(Oper,A,List,Left,Right),
	quicksort(Oper,Left,Lefty),
	quicksort(Oper,Right,Righty),
	append(Lefty, [A|Righty], Sorted),!.
