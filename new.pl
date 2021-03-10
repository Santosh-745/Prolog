find_nth([H|_],1,H).
find_nth([_|T],N,X):-
    N1 is N-1,
    find_nth(T,N1,X).
