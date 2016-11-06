%analyse_list([Head | Tail]).

analyse_list([]):-
	write('This is an Empty List').
analyse_list([Head|Tail]):-
	write('This is Head of your list:'),
	write(Head),
	nl,
	write('This is the Tail of your list:'),
	write(Tail).
	

