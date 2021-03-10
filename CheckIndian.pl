born_in_india(ramesh).
born_in_india(suresh).

stays_in_india(ramesh).
stays_in_india(suresh).
stays_in_india(jack).
stays_in_india(billy).

indian(X):-
    not(born_in_india(X)),
    !, fail.

indian(X):-
    stays_in_india(X).


