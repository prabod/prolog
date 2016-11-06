sum([],0).
sum([Head|Tail],Total) :-
	sum(Tail,Total1),
	Total is Head + Total1.
mean(List,X) :-
	sum(List,Y),
	length(List,Z),
	X is Y/Z.
