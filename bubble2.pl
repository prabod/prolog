check(Oper,Left,Right):-
	List =.. [Oper,Left,Right],
	call(List).
swap(Rel, [A,B|List], [B,A|List]) :-
	check(Rel, B, A).

swap(Rel, [A|List], [A|NewList]) :-
	swap(Rel, List, NewList).

bubblesort(Rel, List, SortedList) :-
	swap(Rel, List, NewList), !,
	bubblesort(Rel, NewList, SortedList).

bubblesort(_, SortedList, SortedList).

