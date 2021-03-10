divisible(X,Y):-
   X mod Y =:= 0.

divisible(X,Y):-
   Y*Y =< X,
   Y1 is Y+1,
   divisible(X,Y1).

isprime(X):-
   Y is 2,
   X > 1,
   \+divisible(X,Y).










