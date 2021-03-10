nat(1) :- write(1).
nat(X) :- X1 is X-1,
          nat(X1),
          write(X).
