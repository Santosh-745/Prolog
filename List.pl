list_head([A|_],A).

get_last([A],A).
get_last([_|A],B):-
    get_last(A,B).

 /*
count([],0).
count([_|B],C):-
    count(B,C1),
    C is C1+1.

get([A|_],X,X,A).
get([_|B],X,C,D):-
    C1 is C+1,
    get(B,X,C1,D).
*/










