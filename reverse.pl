conc([],L,L).
conc([H|L1],L2,[H|L3]):-
    conc(L1,L2,L3).


rev([],[]).
rev([H|T],X):-
    rev(T,Y),
    conc(Y,[H],X).

