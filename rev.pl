reverse_list(List,Rev) :-
	List \= [],
	Rev = [],
	List = [Head | Tail],
	append([Head],[],Reverse),
	reverse_list(Tail,Reverse).

reverse_list(List,Rev) :-
	List \= [],
	Rev \=[],
	List = [Head | Tail],
	append([Head],Rev,Reverse),
	reverse_list(Tail,Reverse).

reverse_list(List,Rev) :-
	write(Rev).
