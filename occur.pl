occurrences(_,[],0).
occurrences(X,[Head|Tail],N):-
	X \= Head,
	occurrences(X,Tail,N).

occurrences(X,[Head|Tail],N):-
	X = Head,
	occurrences(X,Tail,N1),
	N is N1+1.
