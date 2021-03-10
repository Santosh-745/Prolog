display([]):-!.
display([A|B]):-
        write(A),nl,
        display(B).

getnth([A|_],1,A).
getnth([_|B],N,X):-
        N1 is N-1,
        getnth(B,N1,X).

count([],0).
count([_|B],C):-
        count(B,C1),
        C is C1+1.

get_odd_even([],C):- C mod 2 =:= 0,
        write("Legnth is Even");
        write("Legnth is Odd").
get_odd_even([_|B],C):-
        C1 is C+1,
        get_odd_even(B,C1).
