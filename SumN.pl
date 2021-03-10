sumn(X,"Nagetive Value"):- X =< 0, !.
sumn(1,1):- !.
sumn(X,Y):-
    X1 is X-1,
    sumn(X1,Y1),
    Y is X+Y1.

