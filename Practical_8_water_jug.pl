apend([],L,L).
apend([X|L1],L2,[X|L3]):-
     apend(L1,L2,L3).

ismem(X,[X|_]).
ismem(X,[_|Y]):-
     ismem(X,Y).


fun([X,Y],_,_,G,_):-
    ( X = G ; Y= G ),
    write("\n"),
    write([X,Y]),
    write("\t to \t"),
    write([G,0]),
    write("\n"),
    write("goal state reached").

fun([X,Y],M,N,G,L):-
    Y < N,
    \+ismem([X,N],L),
    apend(L,[[X,N]],L1),
    write("\n"),
    write("Rule 2 "),
    write("\n"),
    write([X,Y]),
    write("\t to \t"),
    write([X,N]),
    fun([X,N],M,N,G,L1).

fun([X,Y],M,N,G,L):-
    Y1 is X + Y,
    Y1 > 0,
    Y1 =< 4,
    Y > 0,
    \+ismem([Y1,0],L),
    apend(L,[[Y1,0]],L1),
    write("\n"),
    write("Rule 7"),
    write("\n"),
    write([X,Y]),
    write("\t to \t"),
    write([Y1,0]),
    fun([Y1,0],M,N,G,L1).

fun([X,Y],M,N,G,L):-
    Y1 is X + Y,
    Y1 > 0,
    Y1 >= M,
    Y > 0,
    Y3 is M - X,
    Y2 is Y - Y3,
    \+ismem([M,Y2],L),
    apend(L,[[M,Y2]],L1),
    write("\n"),
    write("Rule 5"),
    write("\n"),
    write([X,Y]),
    write("\t to \t"),
    write([M,Y2]),
    fun([M,Y2],M,N,G,L1).

fun([X,Y],M,N,G,L):-
    X < M,
    \+ismem([M,Y],L),
    apend(L,[[M,Y]],L1),
    write("\n"),
    write("Rule 1"),
    write("\n"),
    write([X,Y]),
    write("\t to \t"),
    write([M,Y]),
    fun([M,Y],M,N,G,L1).

fun([X,Y],M,N,G,L):-
    X > 0,
    \+ismem([0,Y],L),
    apend(L,[[0,Y]],L1),
    write("\n"),
    write("Rule 3"),
    write("\n"),
    write([X,Y]),
    write("\t to \t"),
    write([0,Y]),
    fun([0,Y],M,N,G,L1).

fun([X,Y],M,N,G,L):-
    Y > 0,
    \+ismem([X,0],L),
    apend(L,[[X,0]],L1),
    write("\n"),
    write("Rule 4"),
    write("\n"),
    write([X,Y]),
    write("\t to \t"),
    write([X,0]),
    fun([X,0],M,N,G,L1).

fun([X,Y],M,N,G,L):-
    Y1 is X + Y,
    Y1 > 0,
    Y1 >= N,
    X > 0,
    Y3 is N - Y,
    Y2 is X - Y3,
    \+ismem([Y2,N],L),
    apend(L,[[Y2,N]],L1),
    write("\n"),
    write("Rule 6"),
    write("\n"),
    write([X,Y]),
    write("\t to \t"),
    write([Y2,N]),
    fun([Y2,N],M,N,G,L1).

fun([X,Y],M,N,G,L):-
    Y1 is X + Y,
    Y1 > 0,
    Y1 =< N,
    X >= 0,
    \+ismem([0,Y1],L),
    apend(L,[[0,Y1]],L1),
    write("\n"),
    write("Rule 8"),
    write("\n"),
    write([X,Y]),
    write("\t to \t"),
    write([0,Y1]),
    fun([0,Y1],M,N,G,L1).
