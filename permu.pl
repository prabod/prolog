permutation1([], []).
permutation1(List, [Element | Permutation]) :-
	select(Element, List, Rest),
	write(Element),
	permutation1(Rest, Permutation).

