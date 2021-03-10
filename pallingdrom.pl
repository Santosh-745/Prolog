ispal(A):-
	B is 0,
	T is A,
	loop(A,T,B).

loop(A,T,B):-
	T > 0,
	R is T mod 10,
	B1 is B*10,
	B2 is B1+R,
	T1 is T // 10,
	loop(A,T1,B2);
	compare(A,B).

compare(X,Y):-
	X=:=Y,nl,
	write('Yes, it is'),nl;
	X=\=Y,
	nl,write('No it is not').

program:-
	write("Enter Your Number ==> "),
	read(X),
	ispal(X).

