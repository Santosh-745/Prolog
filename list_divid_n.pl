fun([],0,[],[]).
fun([H|T],0,L1,[H|T1]):-
	  fun(T,0,L1,T1).

fun([H|T],N,[H|T1],L2):-
          N1 is N-1,
	  fun(T,N1,T1,L2).















