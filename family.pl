male(albert). %this is our family.pl program
male(edward). 
female(alice).
female(victoria). 
parent(albert,edward). 
parent(victoria,edward). 
father(X,Y):- parent(X,Y), male(X).
mother(X,Y):- parent(X,Y), female(X).

