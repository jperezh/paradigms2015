mayor(X, X, X).
mayor(X, Y, X) :- X > Y.
mayor(X, Y, Y) :- X < Y.