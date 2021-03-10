max(X,Y,Z,Max):-
    max2(X,Y,Max1),
    max2(Max1,Z,Max).
max2(X,Y,X):- X>=Y.
max2(X,Y,Y):- X<Y.
program:-
        write("Enter your three nums ==> "),
        read(X),
        read(Y),
        read(Z),
	max(X,Y,Z,Ans),
	write(Ans).

