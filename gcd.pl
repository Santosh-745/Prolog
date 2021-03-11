gcd(0,N,N).
gcd(M,N,X):-
    M1 is N mod M,
    write(M1),
    write("\n"),
    gcd(M1,M,X).
