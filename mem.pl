
membership([Head|Tail],Item):-
	Head = Item,
	write(Item),
	write(' is in the list'),
	nl.

membership([Head|Tail],Item):-
	Head \= Item,
	length(Tail) \= 0,
	write(Tail),
	nl,
	membership(Tail,Item).

membership([Head|Tail],Item):-
	Head \= Item,
	Tail = [],
	write(Item),
	write(' is not in the list').
