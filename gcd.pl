gcd(A,0,X):-X is A,!.
gcd(0,B,X):-X is B,!.

gcd(0,0,_).

gcd(A,B,X):-
	A > B,
	A1 is (A - (B*(A//B))),
	gcd(B,A1,X).

gcd(A,B,X):-
	A < B,
	B1 is (B - (A*(B//A))),
	gcd(A,B1,X).
